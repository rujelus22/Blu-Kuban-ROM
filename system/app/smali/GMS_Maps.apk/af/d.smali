.class public Laf/d;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "2012-02-13 12:25:37 PST"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "olec"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method
