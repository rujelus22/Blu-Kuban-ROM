.class Lbg;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# instance fields
.field final synthetic a:Lbe;


# direct methods
.method public constructor <init>(Lbe;)V
    .registers 3
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lbg;->a:Lbe;

    .line 455
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 456
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lbg;->a:Lbe;

    invoke-virtual {v0}, Lbe;->a()V

    .line 466
    return-void
.end method
