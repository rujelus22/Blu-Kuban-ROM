.class public final LaM/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, LaM/ch;->a:Z

    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 38
    const-string v0, "w"

    const-string v1, "s"

    invoke-static {v0, v1}, LaM/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    const/16 v0, 0x5a

    invoke-static {v0, p0, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 58
    if-eqz p0, :cond_a

    .line 59
    const-string v0, "c"

    const-string v1, "y"

    invoke-static {v0, v1}, LaM/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_9
    return-void

    .line 62
    :cond_a
    const-string v0, "c"

    const-string v1, "n"

    invoke-static {v0, v1}, LaM/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "wi"

    const-string v1, "s"

    invoke-static {v0, v1}, LaM/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static c()V
    .registers 2

    .prologue
    .line 48
    const-string v0, "wi"

    const-string v1, "d"

    invoke-static {v0, v1}, LaM/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static d()V
    .registers 2

    .prologue
    .line 53
    const-string v0, "wi"

    const-string v1, "c"

    invoke-static {v0, v1}, LaM/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static e()V
    .registers 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, LaM/ch;->a:Z

    .line 73
    return-void
.end method
