.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2713
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2716
    sparse-switch p2, :sswitch_data_70

    .line 2754
    :cond_6
    :goto_6
    return v2

    .line 2718
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 2719
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2720
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2202(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2722
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 2723
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopBufferingChecker()V

    .line 2725
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 2726
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2727
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1002(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2728
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2730
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_6

    .line 2736
    :sswitch_3e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 2737
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2738
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2202(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2740
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 2741
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2742
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1002(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2743
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2745
    :cond_69
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_6

    .line 2716
    nop

    :sswitch_data_70
    .sparse-switch
        0x4 -> :sswitch_3e
        0x1a -> :sswitch_7
    .end sparse-switch
.end method
