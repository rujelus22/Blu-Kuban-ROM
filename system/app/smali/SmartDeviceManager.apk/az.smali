.class public final Laz;
.super Lan;
.source "a"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Ldg;)V
    .registers 3
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lan;-><init>(Ldg;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Laz;->c:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 4

    .prologue
    .line 27
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Laz;->a()Z

    move-result v1

    .line 31
    iget-boolean v2, p0, Laz;->c:Z

    if-eq v1, v2, :cond_16

    .line 34
    invoke-static {v0}, Lcom/locationlabs/v3client/feature/messaging/MessagingObserverService;->a(Landroid/content/Context;)V

    .line 36
    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/polling/PollingService;->a(Landroid/content/Context;)V

    .line 38
    :cond_14
    iput-boolean v1, p0, Laz;->c:Z

    .line 41
    :cond_16
    return v1
.end method
