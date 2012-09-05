.class public Lax/aO;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)V
    .registers 2

    const-string v0, "LOCATION_REPORTER_PRIVACY_SETTING"

    invoke-static {v0, p0}, Lax/be;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Z
    .registers 1

    invoke-static {}, Lax/aO;->d()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b()Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {}, Lax/aO;->d()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static c()Z
    .registers 2

    invoke-static {}, Lax/aO;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static d()I
    .registers 2

    const-string v0, "LOCATION_REPORTER_PRIVACY_SETTING"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lax/be;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lax/aO;->a(I)V

    return-void
.end method

.method public static f()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lax/aO;->a(I)V

    return-void
.end method

.method public static g()V
    .registers 1

    const/4 v0, 0x2

    invoke-static {v0}, Lax/aO;->a(I)V

    return-void
.end method

.method public static h()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "LOCATION_REPORTER_PRIVACY_SETTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lbf/c;->a()V

    return-void
.end method
