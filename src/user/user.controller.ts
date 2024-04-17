import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { UserService } from './user.service';
import { UserDto } from './dto/user.dto';
import { ApiOperation, ApiResponse, ApiTags } from '@nestjs/swagger';
import { DeleteResponse, UserAndChildrenResponse, UserResponse } from 'src/types';

@ApiTags('Пользователи')
@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) { }

  @ApiOperation({ summary: 'Создать пользователя' })
  @ApiResponse({ status: 200, type: UserResponse })
  @Post()
  create(@Body() dto: UserDto) {
    return this.userService.create(dto);
  }

  @ApiOperation({ summary: 'Получить список пользователей' })
  @ApiResponse({ status: 200, type: [UserResponse] })
  @Get()
  findAll() {
    return this.userService.findAll();
  }

  @ApiOperation({ summary: 'Получить пользователя и его детей' })
  @ApiResponse({ status: 200, type: UserAndChildrenResponse })
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.userService.findOne(id);
  }

  @ApiOperation({ summary: 'Обновить пользователя' })
  @ApiResponse({ status: 200, type: UserResponse })
  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UserDto) {
    return this.userService.update(id, dto);
  }

  @ApiOperation({ summary: 'Удалить пользователя' })
  @ApiResponse({ status: 200, type: DeleteResponse })
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.userService.remove(id);
  }
}
