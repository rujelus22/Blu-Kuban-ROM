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

.field private final mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

.field private final mHasRemote:Z

.field private final mId:J

.field private mIdInParent:J

.field private mMediaCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private mParentList:Lcom/google/android/music/medialist/SongList;

.field private mPlaylistId:J

.field private mPositionInparent:I

.field private final mSonglist:Lcom/google/android/music/medialist/SongList;

.field private mStoreId:Ljava/lang/String;

.field private final mStoreService:Lcom/google/android/music/store/IStoreService;

.field private final mTracker:Lcom/google/android/music/MusicEventLogger;

.field private sortableAlbumArtistName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/utils/ContextMenuManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 17
    .parameter
    .parameter "contextMenuType"
    .parameter "songlist"
    .parameter "hasRemote"
    .parameter "id"
    .parameter "fragment"

    .prologue
    .line 691
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/store/IStoreService;)V

    .line 692
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/store/IStoreService;)V
    .registers 19
    .parameter
    .parameter "contextMenuType"
    .parameter "songlist"
    .parameter "hasRemote"
    .parameter "id"
    .parameter "fragment"
    .parameter "storeService"

    .prologue
    .line 696
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;-><init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/store/IStoreService;Lcom/google/android/music/medialist/MediaList$MediaCursor;)V

    .line 697
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/utils/ContextMenuManager;Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;Lcom/google/android/music/medialist/SongList;ZJLcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/store/IStoreService;Lcom/google/android/music/medialist/MediaList$MediaCursor;)V
    .registers 13
    .parameter
    .parameter "contextMenuType"
    .parameter "songlist"
    .parameter "hasRemote"
    .parameter "id"
    .parameter "fragment"
    .parameter "storeService"
    .parameter "mediaCursor"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 701
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J

    .line 677
    iput-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    .line 678
    iput-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->sortableAlbumArtistName:Ljava/lang/String;

    .line 679
    iput-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    .line 680
    iput-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mParentList:Lcom/google/android/music/medialist/SongList;

    .line 681
    iput-wide v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mIdInParent:J

    .line 682
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPositionInparent:I

    .line 702
    iput-object p2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mContextMenuType:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    .line 703
    iput-object p3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    .line 704
    iput-boolean p4, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mHasRemote:Z

    .line 705
    iput-wide p5, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    .line 706
    iput-object p7, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 707
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 708
    iput-object p8, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreService:Lcom/google/android/music/store/IStoreService;

    .line 709
    iput-object p9, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mMediaCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 710
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput-wide p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J

    return-wide p1
.end method

.method static synthetic access$1000(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 670
    iget-wide v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->sortableAlbumArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 670
    iget-wide v0, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput-wide p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mParentList:Lcom/google/android/music/medialist/SongList;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput-wide p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mIdInParent:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPositionInparent:I

    return p1
.end method

.method private getDeleteType()Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
    .registers 4

    .prologue
    .line 969
    sget-object v0, Lcom/google/android/music/utils/ContextMenuManager$1;->$SwitchMap$com$google$android$music$utils$ContextMenuManager$ContextMenuType:[I

    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mContextMenuType:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    invoke-virtual {v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 981
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

    .line 971
    :pswitch_28
    sget-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ALBUM:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    .line 979
    :goto_2a
    return-object v0

    .line 973
    :pswitch_2b
    sget-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ARTIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    goto :goto_2a

    .line 975
    :pswitch_2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deleting Genre is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :pswitch_36
    sget-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    goto :goto_2a

    .line 979
    :pswitch_39
    sget-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    goto :goto_2a

    .line 969
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
    .registers 24
    .parameter "item"

    .prologue
    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_564

    .line 962
    const-string v3, "ContextMenuUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v3, 0x0

    .line 965
    :goto_22
    return v3

    .line 716
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "play"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mParentList:Lcom/google/android/music/medialist/SongList;

    if-eqz v3, :cond_65

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mParentList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPositionInparent:I

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 965
    :cond_63
    :goto_63
    const/4 v3, 0x1

    goto :goto_22

    .line 724
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_63

    .line 730
    :sswitch_77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "shop"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :goto_bf
    invoke-static {v4, v3}, Lcom/google/android/music/dl/IntentConstants;->getShopForArtistIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 737
    .local v20, shopIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_63

    .line 734
    .end local v20           #shopIntent:Landroid/content/Intent;
    :cond_d1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    goto :goto_bf

    .line 741
    :sswitch_d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "newPlaylist"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v3, v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    goto/16 :goto_63

    .line 750
    :sswitch_10d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "addToPlaylist"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->showAddToPlaylistDialog(Lcom/google/android/music/medialist/SongList;J)V

    goto/16 :goto_63

    .line 762
    :sswitch_148
    new-instance v18, Lcom/google/android/music/OfflineMusicManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 764
    .local v18, manager:Lcom/google/android/music/OfflineMusicManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "pinContent"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/music/medialist/SongList;->modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V

    .line 769
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    goto/16 :goto_63

    .line 774
    .end local v18           #manager:Lcom/google/android/music/OfflineMusicManager;
    :sswitch_19f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 775
    .local v7, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "delete"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "id"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x6

    const-string v8, "name"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->getDeleteType()Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mHasRemote:Z

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDeleteDialog(Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;JLjava/lang/String;Z)V

    goto/16 :goto_63

    .line 785
    .end local v7           #name:Ljava/lang/String;
    :sswitch_207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 786
    .restart local v7       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "deletePlaylist"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "id"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x6

    const-string v8, "name"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-virtual {v3, v7, v4, v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->showDeletePlaylistDialog(Ljava/lang/String;J)V

    goto/16 :goto_63

    .line 796
    .end local v7           #name:Ljava/lang/String;
    :sswitch_267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 797
    .restart local v7       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "renamePlaylist"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "id"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x6

    const-string v8, "name"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-virtual {v3, v7, v4, v5}, Lcom/google/android/music/activitymanagement/MusicStateController;->showRenamePlaylistDialog(Ljava/lang/String;J)V

    goto/16 :goto_63

    .line 807
    .end local v7           #name:Ljava/lang/String;
    :sswitch_2c7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "makeInstantMix"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "id"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-static {v3, v4, v5}, Lcom/google/android/music/CreateInstantMixActivity;->createInstantPlaylistOnTrack(Landroid/content/Context;J)V

    goto/16 :goto_63

    .line 815
    :sswitch_30e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 816
    .restart local v7       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "useAsRingtone"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "id"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x6

    const-string v8, "name"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreService:Lcom/google/android/music/store/IStoreService;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/android/music/MusicUtils;->setRingtone(Landroid/content/Context;Lcom/google/android/music/store/IStoreService;JLjava/lang/String;)V

    goto/16 :goto_63

    .line 827
    .end local v7           #name:Ljava/lang/String;
    :sswitch_372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "moreByArtist"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "id"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x6

    const-string v8, "name"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$800(Lcom/google/android/music/utils/ContextMenuManager;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistId:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->artistName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->sortableAlbumArtistName:Ljava/lang/String;

    const-wide/16 v13, -0x1

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/music/activitymanagement/MusicStateController;->startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_63

    .line 839
    :sswitch_3d0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "removeFromPlayQueue"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPositionInparent:I

    move/from16 v17, v0

    .line 846
    .local v17, itemPosition:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mMediaCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 847
    .local v15, cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    if-ltz v17, :cond_418

    if-eqz v15, :cond_418

    invoke-virtual {v15}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_418

    .line 848
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v3, v0, v15, v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$1;-><init>(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Lcom/google/android/music/medialist/MediaList$MediaCursor;I)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_63

    .line 859
    :cond_418
    const-string v3, "ContextMenuUtils"

    const-string v4, "Could not remove item from play queue"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_63

    .line 864
    .end local v15           #cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .end local v17           #itemPosition:I
    :sswitch_421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "removeFromPlaylist"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPlaylistId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mIdInParent:J

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;

    move-result-object v21

    .line 872
    .local v21, uri:Landroid/net/Uri;
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$2;-><init>(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Landroid/net/Uri;)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_63

    .line 888
    .end local v21           #uri:Landroid/net/Uri;
    :sswitch_461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 889
    .restart local v7       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "share"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, "id"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreId:Ljava/lang/String;

    aput-object v8, v5, v6

    const/4 v6, 0x6

    const-string v8, "name"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mStoreId:Ljava/lang/String;

    invoke-static {v3, v4, v7}, Lcom/google/android/music/GPlusShareActivity;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_63

    .line 900
    .end local v7           #name:Ljava/lang/String;
    :sswitch_4bd
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$3;-><init>(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_63

    .line 912
    :sswitch_4c9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "playNext"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    sget-object v19, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 919
    .local v19, service:Lcom/google/android/music/IMusicPlaybackService;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mPositionInparent:I

    move/from16 v17, v0

    .line 920
    .restart local v17       #itemPosition:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mMediaCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 921
    .restart local v15       #cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    if-eqz v19, :cond_517

    if-ltz v17, :cond_517

    if-eqz v15, :cond_517

    invoke-virtual {v15}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_517

    .line 923
    new-instance v3, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v3, v0, v1, v15, v2}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;-><init>(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Lcom/google/android/music/IMusicPlaybackService;Lcom/google/android/music/medialist/MediaList$MediaCursor;I)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_63

    .line 939
    :cond_517
    const-string v3, "ContextMenuUtils"

    const-string v4, "Could not play next"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_63

    .line 945
    .end local v15           #cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .end local v17           #itemPosition:I
    .end local v19           #service:Lcom/google/android/music/IMusicPlaybackService;
    :sswitch_520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "addToQueue"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "activeScreen"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    const-string v8, "actionArea"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    const-string v8, "contextMenu"

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v3, :cond_63

    .line 953
    :try_start_54a
    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mSonglist:Lcom/google/android/music/medialist/SongList;

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Lcom/google/android/music/IMusicPlaybackService;->openAndQueue(Lcom/google/android/music/medialist/SongList;I)V
    :try_end_554
    .catch Landroid/os/RemoteException; {:try_start_54a .. :try_end_554} :catch_556

    goto/16 :goto_63

    .line 955
    :catch_556
    move-exception v16

    .line 956
    .local v16, e:Landroid/os/RemoteException;
    const-string v3, "ContextMenuUtils"

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_63

    .line 713
    :sswitch_data_564
    .sparse-switch
        0x1 -> :sswitch_10d
        0x2 -> :sswitch_30e
        0x5 -> :sswitch_d6
        0x6 -> :sswitch_23
        0xf -> :sswitch_148
        0x1b -> :sswitch_2c7
        0x1c -> :sswitch_19f
        0x1d -> :sswitch_461
        0x1f -> :sswitch_520
        0xcb -> :sswitch_372
        0x12d -> :sswitch_421
        0x12e -> :sswitch_372
        0x190 -> :sswitch_207
        0x192 -> :sswitch_267
        0x258 -> :sswitch_77
        0x2bd -> :sswitch_4bd
        0x320 -> :sswitch_4c9
        0x321 -> :sswitch_3d0
    .end sparse-switch
.end method
