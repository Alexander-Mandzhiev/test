import { Injectable } from '@nestjs/common';
import { UserDto } from './dto/user.dto';
import { PrismaService } from 'src/prisma.service';

@Injectable()
export class UserService {

  constructor(private prisma: PrismaService) { }

  async create(dto: UserDto) {
    return await this.prisma.user.create({ data: { ...dto } });
  }

  async findAll() {
    return await this.prisma.user.findMany();
  }

  async findOne(id: string) {
    return await this.prisma.user.findUnique({ where: { id }, include: { children: true } });
  }

  async update(id: string, dto: UserDto) {
    return await this.prisma.user.update({ where: { id }, data: { ...dto } })
  }

  async remove(id: string): Promise<{ message: string }> {
    const deleteTimeBlock = await this.prisma.user.delete({ where: { id } });
    return { message: 'Пользователь успешно удален!' };
  }
}
