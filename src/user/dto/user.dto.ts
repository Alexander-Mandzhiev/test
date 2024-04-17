import { ApiProperty } from "@nestjs/swagger";
import { IsNumber, IsString } from "class-validator";

export class UserDto {

    @ApiProperty({ description: 'ФИО пользователя', example: 'Иванов Иван Иванович' })
    @IsString()
    readonly username: string;

    @ApiProperty({ description: 'Возраст пользователя', example: '28' })
    @IsNumber()
    readonly years_old: number;


}
