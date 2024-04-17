import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { ChildService } from './child.service';
import { ChildDto } from './dto/child.dto';
import { ApiOperation, ApiResponse, ApiTags } from '@nestjs/swagger';
import { ChildrenAndParentResponse, ChildrenResponse, DeleteResponse } from 'src/types';

@ApiTags('Дети')
@Controller('child')
export class ChildController {
  constructor(private readonly childService: ChildService) { }

  @ApiOperation({ summary: 'Добавить запись о ребенке' })
  @ApiResponse({ status: 200, type: ChildrenResponse })
  @Post()
  create(@Body() dto: ChildDto) {
    return this.childService.create(dto);
  }

  @ApiOperation({ summary: 'Вывод всех детей' })
  @ApiResponse({ status: 200, type: [ChildrenResponse] })
  @Get()
  findAll() {
    return this.childService.findAll();
  }

  @ApiOperation({ summary: 'Вывод ребенка и его родителя' })
  @ApiResponse({ status: 200, type: ChildrenAndParentResponse })
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.childService.findOne(id);
  }

  @ApiOperation({ summary: 'Обновить запись ребенка' })
  @ApiResponse({ status: 200, type: ChildrenResponse })
  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: ChildDto) {
    return this.childService.update(id, dto);
  }

  @ApiOperation({ summary: 'Удалить запись ребенка' })
  @ApiResponse({ status: 200, type: DeleteResponse })
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.childService.remove(id);
  }
}
