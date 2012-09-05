.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;
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
    .line 3129
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x14

    const/4 v7, 0x0

    .line 3132
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 3134
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    packed-switch v4, :pswitch_data_12e

    .line 3207
    :cond_12
    :goto_12
    return-void

    .line 3139
    :pswitch_13
    const/4 v4, 0x1

    :try_start_14
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 3140
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingUri()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->startPlay(Ljava/lang/String;)Z

    .line 3141
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setTitleName()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2d} :catch_2e

    goto :goto_12

    .line 3142
    :catch_2e
    move-exception v1

    .line 3144
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createSendViaPopup(): RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 3149
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_4c
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 3150
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 3151
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v4, v6}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3154
    :cond_62
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getURLInfo()Ljava/lang/String;

    move-result-object v3

    .line 3156
    .local v3, urlInfo:Ljava/lang/String;
    if-nez v3, :cond_74

    .line 3157
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->launchBrowser()Z

    .line 3158
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 3162
    :cond_74
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->launchBrowser(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 3163
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    if-ne v4, v5, :cond_98

    .line 3164
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_12

    .line 3165
    const-string v4, "MoviePlayer"

    const-string v5, "createPopup  SCHEME_VIDEO_LIST - next operation : false -> exit"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_12

    .line 3169
    :cond_98
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_12

    .line 3178
    .end local v3           #urlInfo:Ljava/lang/String;
    :pswitch_9f
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_b5

    .line 3179
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 3180
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;
    invoke-static {v4, v6}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$2702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3183
    :cond_b5
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    if-ne v4, v5, :cond_127

    .line 3184
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isAutoPlayNext()Z

    move-result v4

    if-nez v4, :cond_ca

    .line 3185
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_12

    .line 3187
    :cond_ca
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isAutoPlayNext()Z

    move-result v4

    if-eqz v4, :cond_113

    .line 3188
    sget-object v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3189
    .local v2, total_list_count:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurIndex()I

    move-result v0

    .line 3191
    .local v0, curPos:I
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total File count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Current error File count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I

    move-result v4

    if-lt v4, v2, :cond_113

    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_113

    .line 3194
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 3197
    .end local v0           #curPos:I
    .end local v2           #total_list_count:I
    :cond_113
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v4

    if-nez v4, :cond_12

    .line 3198
    const-string v4, "MoviePlayer"

    const-string v5, "createPopup  SCHEME_VIDEO_LIST - next operation : false -> exit"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_12

    .line 3202
    :cond_127
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_12

    .line 3134
    :pswitch_data_12e
    .packed-switch 0x1f
        :pswitch_13
        :pswitch_9f
        :pswitch_4c
        :pswitch_13
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_13
    .end packed-switch
.end method
