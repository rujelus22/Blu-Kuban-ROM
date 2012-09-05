.class Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog$1;
.super Ljava/lang/Object;
.source "VideoColortoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;->setDialogBuilderExtra(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 49
    packed-switch p2, :pswitch_data_36

    .line 66
    :goto_6
    return-void

    .line 51
    :pswitch_7
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setColorTone(I)V

    .line 65
    :goto_13
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->returnToPrevDialog()V

    goto :goto_6

    .line 55
    :pswitch_1b
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setColorTone(I)V

    goto :goto_13

    .line 59
    :pswitch_28
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoColortoneDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setColorTone(I)V

    goto :goto_13

    .line 49
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1b
        :pswitch_28
    .end packed-switch
.end method
