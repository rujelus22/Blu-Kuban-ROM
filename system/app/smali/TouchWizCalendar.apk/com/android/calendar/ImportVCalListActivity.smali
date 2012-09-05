.class public Lcom/android/calendar/ImportVCalListActivity;
.super Landroid/app/Activity;
.source "ImportVCalListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ImportVCalListActivity$EventAdapter;,
        Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;,
        Lcom/android/calendar/ImportVCalListActivity$CancelListener;
    }
.end annotation


# instance fields
.field private EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

.field private TAG:Ljava/lang/String;

.field private countChecked:I

.field private finish:Z

.field private headerCount:I

.field private mActivity:Landroid/app/Activity;

.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mCancelListener:Lcom/android/calendar/ImportVCalListActivity$CancelListener;

.field private mContentValues:Landroid/content/ContentValues;

.field private mEmptyView:Landroid/view/View;

.field private mEventIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListView:Landroid/widget/ListView;

.field private mFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLeftSoftkey:Landroid/widget/Button;

.field private mNewLine:Ljava/lang/String;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mProgressCount:I

.field private mSaveRunnable:Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;

.field private mState:I

.field private mUncheckItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVCalManager:Lcom/android/calendar/vcal/VCalManager;

.field private mVcal:Lcom/android/calendar/ImportExportVCalendar;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const-string v0, "\n"

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mNewLine:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mUncheckItems:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;-><init>(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$1;)V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mSaveRunnable:Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mHandler:Landroid/os/Handler;

    .line 94
    iput v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgressCount:I

    .line 96
    iput v2, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    .line 102
    const-string v0, "ExportVCalListActivity"

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->TAG:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mVcal:Lcom/android/calendar/ImportExportVCalendar;

    .line 296
    new-instance v0, Lcom/android/calendar/ImportVCalListActivity$CancelListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/ImportVCalListActivity$CancelListener;-><init>(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$1;)V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mCancelListener:Lcom/android/calendar/ImportVCalListActivity$CancelListener;

    .line 469
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/vcal/VCalManager;)Lcom/android/calendar/vcal/VCalManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/ImportVCalListActivity;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity;->parseVCalendar(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/ImportVCalListActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity;->updateState(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/calendar/ImportVCalListActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/ImportVCalListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/calendar/ImportVCalListActivity;->finish:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/calendar/ImportVCalListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/calendar/ImportVCalListActivity;->finish:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/ImportVCalListActivity;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity;->importVCalendar(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mUncheckItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/ImportVCalListActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$EventAdapter;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/ImportVCalListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/calendar/ImportVCalListActivity;->headerCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportExportVCalendar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mVcal:Lcom/android/calendar/ImportExportVCalendar;

    return-object v0
.end method

.method private importVCalendar(I)Z
    .registers 5
    .parameter "index"

    .prologue
    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, currentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 288
    const/4 v1, 0x0

    .line 293
    :goto_14
    return v1

    .line 290
    :cond_15
    new-instance v1, Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    .line 291
    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->insertEventDB()Landroid/net/Uri;

    .line 293
    const/4 v1, 0x1

    goto :goto_14
.end method

.method private initResourceRefs()V
    .registers 6

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/ImportVCalListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, allitem:Landroid/view/View;
    const v2, 0x7f0f000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, allText:Landroid/widget/TextView;
    const v2, 0x7f0a00cc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 143
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 144
    const v2, 0x7f0f000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    .line 146
    new-instance v2, Lcom/android/calendar/ImportVCalListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/ImportVCalListActivity$1;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 170
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iput v2, p0, Lcom/android/calendar/ImportVCalListActivity;->headerCount:I

    .line 173
    return-void
.end method

.method private initSDLists()V
    .registers 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/calendar/ImportVCalListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/ImportVCalListActivity$2;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    return-void
.end method

.method private parseVCalendar(Ljava/lang/String;)Z
    .registers 3
    .parameter "data"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/vcal/VCalManager;->parseVCalendar_Backup(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mContentValues:Landroid/content/ContentValues;

    .line 281
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mContentValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updateState(I)V
    .registers 6
    .parameter "state"

    .prologue
    const v3, 0x7f0a0197

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 441
    iget v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mState:I

    if-ne v0, p1, :cond_b

    .line 467
    :goto_a
    return-void

    .line 445
    :cond_b
    iput p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mState:I

    .line 446
    packed-switch p1, :pswitch_data_54

    goto :goto_a

    .line 448
    :pswitch_11
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 450
    invoke-virtual {p0, v3}, Lcom/android/calendar/ImportVCalListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/calendar/ImportVCalListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_a

    .line 454
    :pswitch_26
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    invoke-virtual {p0, v3}, Lcom/android/calendar/ImportVCalListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/calendar/ImportVCalListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_a

    .line 460
    :pswitch_3b
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    const v0, 0x7f0a0198

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_a

    .line 446
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_11
        :pswitch_26
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->requestWindowFeature(I)Z

    .line 111
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setContentView(I)V

    .line 113
    iput-object p0, p0, Lcom/android/calendar/ImportVCalListActivity;->mActivity:Landroid/app/Activity;

    .line 115
    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    .line 116
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEmptyView:Landroid/view/View;

    .line 117
    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->updateState(I)V

    .line 122
    new-instance v0, Lcom/android/calendar/ImportExportVCalendar;

    invoke-direct {v0}, Lcom/android/calendar/ImportExportVCalendar;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mVcal:Lcom/android/calendar/ImportExportVCalendar;

    .line 124
    invoke-direct {p0}, Lcom/android/calendar/ImportVCalListActivity;->initResourceRefs()V

    .line 125
    invoke-direct {p0}, Lcom/android/calendar/ImportVCalListActivity;->initSDLists()V

    .line 126
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x1

    .line 325
    move-object v0, p0

    .line 327
    .local v0, context:Landroid/content/Context;
    sparse-switch p1, :sswitch_data_52

    .line 365
    const/4 v1, 0x0

    :goto_6
    return-object v1

    .line 329
    :sswitch_7
    iget-object v3, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 330
    .local v2, progressMax:I
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 331
    .local v1, progress:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/calendar/ImportVCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 335
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 337
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgressCount:I

    goto :goto_6

    .line 342
    .end local v1           #progress:Landroid/app/ProgressDialog;
    .end local v2           #progressMax:I
    :sswitch_2d
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a008e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00b6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0076

    new-instance v5, Lcom/android/calendar/ImportVCalListActivity$3;

    invoke-direct {v5, p0}, Lcom/android/calendar/ImportVCalListActivity$3;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_6

    .line 327
    nop

    :sswitch_data_52
    .sparse-switch
        0x3ed -> :sswitch_7
        0x3f2 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 236
    const v6, 0x7f0f001b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 238
    .local v3, mCheckbox:Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2a

    move v0, v4

    .line 239
    .local v0, checked:Z
    :goto_12
    const/4 v1, 0x1

    .line 241
    .local v1, count:I
    if-nez v0, :cond_2c

    .line 242
    iget v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    .line 243
    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 257
    :goto_20
    iget v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    if-lez v6, :cond_5a

    .line 258
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    :goto_29
    return-void

    .end local v0           #checked:Z
    .end local v1           #count:I
    :cond_2a
    move v0, v5

    .line 238
    goto :goto_12

    .line 245
    .restart local v0       #checked:Z
    .restart local v1       #count:I
    :cond_2c
    iget v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    .line 246
    iget v2, p0, Lcom/android/calendar/ImportVCalListActivity;->headerCount:I

    .local v2, index:I
    :goto_34
    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-gt v2, v6, :cond_49

    .line 247
    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 246
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 251
    :cond_49
    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ne v1, v6, :cond_56

    .line 252
    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 254
    :cond_56
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_20

    .line 260
    .end local v2           #index:I
    :cond_5a
    iget-object v4, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_29
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/calendar/ImportVCalListActivity;->setIntent(Landroid/content/Intent;)V

    .line 132
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->updateState(I)V

    .line 134
    invoke-direct {p0}, Lcom/android/calendar/ImportVCalListActivity;->initResourceRefs()V

    .line 135
    invoke-direct {p0}, Lcom/android/calendar/ImportVCalListActivity;->initSDLists()V

    .line 136
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 413
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 311
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 313
    packed-switch p1, :pswitch_data_22

    .line 321
    .end local p2
    :goto_6
    return-void

    .line 315
    .restart local p2
    :pswitch_7
    check-cast p2, Landroid/app/ProgressDialog;

    .end local p2
    iput-object p2, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 316
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgressCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 317
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mCancelListener:Lcom/android/calendar/ImportVCalListActivity$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mSaveRunnable:Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 313
    nop

    :pswitch_data_22
    .packed-switch 0x3ed
        :pswitch_7
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 408
    return-void
.end method

.method public readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .parameter "file"

    .prologue
    .line 417
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 418
    .local v3, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 419
    .local v2, ir:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 421
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 424
    .local v1, buf:Ljava/lang/StringBuffer;
    :goto_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, tmp:Ljava/lang/String;
    if-eqz v4, :cond_27

    .line 425
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 434
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #ir:Ljava/io/InputStreamReader;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #tmp:Ljava/lang/String;
    :catch_24
    move-exception v5

    .line 437
    :goto_25
    const/4 v5, 0x0

    :goto_26
    return-object v5

    .line 428
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v2       #ir:Ljava/io/InputStreamReader;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #tmp:Ljava/lang/String;
    :cond_27
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 429
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 430
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_33} :catch_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object v5

    goto :goto_26

    .line 435
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #ir:Ljava/io/InputStreamReader;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #tmp:Ljava/lang/String;
    :catch_35
    move-exception v5

    goto :goto_25
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .registers 7
    .parameter "target"

    .prologue
    .line 264
    iget v1, p0, Lcom/android/calendar/ImportVCalListActivity;->headerCount:I

    .local v1, index:I
    :goto_2
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_1f

    .line 265
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 267
    .local v0, flag:Z
    if-eqz v0, :cond_1c

    .line 268
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 270
    .end local v0           #flag:Z
    :cond_1f
    const/16 v2, 0x3ed

    invoke-virtual {p0, v2}, Lcom/android/calendar/ImportVCalListActivity;->showDialog(I)V

    .line 271
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/calendar/ImportVCalListActivity;->finish()V

    .line 275
    return-void
.end method
