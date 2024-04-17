import { BadRequestException, Injectable } from '@nestjs/common';
import { ChildDto } from './dto/child.dto';
import { PrismaService } from 'src/prisma.service';

@Injectable()
export class ChildService {
  constructor(private prisma: PrismaService) { }

  async create(dto: ChildDto) {
    const childrenCount = await this.prisma.child.findMany({ where: { userId: dto.userId } })
    if (childrenCount.length > 4) throw new BadRequestException('Нельзя добавлять более 5-ти детей!')
    return await this.prisma.child.create({ data: { ...dto } })
  }

  async findAll() {
    return await this.prisma.child.findMany();
  }

  async findOne(id: string) {
    return await this.prisma.child.findUnique({ where: { id }, include: { user: true } });
  }

  async update(id: string, dto: ChildDto) {
    return await this.prisma.child.update({ where: { id }, data: { ...dto } })
  }

  async remove(id: string): Promise<{ message: string }> {
    const deleteTimeBlock = await this.prisma.child.delete({ where: { id } });
    return { message: 'Запись о ребенке успешно удалена!' };
  }
}
