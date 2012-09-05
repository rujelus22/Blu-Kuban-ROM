.class Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$1;
.super Ljava/lang/Object;
.source "VideoSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;->createOnClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/popup/VideoBaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 59
    :cond_12
    packed-switch p2, :pswitch_data_32

    .line 72
    :goto_15
    return-void

    .line 61
    :pswitch_16
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto :goto_15

    .line 64
    :pswitch_1f
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto :goto_15

    .line 67
    :pswitch_28
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto :goto_15

    .line 59
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1f
        :pswitch_28
    .end packed-switch
.end method
