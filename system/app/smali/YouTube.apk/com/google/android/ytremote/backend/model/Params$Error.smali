.class public final enum Lcom/google/android/ytremote/backend/model/Params$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BAD_REQUEST:Lcom/google/android/ytremote/backend/model/Params$Error;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/Params$Error;

.field public static final enum LOUNGE_NOT_FOUND:Lcom/google/android/ytremote/backend/model/Params$Error;

.field public static final enum NOT_IN_PARTY_MODE:Lcom/google/android/ytremote/backend/model/Params$Error;

.field public static final enum NO_REMOTE_CONTROL:Lcom/google/android/ytremote/backend/model/Params$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/google/android/ytremote/backend/model/Params$Error;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/backend/model/Params$Error;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/google/android/ytremote/backend/model/Params$Error;->BAD_REQUEST:Lcom/google/android/ytremote/backend/model/Params$Error;

    .line 39
    new-instance v0, Lcom/google/android/ytremote/backend/model/Params$Error;

    const-string v1, "LOUNGE_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ytremote/backend/model/Params$Error;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/google/android/ytremote/backend/model/Params$Error;->LOUNGE_NOT_FOUND:Lcom/google/android/ytremote/backend/model/Params$Error;

    .line 44
    new-instance v0, Lcom/google/android/ytremote/backend/model/Params$Error;

    const-string v1, "NOT_IN_PARTY_MODE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/ytremote/backend/model/Params$Error;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/google/android/ytremote/backend/model/Params$Error;->NOT_IN_PARTY_MODE:Lcom/google/android/ytremote/backend/model/Params$Error;

    .line 49
    new-instance v0, Lcom/google/android/ytremote/backend/model/Params$Error;

    const-string v1, "NO_REMOTE_CONTROL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/ytremote/backend/model/Params$Error;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Lcom/google/android/ytremote/backend/model/Params$Error;->NO_REMOTE_CONTROL:Lcom/google/android/ytremote/backend/model/Params$Error;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/ytremote/backend/model/Params$Error;

    sget-object v1, Lcom/google/android/ytremote/backend/model/Params$Error;->BAD_REQUEST:Lcom/google/android/ytremote/backend/model/Params$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/ytremote/backend/model/Params$Error;->LOUNGE_NOT_FOUND:Lcom/google/android/ytremote/backend/model/Params$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/ytremote/backend/model/Params$Error;->NOT_IN_PARTY_MODE:Lcom/google/android/ytremote/backend/model/Params$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/ytremote/backend/model/Params$Error;->NO_REMOTE_CONTROL:Lcom/google/android/ytremote/backend/model/Params$Error;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/ytremote/backend/model/Params$Error;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/Params$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ytremote/backend/model/Params$Error;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/ytremote/backend/model/Params$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/model/Params$Error;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ytremote/backend/model/Params$Error;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/ytremote/backend/model/Params$Error;->ENUM$VALUES:[Lcom/google/android/ytremote/backend/model/Params$Error;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/ytremote/backend/model/Params$Error;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
