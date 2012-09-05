.class Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;
.super Ljava/lang/Object;
.source "VideoShareViaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->createOnClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v10, 0x1

    .line 72
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mDisplayAppList:Ljava/util/List;
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 73
    .local v0, displayedInfo:Landroid/content/pm/ResolveInfo;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v7, shareInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 76
    .local v6, mimeType:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareAppList:Ljava/util/List;
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 77
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 79
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 83
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_49
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v9, v8}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->access$202(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    .line 85
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v9, "com.sec.android.app.dlna.ui.AddinActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 86
    const-string v8, "SendAppListDialog"

    const-string v9, "OnClickListener send via All share"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sput-boolean v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    .line 90
    :cond_70
    const/4 v4, 0x0

    .local v4, index:I
    :goto_71
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_a0

    .line 91
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 93
    .restart local v5       #info:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7e
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    if-ge v2, v8, :cond_9d

    .line 94
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 95
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v5, v6}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->access$300(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    :cond_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 90
    :cond_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 99
    .end local v2           #i:I
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_a0
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 100
    const-string v8, "SendAppListDialog"

    const-string v9, "createOnClickListener() save current position"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v8, 0x1

    :try_start_ae
    sput-boolean v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mReadPosition:Z

    .line 104
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v8}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v8

    sput-wide v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_b8} :catch_be

    .line 111
    :cond_b8
    :goto_b8
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->singleSend()V
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;->access$400(Lcom/sec/android/app/videoplayer/popup/VideoShareViaDialog;)V

    .line 113
    return-void

    .line 105
    :catch_be
    move-exception v1

    .line 106
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    const-string v8, "SendAppListDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createOnClickListener() RemoteException occured :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8
.end method
