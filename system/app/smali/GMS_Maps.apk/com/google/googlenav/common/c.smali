.class public Lcom/google/googlenav/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "2012-08-27 19:23:26 PDT"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "paulby"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method
