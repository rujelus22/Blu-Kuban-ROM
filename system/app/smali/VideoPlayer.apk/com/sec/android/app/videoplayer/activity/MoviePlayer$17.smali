.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 3211
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 3214
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 3215
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3216
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3217
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3220
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3a

    .line 3221
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v0

    if-nez v0, :cond_39

    .line 3223
    const-string v0, "MoviePlayer"

    const-string v1, "createPopup  SCHEME_VIDEO_LIST - next operation : false -> exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 3230
    :cond_39
    :goto_39
    return-void

    .line 3228
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_39
.end method
