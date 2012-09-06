.class final Ldbxyzptlk/d/c;
.super Landroid/database/ContentObserver;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/d/a;


# direct methods
.method public constructor <init>(Ldbxyzptlk/d/a;)V
    .registers 3
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Ldbxyzptlk/d/c;->a:Ldbxyzptlk/d/a;

    .line 455
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 456
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Ldbxyzptlk/d/c;->a:Ldbxyzptlk/d/a;

    invoke-virtual {v0}, Ldbxyzptlk/d/a;->b()V

    .line 466
    return-void
.end method
