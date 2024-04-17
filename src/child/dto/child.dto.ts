import { ApiProperty } from "@nestjs/swagger";
import { IsString } from "class-validator";

export class ChildDto {
    @ApiProperty({ description: 'Имя ребенка', example: 'Пётр' })
    @IsString()
    readonly name: string;

    @ApiProperty({ description: 'Id родителя', example: 'clv2np98v0000znjqmzkxp6au' })
    @IsString()
    readonly userId: string;
}
