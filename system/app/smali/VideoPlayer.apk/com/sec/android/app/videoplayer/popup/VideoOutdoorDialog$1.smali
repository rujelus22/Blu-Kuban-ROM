.class Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog$1;
.super Ljava/lang/Object;
.source "VideoOutdoorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;->setDialogBuilderExtra(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    packed-switch p2, :pswitch_data_28

    .line 48
    :goto_5
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->returnToPrevDialog()V

    .line 49
    return-void

    .line 38
    :pswitch_d
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOutdoorVisibility(Z)V

    goto :goto_5

    .line 42
    :pswitch_1a
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoOutdoorDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOutdoorVisibility(Z)V

    goto :goto_5

    .line 36
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1a
    .end packed-switch
.end method
