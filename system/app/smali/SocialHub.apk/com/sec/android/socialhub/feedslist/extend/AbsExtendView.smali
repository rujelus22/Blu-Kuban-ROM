.class public abstract Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;
.super Ljava/lang/Object;
.source "AbsExtendView.java"

# interfaces
.implements Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mHandler:Landroid/os/Handler;

    .line 21
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    return-void
.end method


# virtual methods
.method protected handleOptionMenu(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)V
    .registers 3
    .parameter "data"
    .parameter "item"

    .prologue
    .line 43
    return-void
.end method

.method public onOptionsItemSelected(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "data"
    .parameter "item"

    .prologue
    .line 27
    move-object v1, p2

    .line 28
    .local v1, menu_item:Landroid/view/MenuItem;
    move-object v0, p1

    .line 30
    .local v0, menu_data:Lcom/sec/android/socialhub/parent/IActivityDataHandler;
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;-><init>(Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    const/4 v2, 0x1

    return v2
.end method
