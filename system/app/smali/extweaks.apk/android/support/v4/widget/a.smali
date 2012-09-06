.class final Landroid/support/v4/widget/a;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/CursorAdapter;

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
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->onContentChanged()V

    .line 466
    return-void
.end method
