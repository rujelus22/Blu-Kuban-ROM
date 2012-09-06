.class Lcom/google/android/music/athome/AtHomePlaybackActivity$5;
.super Ljava/lang/Object;
.source "AtHomePlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateCurrentPlaying()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPictureUrl:Ljava/lang/String;

.field private mSubmitterFound:Z

.field private mSubmitterId:J

.field private mSubmitterName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

.field final synthetic val$fAudioId:Lcom/google/android/music/dl/ContentIdentifier;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    iput-object p2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->val$fAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterFound:Z

    .line 601
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mUnknownSubmitter:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$1900(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    .line 605
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->val$fAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v3, :cond_48

    .line 606
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mMediaList:Lcom/google/android/music/athome/AtHomeSongList;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$800(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/athome/AtHomeSongList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$600(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->val$fAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-static {}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2000()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/athome/AtHomeSongList;->getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 607
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_48

    .line 609
    :try_start_1c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 610
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterId:J

    .line 611
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, givenName:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, familyName:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mPictureUrl:Ljava/lang/String;

    .line 614
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->getContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2, v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2100(Lcom/google/android/music/athome/AtHomePlaybackActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterName:Ljava/lang/String;

    .line 615
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterFound:Z
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_49

    .line 618
    .end local v1           #familyName:Ljava/lang/String;
    .end local v2           #givenName:Ljava/lang/String;
    :cond_45
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 622
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_48
    return-void

    .line 618
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catchall_49
    move-exception v3

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 625
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterFound:Z

    if-eqz v0, :cond_48

    .line 626
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterId:J
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2200(Lcom/google/android/music/athome/AtHomePlaybackActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 627
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterId:J

    #setter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterId:J
    invoke-static {v0, v1, v2}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2202(Lcom/google/android/music/athome/AtHomePlaybackActivity;J)J

    .line 628
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #setter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z
    invoke-static {v0, v4}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2302(Lcom/google/android/music/athome/AtHomePlaybackActivity;Z)Z

    .line 634
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2300(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 635
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterFound:Z

    if-eqz v0, :cond_4e

    .line 636
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$600(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mPictureUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterId:J
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2200(Lcom/google/android/music/athome/AtHomePlaybackActivity;)J

    move-result-wide v3

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->setCurrentPlayQuickContactPicture(Landroid/content/Context;Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2400(Lcom/google/android/music/athome/AtHomePlaybackActivity;Landroid/content/Context;Ljava/lang/String;J)V

    .line 642
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mSubmitter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2600(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->mSubmitterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    return-void

    .line 631
    :cond_48
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #setter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z
    invoke-static {v0, v4}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2302(Lcom/google/android/music/athome/AtHomePlaybackActivity;Z)Z

    goto :goto_1d

    .line 639
    :cond_4e
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$5;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #calls: Lcom/google/android/music/athome/AtHomePlaybackActivity;->setDefaultCurrentPlayQuickContactPicture()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$2500(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V

    goto :goto_3c
.end method
