.class public final LaY/bu;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, LaY/bu;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    sget-boolean v0, LaY/bu;->a:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    sput-boolean v0, LaY/bu;->a:Z

    const-string v0, "w"

    const-string v1, "d"

    invoke-static {v0, v1}, LaY/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x5a

    invoke-static {v0, p0, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Z)V
    .registers 3

    if-eqz p0, :cond_a

    const-string v0, "c"

    const-string v1, "y"

    invoke-static {v0, v1}, LaY/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "c"

    const-string v1, "n"

    invoke-static {v0, v1}, LaY/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static b()V
    .registers 2

    const-string v0, "w"

    const-string v1, "s"

    invoke-static {v0, v1}, LaY/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .registers 2

    const-string v0, "wi"

    const-string v1, "s"

    invoke-static {v0, v1}, LaY/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .registers 2

    const-string v0, "wi"

    const-string v1, "d"

    invoke-static {v0, v1}, LaY/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()V
    .registers 2

    const-string v0, "wi"

    const-string v1, "c"

    invoke-static {v0, v1}, LaY/bu;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, LaY/bu;->a:Z

    return-void
.end method
