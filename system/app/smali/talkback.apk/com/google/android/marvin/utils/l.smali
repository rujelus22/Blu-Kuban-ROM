.class public Lcom/google/android/marvin/utils/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/marvin/utils/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/utils/l;->a:Ljava/lang/String;

    const/4 v0, 0x6

    sput v0, Lcom/google/android/marvin/utils/l;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/google/android/marvin/utils/l;->b:I

    return-void
.end method

.method public static varargs a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    sget v0, Lcom/google/android/marvin/utils/l;->b:I

    if-ge p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-nez p0, :cond_1a

    sget-object v0, Lcom/google/android/marvin/utils/l;->a:Ljava/lang/String;

    :goto_9
    :try_start_9
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/util/IllegalFormatException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_4

    :catch_11
    move-exception v0

    sget-object v1, Lcom/google/android/marvin/utils/l;->a:Ljava/lang/String;

    const-string v2, "Bad formatting string: \"format\""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
