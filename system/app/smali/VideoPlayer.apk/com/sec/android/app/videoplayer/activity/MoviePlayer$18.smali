.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createDrmPopup(I)V
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
    .line 3234
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3237
    sparse-switch p2, :sswitch_data_56

    .line 3267
    :goto_6
    return v0

    .line 3239
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2d

    .line 3240
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v2, v0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    .line 3242
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v2, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 3243
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 3244
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3245
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_2d
    :goto_2d
    move v0, v1

    .line 3267
    goto :goto_6

    .line 3252
    :sswitch_2f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2d

    .line 3253
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v2, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 3254
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 3255
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3256
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3258
    :cond_50
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_2d

    .line 3237
    :sswitch_data_56
    .sparse-switch
        0x4 -> :sswitch_2f
        0x1a -> :sswitch_7
    .end sparse-switch
.end method
