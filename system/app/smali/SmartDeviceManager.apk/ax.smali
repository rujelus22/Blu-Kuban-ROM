.class public final Lax;
.super Lan;
.source "a"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    sget-object v0, Ldg;->k:Ldg;

    invoke-direct {p0, v0}, Lan;-><init>(Ldg;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lax;->c:Z

    .line 28
    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .registers 4

    .prologue
    .line 31
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lax;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 34
    const-string v1, "ODL_INITIAL_CHECK_WAIT_MILLIS"

    invoke-static {v1}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/locationlabs/v3client/LockScreenService;->a(Landroid/content/Context;J)V

    .line 37
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
