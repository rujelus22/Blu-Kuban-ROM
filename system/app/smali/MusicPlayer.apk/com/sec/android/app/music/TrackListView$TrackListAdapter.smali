.class Lcom/sec/android/app/music/TrackListView$TrackListAdapter;
.super Lcom/sec/android/app/music/widget/CommonMusicListAdapter;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mThumbnailButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mThumbnailClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/sec/android/app/music/TrackListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/TrackListView;Landroid/content/Context;Landroid/view/View;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 15
    .parameter
    .parameter "context"
    .parameter "view"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 1285
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1606
    new-instance v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$2;-><init>(Lcom/sec/android/app/music/TrackListView$TrackListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->mThumbnailClickListener:Landroid/view/View$OnClickListener;

    .line 1642
    new-instance v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$3;-><init>(Lcom/sec/android/app/music/TrackListView$TrackListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->mThumbnailButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1287
    return-void
.end method

.method private isShowProgressBar(JI)Z
    .registers 13
    .parameter "audioId"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1558
    const/4 v4, 0x0

    .line 1559
    .local v4, showProgressBar:Z
    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v7

    if-ne v7, v5, :cond_176

    .line 1560
    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1561
    .local v1, id:J
    const-wide/16 v7, -0xe

    cmp-long v7, v1, v7

    if-eqz v7, :cond_2b

    const-wide/16 v7, -0xd

    cmp-long v7, v1, v7

    if-eqz v7, :cond_2b

    const-wide/16 v7, -0xc

    cmp-long v7, v1, v7

    if-nez v7, :cond_81

    .line 1564
    :cond_2b
    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$1300(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v7

    if-nez v7, :cond_7f

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$1600(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_7f

    move v4, v5

    .line 1600
    .end local v1           #id:J
    :cond_44
    :goto_44
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTabId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mKeyWord : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isShowProgressBar showProgressBar : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return v4

    .restart local v1       #id:J
    :cond_7f
    move v4, v6

    .line 1564
    goto :goto_44

    .line 1569
    :cond_81
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 1571
    .local v3, service:Lcom/sec/android/app/music/ICorePlayerService;
    if-eqz v3, :cond_44

    .line 1572
    :try_start_85
    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$1300(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v7

    if-nez v7, :cond_104

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$1600(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v7

    if-nez v7, :cond_104

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_104

    if-eqz v3, :cond_104

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->getKeyWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_104

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->getQueuePosition()I

    move-result v7

    if-ne p3, v7, :cond_104

    move v4, v5

    .line 1577
    :goto_be
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTabId = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mKeyWord : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " service.getKeyWord():"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_106

    const-string v5, "service is null"

    :goto_f9
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_fc} :catch_fe

    goto/16 :goto_44

    .line 1591
    :catch_fe
    move-exception v0

    .line 1592
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_44

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_104
    move v4, v6

    .line 1572
    goto :goto_be

    .line 1577
    :cond_106
    :try_start_106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->getKeyWord()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " audioId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " service.getAudioId():"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_130

    const-string v5, "service is null"

    goto :goto_f9

    :cond_130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " position: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " service.getQueuePosition():"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_15a

    const-string v5, "service is null"

    goto :goto_f9

    :cond_15a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->getQueuePosition()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " isShowProgressBar showProgressBar : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_174
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_174} :catch_fe

    move-result-object v5

    goto :goto_f9

    .line 1596
    .end local v1           #id:J
    .end local v3           #service:Lcom/sec/android/app/music/ICorePlayerService;
    :cond_176
    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$1300(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v7

    if-nez v7, :cond_191

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z
    invoke-static {v7}, Lcom/sec/android/app/music/TrackListView;->access$1600(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v7

    if-nez v7, :cond_191

    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_191

    move v4, v5

    :goto_18f
    goto/16 :goto_44

    :cond_191
    move v4, v6

    goto :goto_18f
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 30
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1420
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTabId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v4}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKeyWord : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bindView position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1200(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v2

    if-eqz v2, :cond_9f

    const-wide/16 v2, -0x5

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    cmp-long v2, v2, v24

    if-nez v2, :cond_9f

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .line 1426
    .local v18, numberOf:I
    const v2, 0x7f0c000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1427
    .local v22, text:Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v4, v7

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1429
    .local v17, number:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    .end local v17           #number:Ljava/lang/String;
    .end local v18           #numberOf:I
    .end local v22           #text:Landroid/widget/TextView;
    :goto_9e
    return-void

    .line 1433
    :cond_9f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;

    .line 1435
    .local v23, vh:Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTitleIdx:I
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$1700(Lcom/sec/android/app/music/TrackListView;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1500(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mDurationIdx:I
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1800(Lcom/sec/android/app/music/TrackListView;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v0, v2, 0x3e8

    move/from16 v21, v0

    .line 1440
    .local v21, secs:I
    if-nez v21, :cond_289

    .line 1441
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    .end local v21           #secs:I
    :cond_e1
    :goto_e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mAlbumIdIdx:I
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1900(Lcom/sec/android/app/music/TrackListView;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1451
    .local v5, albumId:J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    .line 1454
    .local v19, position:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_167

    .line 1455
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$2000()Ljava/util/HashMap;

    move-result-object v2

    add-int/lit8 v3, v19, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29b

    .line 1456
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->title:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    :goto_117
    const/16 v20, -0x1

    .line 1462
    .local v20, savedAlbumId:I
    :try_start_119
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$2000()Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_12a
    .catch Ljava/lang/NullPointerException; {:try_start_119 .. :try_end_12a} :catch_305

    move-result v20

    .line 1468
    :goto_12b
    move/from16 v0, v20

    int-to-long v2, v0

    cmp-long v2, v2, v5

    if-nez v2, :cond_2ba

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1470
    .local v12, bm:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_2a5

    .line 1471
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->titleImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1476
    :goto_14a
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    const-string v3, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->title:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    .end local v12           #bm:Landroid/graphics/Bitmap;
    .end local v20           #savedAlbumId:I
    :cond_167
    :goto_167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1500(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v2

    if-nez v2, :cond_1e8

    .line 1485
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mArtistIdx:I
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$2100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    new-instance v9, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;-><init>(Lcom/sec/android/app/music/widget/CommonMusicListAdapter;)V

    .line 1496
    .local v9, args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    move/from16 v0, v19

    iput v0, v9, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->position:I

    .line 1497
    iput-wide v5, v9, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->albumId:J

    .line 1498
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    iput-object v2, v9, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->button:Landroid/widget/ImageView;

    .line 1499
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    iput-object v2, v9, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->progress:Landroid/widget/ProgressBar;

    .line 1500
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1501
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1503
    invoke-static {v5, v6}, Lcom/sec/android/app/music/MusicUtils;->getCachedArtworkWithoutMaking(J)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1504
    .local v13, d:Landroid/graphics/drawable/Drawable;
    if-nez v13, :cond_2c5

    .line 1506
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1507
    new-instance v8, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;-><init>(Lcom/sec/android/app/music/widget/CommonMusicListAdapter;)V

    .line 1508
    .local v8, ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    iput-object v2, v8, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->iv:Landroid/widget/ImageView;

    .line 1509
    iput-wide v5, v8, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->albumId:J

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v8, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    .line 1511
    sget-object v2, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    iget-object v15, v2, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->mBackThreadHandler:Landroid/os/Handler;

    .line 1512
    .local v15, h:Landroid/os/Handler;
    const/4 v2, 0x2

    invoke-virtual {v15, v2, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1523
    .end local v8           #ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    .end local v9           #args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    .end local v15           #h:Landroid/os/Handler;
    :cond_1e8
    :goto_1e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mAudioIdIdx:I
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$2200(Lcom/sec/android/app/music/TrackListView;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1525
    .local v10, audioId:J
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTabId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v4}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKeyWord : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bindView audioId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v11, v1}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->isShowProgressBar(JI)Z

    move-result v2

    if-eqz v2, :cond_2e0

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1500(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v2

    if-nez v2, :cond_264

    .line 1531
    const/16 v16, 0x0

    .line 1533
    .local v16, isPlaying:Z
    :try_start_24a
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z
    :try_end_24f
    .catch Landroid/os/RemoteException; {:try_start_24a .. :try_end_24f} :catch_2ce

    move-result v16

    .line 1537
    :goto_250
    if-eqz v16, :cond_2d4

    .line 1538
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1542
    :goto_25c
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1544
    .end local v16           #isPlaying:Z
    :cond_264
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView;->mThumbnailButton:Landroid/widget/ImageView;

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #calls: Lcom/sec/android/app/music/TrackListView;->updateNowPlayingProgressBar()V
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$900(Lcom/sec/android/app/music/TrackListView;)V

    goto/16 :goto_9e

    .line 1443
    .end local v5           #albumId:J
    .end local v10           #audioId:J
    .end local v19           #position:I
    .restart local v21       #secs:I
    :cond_289
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    move/from16 v0, v21

    int-to-long v3, v0

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/sec/android/app/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e1

    .line 1458
    .end local v21           #secs:I
    .restart local v5       #albumId:J
    .restart local v19       #position:I
    :cond_29b
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->title:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_117

    .line 1473
    .restart local v12       #bm:Landroid/graphics/Bitmap;
    .restart local v20       #savedAlbumId:I
    :cond_2a5
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->titleImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v3}, Lcom/sec/android/app/music/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Lcom/sec/android/app/music/MusicUtils;->getDefaultBitmapImage(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_14a

    .line 1480
    .end local v12           #bm:Landroid/graphics/Bitmap;
    :cond_2ba
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->title:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_167

    .line 1518
    .end local v20           #savedAlbumId:I
    .restart local v9       #args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    .restart local v13       #d:Landroid/graphics/drawable/Drawable;
    :cond_2c5
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1e8

    .line 1534
    .end local v9           #args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    .restart local v10       #audioId:J
    .restart local v16       #isPlaying:Z
    :catch_2ce
    move-exception v14

    .line 1535
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_250

    .line 1540
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_2d4
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    const v3, 0x7f020039

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_25c

    .line 1549
    .end local v16           #isPlaying:Z
    :cond_2e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1500(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v2

    if-nez v2, :cond_2fb

    .line 1550
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1551
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1553
    :cond_2fb
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_9e

    .line 1463
    .end local v10           #audioId:J
    .restart local v20       #savedAlbumId:I
    :catch_305
    move-exception v2

    goto/16 :goto_12b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$1200(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$1100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_18

    .line 1358
    const/4 p2, 0x0

    .line 1363
    :cond_13
    :goto_13
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1359
    :cond_18
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1361
    const/4 p2, 0x0

    goto :goto_13
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$1200(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$1100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_14

    .line 1349
    const/4 v0, 0x0

    .line 1351
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_13
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 1368
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$1200(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-wide/16 v3, -0x5

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 1369
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1371
    .local v0, li:Landroid/view/LayoutInflater;
    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1414
    .end local v0           #li:Landroid/view/LayoutInflater;
    :goto_23
    return-object v1

    .line 1374
    :cond_24
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1375
    .local v1, v:Landroid/view/View;
    new-instance v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/music/TrackListView$TrackListAdapter;)V

    .line 1376
    .local v2, vh:Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$1300(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1377
    const v3, 0x7f0c000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 1378
    iget-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1380
    :cond_45
    const v3, 0x7f0c000f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    .line 1381
    const v3, 0x7f0c0014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 1383
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsOneLineLayout:Z
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$1500(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1384
    const v3, 0x7f0c0018

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 1398
    :cond_6e
    :goto_6e
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a0

    .line 1399
    const v3, 0x7f0c0010

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->title:Landroid/view/View;

    .line 1400
    iget-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->title:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$1;-><init>(Lcom/sec/android/app/music/TrackListView$TrackListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1409
    const v3, 0x7f0c0012

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->titleText:Landroid/widget/TextView;

    .line 1410
    const v3, 0x7f0c0011

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->titleImage:Landroid/widget/ImageView;

    .line 1412
    :cond_a0
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_23

    .line 1386
    :cond_a4
    const v3, 0x7f0c000c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 1387
    const v3, 0x7f0c0015

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    .line 1388
    iget-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget-object v4, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->sDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1391
    const v3, 0x7f0c000d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    .line 1392
    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$1300(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v3

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsReorderMode:Z
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$1600(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 1393
    iget-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->mThumbnailClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1394
    iget-object v3, v2, Lcom/sec/android/app/music/TrackListView$TrackListAdapter$ViewHolder;->thumbnailButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->mThumbnailButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6e
.end method

.method protected onContentChanged()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1294
    invoke-super {p0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->onContentChanged()V

    .line 1295
    iget-boolean v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->mAutoRequery:Z

    if-nez v1, :cond_a

    .line 1344
    :cond_9
    :goto_9
    return-void

    .line 1300
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 1301
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTabId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mKeyWord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onContentChanged count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getCursor Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTrackListCursorCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v3}, Lcom/sec/android/app/music/TrackListView;->access$1100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_7e
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1312
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1200(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v5, :cond_b3

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v1

    if-lez v1, :cond_b3

    .line 1316
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/music/TrackListView;->reQueryListCursor(Z)V

    .line 1319
    :cond_b3
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsShowCountOfSongs:Z
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1200(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v1

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v1

    if-nez v1, :cond_dc

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v5, :cond_dc

    .line 1323
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/music/TrackListView;->reQueryListCursor(Z)V

    .line 1326
    :cond_dc
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    #setter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/sec/android/app/music/TrackListView;->access$1002(Lcom/sec/android/app/music/TrackListView;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1329
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v0

    .line 1330
    .local v0, lastTrackListCursorCount:I
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_118

    .line 1331
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #setter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v1, v4}, Lcom/sec/android/app/music/TrackListView;->access$1102(Lcom/sec/android/app/music/TrackListView;I)I

    .line 1336
    :goto_f8
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mIsSelectMode:Z
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1300(Lcom/sec/android/app/music/TrackListView;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1339
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v1

    if-eq v1, v0, :cond_9

    .line 1340
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/music/TrackListView;->setAllItemChecked(Z)V

    .line 1341
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mSoftButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackListView;->access$1400(Lcom/sec/android/app/music/TrackListView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_9

    .line 1333
    :cond_118
    iget-object v1, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView$TrackListAdapter;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$1000(Lcom/sec/android/app/music/TrackListView;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #setter for: Lcom/sec/android/app/music/TrackListView;->mTrackListCursorCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/music/TrackListView;->access$1102(Lcom/sec/android/app/music/TrackListView;I)I

    goto :goto_f8
.end method
