.class final Lcom/dropbox/android/widget/R;
.super Landroid/database/ContentObserver;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/FileItemView;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/widget/FileItemView;)V
    .registers 3
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/dropbox/android/widget/R;->a:Lcom/dropbox/android/widget/FileItemView;

    .line 1116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1117
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 1121
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/dropbox/android/widget/R;->a:Lcom/dropbox/android/widget/FileItemView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/FileItemView;->b()V

    .line 1127
    return-void
.end method
