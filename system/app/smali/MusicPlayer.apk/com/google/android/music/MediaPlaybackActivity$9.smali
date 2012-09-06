.class Lcom/google/android/music/MediaPlaybackActivity$9;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->updateCurrentSubmitter()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPictureUrl:Ljava/lang/String;

.field private mSongList:Lcom/google/android/music/medialist/SongList;

.field private mSubmitterFound:Z

.field private mSubmitterId:J

.field private mSubmitterName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$fAudioId:Lcom/google/android/music/dl/ContentIdentifier;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-object p2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$fAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterFound:Z

    .line 1426
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mUnknownSubmitter:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$1800(Lcom/google/android/music/MediaPlaybackActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    .line 1431
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1900(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSongList:Lcom/google/android/music/medialist/SongList;

    .line 1432
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$fAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSongList:Lcom/google/android/music/medialist/SongList;

    if-eqz v3, :cond_50

    .line 1433
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSongList:Lcom/google/android/music/medialist/SongList;

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/MediaPlaybackActivity;->access$2000(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->val$fAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-static {}, Lcom/google/android/music/MediaPlaybackActivity;->access$2100()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/medialist/SongList;->getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1434
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_50

    .line 1436
    :try_start_24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1437
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterId:J

    .line 1438
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1439
    .local v2, givenName:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, familyName:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mPictureUrl:Ljava/lang/String;

    .line 1441
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->getContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$2200(Lcom/google/android/music/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterName:Ljava/lang/String;

    .line 1442
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterFound:Z
    :try_end_4d
    .catchall {:try_start_24 .. :try_end_4d} :catchall_51

    .line 1445
    .end local v1           #familyName:Ljava/lang/String;
    .end local v2           #givenName:Ljava/lang/String;
    :cond_4d
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1449
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_50
    return-void

    .line 1445
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catchall_51
    move-exception v3

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1452
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterFound:Z

    if-eqz v0, :cond_48

    .line 1453
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterId:J
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2300(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 1454
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterId:J

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterId:J
    invoke-static {v0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$2302(Lcom/google/android/music/MediaPlaybackActivity;J)J

    .line 1455
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z
    invoke-static {v0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->access$2402(Lcom/google/android/music/MediaPlaybackActivity;Z)Z

    .line 1461
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2400(Lcom/google/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1462
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterFound:Z

    if-eqz v0, :cond_4e

    .line 1463
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$2000(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mPictureUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterId:J
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$2300(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v3

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setCurrentPlayQuickContactPicture(Landroid/content/Context;Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/MediaPlaybackActivity;->access$2500(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Context;Ljava/lang/String;J)V

    .line 1469
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->mSubmitterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    return-void

    .line 1458
    :cond_48
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z
    invoke-static {v0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->access$2402(Lcom/google/android/music/MediaPlaybackActivity;Z)Z

    goto :goto_1d

    .line 1466
    :cond_4e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$9;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setDefaultCurrentPlayQuickContactPicture()V
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2600(Lcom/google/android/music/MediaPlaybackActivity;)V

    goto :goto_3c
.end method
