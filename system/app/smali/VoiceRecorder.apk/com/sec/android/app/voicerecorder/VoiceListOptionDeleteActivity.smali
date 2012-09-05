.class public Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;
.super Landroid/app/Activity;
.source "VoiceListOptionDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;
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

.field mDeletePopup:Landroid/app/AlertDialog;

.field private mEventHandler:Landroid/os/Handler;

.field private mIsDatasetChanged:Z

.field private mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

.field private mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

.field private mListChange:Z

.field private mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListType:I

    .line 92
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mIsDatasetChanged:Z

    .line 119
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mEventHandler:Landroid/os/Handler;

    .line 245
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListChange:Z

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    .line 354
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$8;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListChange:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->setDeleteButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->selectAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->createDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->deleteFile()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

    return-object v0
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 3

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "DeleteFiles : closeProgressDialog"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->interrupt()V

    .line 348
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_25

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 352
    :cond_25
    monitor-exit p0

    return-void

    .line 343
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createDeleteDialog()Landroid/app/AlertDialog;
    .registers 6

    .prologue
    .line 280
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    const v1, 0x7f06001d

    .line 282
    .local v1, deleteStringId:I
    :goto_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, deleteDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f06001c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06002f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$7;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$6;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 280
    .end local v0           #deleteDialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #deleteStringId:I
    :cond_44
    const v1, 0x7f06001e

    goto :goto_c
.end method

.method private deleteFile()V
    .registers 4

    .prologue
    .line 266
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "deleteFile()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mProgressHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mOpThread:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$FileOperationThread;->start()V

    .line 275
    :cond_25
    return-void
.end method

.method private getviewIds()[I
    .registers 3

    .prologue
    .line 203
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    .line 205
    .local v0, viewIds:[I
    return-object v0

    .line 203
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
    .line 209
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 213
    .local v0, mSelectAllView:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$3;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v1, 0x7f090047

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 221
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$5;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    return-void
.end method

.method private selectAll()V
    .registers 6

    .prologue
    .line 248
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 251
    .local v1, isSelectAllChecked:Z
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 252
    if-eqz v1, :cond_2d

    .line 253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 254
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 258
    .end local v0           #i:I
    :cond_2d
    invoke-direct {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->setDeleteButtonEnabled(Z)V

    .line 260
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListChange:Z

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    .line 262
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListChange:Z

    .line 263
    return-void
.end method

.method private setDeleteButtonEnabled(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListButtons:Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRButtonsLeftRight;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 412
    return-void
.end method


# virtual methods
.method public listBinding()V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 154
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "listBinding()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, selection:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v11, builder:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.3ga\' or _data LIKE \'%.amr\')"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_data NOT LIKE \'%/.voice.3ga\' and _data NOT LIKE \'%/.voice.amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    :try_start_35
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCursor:Landroid/database/Cursor;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_45} :catch_54

    .line 174
    :goto_45
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5b

    .line 175
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "listBinding cusor null"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->finish()V

    .line 200
    :goto_53
    return-void

    .line 169
    :catch_54
    move-exception v12

    .line 170
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    iput-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_45

    .line 180
    .end local v12           #e:Ljava/lang/Exception;
    :cond_5b
    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "date_modified"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "duration"

    aput-object v1, v9, v0

    .line 182
    .local v9, cols:[Ljava/lang/String;
    new-instance v4, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    const v6, 0x7f030019

    iget v7, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListType:I

    iget-object v8, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->getviewIds()[I

    move-result-object v10

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->setCheckedIdArrayList(Ljava/util/ArrayList;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_53
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->finish()V

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 418
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 115
    const-string v0, "VoiceListOptionDeleteActivity"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ListType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListType:I

    .line 85
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->initView()V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->listBinding()V

    .line 88
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
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

    .line 398
    const v1, 0x7f09004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 399
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 401
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :goto_1d
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v5

    if-ne v1, v5, :cond_47

    move v1, v2

    :goto_2e
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    :goto_39
    invoke-direct {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->setDeleteButtonEnabled(Z)V

    .line 408
    return-void

    .line 404
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_47
    move v1, v3

    .line 406
    goto :goto_2e

    :cond_49
    move v2, v3

    .line 407
    goto :goto_39
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mIsDatasetChanged:Z

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mIsDatasetChanged:Z

    if-eqz v0, :cond_a

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->finish()V

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_29

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_27

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    :goto_26
    return-void

    .line 107
    :cond_27
    const/4 v0, 0x0

    goto :goto_23

    .line 109
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->finish()V

    goto :goto_26
.end method
