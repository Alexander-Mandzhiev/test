import { ApiProperty } from "@nestjs/swagger";

export class IBase {
    @ApiProperty({ description: 'Уникальный идентификатор пользователя', example: "1" })
    id: string;
    @ApiProperty({ description: 'Дата создания пользователя', example: '2023-06-29T11:35:09.918Z' })
    createdAt: Date;
    @ApiProperty({ description: 'Дата обновления пользователя', example: '2023-06-29T11:35:09.918Z' })
    updatedAt: Date;
}

export class UserResponse extends IBase {
    @ApiProperty({ description: 'Имя пользователя', example: "admin" })
    username: string;
    @ApiProperty({ description: 'Возраст пользователя', example: '28' })
    years_old: number;
}

export class UserAndChildrenResponse extends UserResponse {
    @ApiProperty({
        description: 'Список детей пользователя', example: [
            {
                "id": "clv2sgzau0001se3kxs0p02lo",
                "createdAt": "2024-04-16T19:40:52.278Z",
                "updatedAt": "2024-04-16T19:40:52.278Z",
                "name": "Ребенок 1",
                "userId": "clv2np98v0000znjqmzkxp6au"
            },
            {
                "id": "clv2simzb0001zjip2gupfhex",
                "createdAt": "2024-04-16T19:42:09.623Z",
                "updatedAt": "2024-04-16T19:42:09.623Z",
                "name": "Ребенок 2",
                "userId": "clv2np98v0000znjqmzkxp6au"
            }
        ]
    })
    children: ChildrenResponse[]
}

export class ChildrenResponse extends IBase {
    @ApiProperty({ description: 'Имя ребенка', example: 'Пётр' })
    name: string;
    @ApiProperty({ description: 'Id родителя', example: 'clv2np98v0000znjqmzkxp6au' })
    userId: string;
}

export class ChildrenAndParentResponse extends ChildrenResponse {
    @ApiProperty({
        description: 'Данные пользователя', example: {
            "id": "clv2np98v0000znjqmzkxp6au",
            "createdAt": "2024-04-16T17:27:20.335Z",
            "updatedAt": "2024-04-16T17:57:50.602Z",
            "username": "Иванов Иван Иванович",
            "years_old": 29
        }
    })
    user: UserResponse
}

export class DeleteResponse {
    @ApiProperty({ description: 'Сообщение об удалении записи', example: 'Запись о ребенке успешно удалена!' })
    message: string;
}