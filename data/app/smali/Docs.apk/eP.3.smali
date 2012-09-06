.class public LeP;
.super Ljava/lang/Object;
.source "DriveEnabledCheckerImpl.java"

# interfaces
.implements LeO;


# instance fields
.field a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LXh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field a:Ldg;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, LeP;->a:LeZ;

    sget-object v1, LeV;->c:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 70
    const/4 v0, 0x0

    .line 76
    :goto_b
    return v0

    .line 74
    :cond_c
    iget-object v0, p0, LeP;->a:LFX;

    const-string v1, "enableDrive"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_b
.end method

.method private d(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 102
    .line 104
    :try_start_1
    iget-object v1, p0, LeP;->a:Ldg;

    invoke-interface {v1, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v1

    .line 105
    const-string v2, "driveEnabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lde;->a(Ljava/lang/String;Z)Z
    :try_end_d
    .catch Ldh; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 110
    :goto_e
    return v0

    .line 106
    :catch_f
    move-exception v1

    .line 107
    const-string v2, "DriveEnabledCheckerImpl"

    const-string v3, "isDriveEnabledLocally: "

    invoke-static {v2, v3, v1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, LeP;->a:Ldg;

    invoke-interface {v0, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v0

    .line 90
    const-string v1, "driveEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lde;->a(Ljava/lang/String;Z)V

    .line 91
    iget-object v1, p0, LeP;->a:Ldg;

    invoke-interface {v1, v0}, Ldg;->a(Lde;)V
    :try_end_11
    .catch Ldh; {:try_start_0 .. :try_end_11} :catch_12

    .line 95
    :goto_11
    return-void

    .line 92
    :catch_12
    move-exception v0

    .line 93
    const-string v1, "DriveEnabledCheckerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDriveEnabledLocally: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldh;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, LeP;->a()I

    move-result v1

    .line 42
    if-eqz v1, :cond_a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 47
    :cond_a
    :goto_a
    return v0

    .line 45
    :cond_b
    iget-object v1, p0, LeP;->a:LXh;

    invoke-interface {v1, p1}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, LXg;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0}, LeP;->a()I

    move-result v1

    .line 54
    if-nez v1, :cond_9

    .line 55
    const/4 v0, 0x0

    .line 64
    :cond_8
    :goto_8
    return v0

    .line 56
    :cond_9
    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    .line 59
    invoke-direct {p0, p1}, LeP;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 62
    iget-object v0, p0, LeP;->a:LXh;

    invoke-interface {v0, p1}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, LXg;->c()Z

    move-result v0

    goto :goto_8
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, LeP;->a:LXh;

    invoke-interface {v0, p1}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, LXg;->d()Z

    move-result v0

    return v0
.end method
