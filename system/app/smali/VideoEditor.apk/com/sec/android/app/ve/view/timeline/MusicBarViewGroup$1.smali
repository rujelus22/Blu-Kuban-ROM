.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;
.super Ljava/lang/Object;
.source "MusicBarViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarDoubleTap:Z
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$0(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 87
    :goto_8
    return-void

    .line 80
    :cond_9
    const-string v1, "This is inside onClick of MusicBar View"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mMusicbarDoubleTap:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;Z)V

    .line 83
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 84
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$2(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->access$3()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8
.end method
