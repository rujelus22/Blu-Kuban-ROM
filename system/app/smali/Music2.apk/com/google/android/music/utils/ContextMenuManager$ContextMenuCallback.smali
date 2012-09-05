.class Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;
.super Ljava/lang/Object;
.source "ContextMenuManager.java"

# interfaces
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/ContextMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field private artistId:J

.field private artistName:Ljava/lang/String;

.field private final mContextMenuType:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

.field private final mHasRemote:Z

.field private final mId:J

.field private mIdInParent:J

.field private mPlaylistId:J

.field private final mSonglist:Lcom/google/android/music/medialist/SongList;

.field private mStoreId:Ljava/lang/String;

.field private final mStoreService:Lcom/google/android/music/store/IStoreService;

.field final synthetic this$0:Lcom/google/android/music/utils/ContextMenuManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJ)V
    .registers 15
    .parameter
    .parameter "contextMenuType"
    .parameter "songlist"
    .parameter "hasRemote"
    .parameter "id"

    .prologue
    .line 438
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/store/IStoreService;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/store/IStoreService;)V
    .registers 11
    .parameter
    .parameter "contextMenuType"
    .parameter "songlist"
    .parameter "hasRemote"
    .parameter "id"
    .parameter "storeService"

    .prologue
    const-wide/16 v1, -0x1

    .line 442
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    .line 431
    iput-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    .line 432
    iput-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mIdInParent:J

    .line 443
    iput-object p2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mContextMenuType:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    .line 444
    iput-object p3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    .line 445
    iput-boolean p4, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mHasRemote:Z

    .line 446
    iput-wide p5, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    .line 447
    iput-object p7, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreService:Lcom/google/android/music/store/IStoreService;

    .line 448
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    iput-wide p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    iput-wide p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    iput-wide p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mIdInParent:J

    return-wide p1
.end method

.method private getDeleteType()Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;
    .registers 4

    .prologue
    .line 536
    sget-object v0, Lcom/google/android/music/utils/ContextMenuManager$1;->$SwitchMap$com$google$android$music$utils$ContextMenuManager$ContextMenuType:[I

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mContextMenuType:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    invoke-virtual {v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown context menu type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mContextMenuType:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :pswitch_28
    sget-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ALBUM:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    .line 546
    :goto_2a
    return-object v0

    .line 540
    :pswitch_2b
    sget-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    goto :goto_2a

    .line 542
    :pswitch_2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deleting Genre is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :pswitch_36
    sget-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    goto :goto_2a

    .line 546
    :pswitch_39
    sget-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    goto :goto_2a

    .line 536
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a0

    .line 529
    const-string v1, "ContextMenuUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :goto_22
    return v0

    .line 454
    :sswitch_23
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mContextMenuType:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v2}, Lcom/google/android/music/utils/ContextMenuManager;->access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    #calls: Lcom/google/android/music/utils/ContextMenuManager;->doExternalSearch(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$700(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;)V

    :goto_36
    move v0, v9

    .line 532
    goto :goto_22

    .line 458
    :sswitch_38
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager;->access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_36

    .line 462
    :sswitch_45
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 463
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_36

    .line 465
    :cond_63
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_36

    .line 470
    :sswitch_6f
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    goto :goto_36

    .line 474
    :sswitch_7b
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-wide v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->showAddToPlaylistDialog(Lcom/google/android/music/medialist/SongList;J)V

    goto :goto_36

    .line 482
    :sswitch_89
    new-instance v7, Lcom/google/android/music/OfflineMusicManager;

    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager;->access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 484
    .local v7, manager:Lcom/google/android/music/OfflineMusicManager;
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/music/medialist/SongList;->modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V

    .line 485
    invoke-virtual {v7}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    goto :goto_36

    .line 490
    .end local v7           #manager:Lcom/google/android/music/OfflineMusicManager;
    :sswitch_ad
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->getDeleteType()Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-object v5, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mHasRemote:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JLjava/lang/CharSequence;Z)V

    goto/16 :goto_36

    .line 494
    :sswitch_cc
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDeletePlaylistDialog(Ljava/lang/String;J)V

    goto/16 :goto_36

    .line 498
    :sswitch_e5
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->showRenamePlaylistDialog(Ljava/lang/String;J)V

    goto/16 :goto_36

    .line 502
    :sswitch_fe
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/music/CreateInstantMixActivity;->createInstantPlaylistOnTrack(Landroid/content/Context;J)V

    goto/16 :goto_36

    .line 505
    :sswitch_10b
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreService:Lcom/google/android/music/store/IStoreService;

    iget-wide v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-object v5, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/MusicUtils;->setRingtone(Landroid/content/Context;Lcom/google/android/music/store/IStoreService;JLjava/lang/String;)V

    goto/16 :goto_36

    .line 511
    :sswitch_126
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$600(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J

    const-string v3, ""

    iget-object v4, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_36

    .line 515
    :sswitch_139
    iget-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    iget-wide v3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mIdInParent:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;

    move-result-object v8

    .line 516
    .local v8, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v8, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_17d

    .line 517
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0078

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-object v6, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_36

    .line 520
    :cond_17d
    const-string v0, "ContextMenuUtils"

    const-string v1, "Could not remove item from playlist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 525
    .end local v8           #uri:Landroid/net/Uri;
    :sswitch_186
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    iget-object v3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$500(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/GPlusShareActivity;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 451
    nop

    :sswitch_data_1a0
    .sparse-switch
        0x1 -> :sswitch_7b
        0x2 -> :sswitch_10b
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_38
        0xf -> :sswitch_89
        0x1b -> :sswitch_fe
        0x1c -> :sswitch_ad
        0x1d -> :sswitch_186
        0xcb -> :sswitch_126
        0x12c -> :sswitch_23
        0x12d -> :sswitch_139
        0x12e -> :sswitch_126
        0x190 -> :sswitch_cc
        0x192 -> :sswitch_e5
        0x258 -> :sswitch_45
    .end sparse-switch
.end method
