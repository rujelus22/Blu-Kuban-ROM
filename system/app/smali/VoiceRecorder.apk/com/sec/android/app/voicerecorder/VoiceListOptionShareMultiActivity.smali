.class public Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;
.super Landroid/app/Activity;
.source "VoiceListOptionShareMultiActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;
    }
.end annotation


# instance fields
.field private mCheckedIdArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mEnabledItemCount:I

.field private mEventHandler:Landroid/os/Handler;

.field private mIsDatasetChanged:Z

.field private mIsForMMS:Z

.field private mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

.field private mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

.field private mListChange:Z

.field private mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mToast:Landroid/widget/Toast;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCursor:Landroid/database/Cursor;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    .line 65
    iput v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListType:I

    .line 95
    iput v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mEnabledItemCount:I

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mIsDatasetChanged:Z

    .line 150
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mEventHandler:Landroid/os/Handler;

    .line 283
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListChange:Z

    .line 402
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$6;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListChange:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->setShareButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getEnabledItemCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->selectAll()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->buttonShare()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

    return-object v0
.end method

.method private buttonShare()V
    .registers 4

    .prologue
    .line 444
    const-string v0, "VoiceListOptionShareMultiActivity"

    const-string v1, "buttonShare()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->start()V

    .line 453
    :cond_25
    return-void
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 3

    .prologue
    .line 388
    monitor-enter p0

    :try_start_1
    const-string v0, "VoiceListOptionShareMultiActivity"

    const-string v1, "SharedFiles : closeProgressDialog"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$FileSharedThread;->interrupt()V

    .line 396
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 400
    :cond_2d
    monitor-exit p0

    return-void

    .line 388
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getEnabledItemCount()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mIsForMMS:Z

    if-eqz v0, :cond_41

    .line 103
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mEnabledItemCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3e

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v6, builder:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.amr\')"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_data NOT LIKE \'%/.voice.3ga\' and _data NOT LIKE \'%/.voice.amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date_modified DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 115
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mEnabledItemCount:I

    .line 122
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3e
    :goto_3e
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mEnabledItemCount:I

    return v0

    .line 118
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    if-eqz v0, :cond_3e

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mEnabledItemCount:I

    goto :goto_3e
.end method

.method private getviewIds()[I
    .registers 3

    .prologue
    .line 246
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    .line 248
    .local v0, viewIds:[I
    return-object v0

    .line 246
    nop

    :array_8
    .array-data 0x4
        0x41t 0x0t 0x9t 0x7ft
        0x42t 0x0t 0x9t 0x7ft
        0x43t 0x0t 0x9t 0x7ft
        0x4bt 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private initView()V
    .registers 4

    .prologue
    .line 252
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListView:Landroid/widget/ListView;

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 256
    .local v0, mSelectAllView:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$3;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v1, 0x7f090047

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 265
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$4;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$5;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void
.end method

.method private listBinding()V
    .registers 18

    .prologue
    .line 186
    const-string v1, "VoiceListOptionShareMultiActivity"

    const-string v2, "listBinding()"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, selection:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v14, builder:Ljava/lang/StringBuilder;
    const-string v1, "(_data LIKE \'%.3ga\' or _data LIKE \'%.amr\')"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and (_data NOT LIKE \'%/.voice.3ga\' and _data NOT LIKE \'%/.voice.amr\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and (mime_type LIKE \'audio/3gpp\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and (_size != \'0\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v16, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mIsForMMS:Z

    if-eqz v1, :cond_4c

    .line 203
    const-string v1, "mime_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_4c
    const-string v1, "date_modified"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, oderBy:Ljava/lang/String;
    :try_start_5d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCursor:Landroid/database/Cursor;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6d} :catch_7e

    .line 220
    :goto_6d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_88

    .line 221
    const-string v1, "VoiceListOptionShareMultiActivity"

    const-string v2, "listBinding cusor null"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->finish()V

    .line 243
    :goto_7d
    return-void

    .line 214
    :catch_7e
    move-exception v15

    .line 215
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_6d

    .line 226
    .end local v15           #e:Ljava/lang/Exception;
    :cond_88
    const/4 v1, 0x4

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v12, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v12, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v12, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v12, v1

    .line 228
    .local v12, cols:[Ljava/lang/String;
    new-instance v7, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    const v9, 0x7f030019

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListType:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getviewIds()[I

    move-result-object v13

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->setCheckedIdArrayList(Ljava/util/ArrayList;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mIsForMMS:Z

    if-nez v1, :cond_ec

    const/4 v1, 0x1

    :goto_cf
    invoke-virtual {v2, v1}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->set3GPPEnabled(Z)V

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7d

    .line 230
    :cond_ec
    const/4 v1, 0x0

    goto :goto_cf
.end method

.method private selectAll()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 289
    .local v9, isSelectAllChecked:Z
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    if-eqz v9, :cond_a6

    .line 291
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mIsForMMS:Z

    if-eqz v0, :cond_8b

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v6, builder:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.amr\')"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_data NOT LIKE \'%/.voice.3ga\' and _data NOT LIKE \'%/.voice.amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date_modified DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 301
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 302
    .local v10, mimeTypeIndex:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_a6

    .line 303
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 304
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_81
    const-string v0, "VoiceListOptionShareMultiActivity"

    const-string v1, "SelA"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_88
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 312
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #i:I
    .end local v10           #mimeTypeIndex:I
    :cond_8b
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_8c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_a6

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v8, v8, 0x1

    goto :goto_8c

    .line 317
    .end local v8           #i:I
    :cond_a6
    invoke-direct {p0, v9}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->setShareButtonEnabled(Z)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListChange:Z

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListChange:Z

    .line 323
    return-void
.end method

.method private setShareButtonEnabled(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 513
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->finish()V

    .line 518
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 519
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ListType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListType:I

    .line 86
    const-string v1, "isForMMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mIsForMMS:Z

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->initView()V

    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->listBinding()V

    .line 91
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 491
    const v1, 0x7f09004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 492
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 493
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 502
    :goto_14
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 503
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :goto_23
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getEnabledItemCount()I

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getEnabledItemCount()I

    move-result v5

    if-ne v1, v5, :cond_64

    move v1, v2

    :goto_38
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    :goto_43
    invoke-direct {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->setShareButtonEnabled(Z)V

    .line 509
    return-void

    .line 495
    :cond_47
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_54

    .line 496
    const v1, 0x7f060023

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mToast:Landroid/widget/Toast;

    .line 499
    :cond_54
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 505
    :cond_5a
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_64
    move v1, v3

    .line 507
    goto :goto_38

    :cond_66
    move v2, v3

    .line 508
    goto :goto_43
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mIsDatasetChanged:Z

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mIsDatasetChanged:Z

    if-eqz v0, :cond_a

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->finish()V

    .line 140
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getEnabledItemCount()I

    move-result v0

    if-eqz v0, :cond_22

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getEnabledItemCount()I

    move-result v2

    if-ne v0, v2, :cond_2e

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2d

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->finish()V

    .line 146
    :cond_2d
    return-void

    .line 141
    :cond_2e
    const/4 v0, 0x0

    goto :goto_1f
.end method
