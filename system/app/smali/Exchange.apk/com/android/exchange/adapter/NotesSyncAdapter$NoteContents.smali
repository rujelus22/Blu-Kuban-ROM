.class Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
.super Ljava/lang/Object;
.source "NotesSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/NotesSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteContents"
.end annotation


# instance fields
.field private final mAccountKey:J

.field public final mAccountType:Ljava/lang/String;

.field private mBodyData:Ljava/lang/String;

.field private mBodySize:J

.field private mBodyTruncated:Z

.field private mBodyType:I

.field private mCategories:Ljava/lang/String;

.field private mClientID:Ljava/lang/String;

.field private mDeletedMsgRecieved:Z

.field public final mDisplayName:Ljava/lang/String;

.field public final mEmailAddress:Ljava/lang/String;

.field private mFlagNoteLoaded:Z

.field private mFlagNoteMoved:Z

.field private mFlagNoteRead:Z

.field private mHtmlText:Ljava/lang/String;

.field private mLastModifyDate:Ljava/lang/String;

.field private mMessageForeignKey:J

.field private mModifiedMsgRecieved:Z

.field private mNewMsgRecieved:Z

.field private mNewNoteCount:J

.field private mPlanText:Ljava/lang/String;

.field private mServerIDNote:Ljava/lang/String;

.field private mServerTimeStamp:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mSyncNeededFlag:I

.field final synthetic this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "account_key"
    .parameter "accountType"
    .parameter "displayName"
    .parameter "emailAddress"

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-wide p2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mAccountKey:J

    .line 615
    iput-object p4, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mAccountType:Ljava/lang/String;

    .line 616
    iput-object p5, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDisplayName:Ljava/lang/String;

    .line 617
    iput-object p6, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mEmailAddress:Ljava/lang/String;

    .line 619
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->init()V

    .line 620
    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 623
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mServerIDNote:Ljava/lang/String;

    .line 624
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSubject:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mLastModifyDate:Ljava/lang/String;

    .line 626
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mHtmlText:Ljava/lang/String;

    .line 627
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mPlanText:Ljava/lang/String;

    .line 628
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    .line 629
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mFlagNoteRead:Z

    .line 630
    iput-wide v3, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mNewNoteCount:J

    .line 631
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mServerTimeStamp:Ljava/lang/String;

    .line 632
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mFlagNoteLoaded:Z

    .line 633
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mClientID:Ljava/lang/String;

    .line 634
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mFlagNoteMoved:Z

    .line 635
    iput v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSyncNeededFlag:I

    .line 636
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyData:Ljava/lang/String;

    .line 637
    iput-wide v3, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodySize:J

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyType:I

    .line 639
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyTruncated:Z

    .line 640
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mMessageForeignKey:J

    .line 641
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mNewMsgRecieved:Z

    .line 642
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mModifiedMsgRecieved:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDeletedMsgRecieved:Z

    .line 645
    return-void
.end method


# virtual methods
.method public checkDeletedMsgRecieved()Z
    .registers 2

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDeletedMsgRecieved:Z

    return v0
.end method

.method public checkModifiedMsgRecieved()Z
    .registers 2

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mModifiedMsgRecieved:Z

    return v0
.end method

.method public checkNewMsgRecieved()Z
    .registers 2

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mNewMsgRecieved:Z

    return v0
.end method

.method public getBodyData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyData:Ljava/lang/String;

    return-object v0
.end method

.method public getBodySize()J
    .registers 3

    .prologue
    .line 684
    iget-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodySize:J

    return-wide v0
.end method

.method public getBodyTruncated()Z
    .registers 2

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyTruncated:Z

    return v0
.end method

.method public getBodyType()I
    .registers 2

    .prologue
    .line 704
    iget v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyType:I

    return v0
.end method

.method public getMessageForeignKey()J
    .registers 3

    .prologue
    .line 672
    iget-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mMessageForeignKey:J

    return-wide v0
.end method

.method public getSyncNeededFlag()I
    .registers 2

    .prologue
    .line 776
    iget v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSyncNeededFlag:I

    return v0
.end method

.method public getmAccountKey()J
    .registers 3

    .prologue
    .line 720
    iget-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mAccountKey:J

    return-wide v0
.end method

.method public getmCategories()Ljava/lang/String;
    .registers 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    return-object v0
.end method

.method public getmClientID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mClientID:Ljava/lang/String;

    return-object v0
.end method

.method public getmDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getmLastModifyDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mLastModifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getmServerIDNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mServerIDNote:Ljava/lang/String;

    return-object v0
.end method

.method public getmSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyData(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyData:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public setBodySize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 680
    iput-wide p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodySize:J

    .line 681
    return-void
.end method

.method public setBodyTruncated(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyTruncated:Z

    .line 697
    return-void
.end method

.method public setBodyType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 692
    iput p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyType:I

    .line 693
    return-void
.end method

.method public setDeletedMsgRecieved(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDeletedMsgRecieved:Z

    .line 669
    return-void
.end method

.method public setModifiedMsgRecieved(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mModifiedMsgRecieved:Z

    .line 661
    return-void
.end method

.method public setNewMsgRecieved(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 652
    iput-boolean p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mNewMsgRecieved:Z

    .line 653
    return-void
.end method

.method public setSyncNeededFlag(I)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 772
    iput p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSyncNeededFlag:I

    .line 773
    return-void
.end method

.method public setmCategories(Ljava/lang/String;)V
    .registers 4
    .parameter "categories"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 781
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    .line 786
    :goto_6
    return-void

    .line 783
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    goto :goto_6
.end method

.method public setmClientID(Ljava/lang/String;)V
    .registers 2
    .parameter "mClientID"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mClientID:Ljava/lang/String;

    .line 826
    return-void
.end method

.method public setmLastModifyDate(Ljava/lang/String;)V
    .registers 2
    .parameter "mLastModifyDate"

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mLastModifyDate:Ljava/lang/String;

    .line 749
    return-void
.end method

.method public setmServerIDNote(Ljava/lang/String;)V
    .registers 2
    .parameter "mServerIDNote"

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mServerIDNote:Ljava/lang/String;

    .line 733
    return-void
.end method

.method public setmSubject(Ljava/lang/String;)V
    .registers 2
    .parameter "mSubject"

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSubject:Ljava/lang/String;

    .line 741
    return-void
.end method

.method public updateMessageForeignKey(J)V
    .registers 3
    .parameter "key"

    .prologue
    .line 676
    iput-wide p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mMessageForeignKey:J

    .line 677
    return-void
.end method
