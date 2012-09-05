.class public final enum Lcom/google/android/marvin/talkback/t;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/marvin/talkback/t;

.field public static final enum b:Lcom/google/android/marvin/talkback/t;

.field public static final enum c:Lcom/google/android/marvin/talkback/t;

.field private static final synthetic d:[Lcom/google/android/marvin/talkback/t;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/marvin/talkback/t;

    const-string v1, "INTERRUPT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/marvin/talkback/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    new-instance v0, Lcom/google/android/marvin/talkback/t;

    const-string v1, "QUEUE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/marvin/talkback/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/t;->b:Lcom/google/android/marvin/talkback/t;

    new-instance v0, Lcom/google/android/marvin/talkback/t;

    const-string v1, "UNINTERRUPTIBLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/marvin/talkback/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/t;->c:Lcom/google/android/marvin/talkback/t;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/marvin/talkback/t;

    sget-object v1, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/marvin/talkback/t;->b:Lcom/google/android/marvin/talkback/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/marvin/talkback/t;->c:Lcom/google/android/marvin/talkback/t;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/marvin/talkback/t;->d:[Lcom/google/android/marvin/talkback/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/google/android/marvin/talkback/t;
    .registers 3

    invoke-static {}, Lcom/google/android/marvin/talkback/t;->values()[Lcom/google/android/marvin/talkback/t;

    move-result-object v0

    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_d

    :cond_9
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_c
    return-object v0

    :cond_d
    aget-object v0, v0, p0

    goto :goto_c
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/marvin/talkback/t;
    .registers 2

    const-class v0, Lcom/google/android/marvin/talkback/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/t;

    return-object v0
.end method

.method public static values()[Lcom/google/android/marvin/talkback/t;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/marvin/talkback/t;->d:[Lcom/google/android/marvin/talkback/t;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/marvin/talkback/t;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
