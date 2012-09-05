.class public final Lar;
.super Landroid/database/ContentObserver;
.source "a"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 13
    iput-object v0, p0, Lar;->a:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lar;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 5
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lar;->a:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 26
    sget-object v1, Ldg;->w:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 27
    iget-object v1, p0, Lar;->a:Landroid/content/Context;

    sget-object v2, Ldg;->w:Ldg;

    invoke-static {v1, v2}, Laq;->a(Landroid/content/Context;Ldg;)V

    .line 28
    :cond_19
    sget-object v1, Ldg;->x:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 29
    iget-object v0, p0, Lar;->a:Landroid/content/Context;

    sget-object v1, Ldg;->x:Ldg;

    invoke-static {v0, v1}, Laq;->a(Landroid/content/Context;Ldg;)V

    .line 30
    :cond_2c
    return-void
.end method
