.class public final Ldbxyzptlk/a/e;
.super Landroid/database/ContentObserver;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/a/d;


# direct methods
.method public constructor <init>(Ldbxyzptlk/a/d;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Ldbxyzptlk/a/e;->a:Ldbxyzptlk/a/d;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Ldbxyzptlk/a/e;->a:Ldbxyzptlk/a/d;

    invoke-virtual {v0}, Ldbxyzptlk/a/d;->u()V

    .line 63
    return-void
.end method
