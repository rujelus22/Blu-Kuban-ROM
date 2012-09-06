.class public final enum Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CANCELED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

.field public static final enum FAILED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

.field public static final enum NOT_CONNECTED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

.field public static final enum OK:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->OK:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    .line 24
    new-instance v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->NOT_CONNECTED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    .line 29
    new-instance v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->FAILED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    .line 34
    new-instance v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->CANCELED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    sget-object v1, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->OK:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->NOT_CONNECTED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->FAILED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->CANCELED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
