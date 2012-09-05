.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;
.super Landroid/app/Activity;
.source "AxT9optionsAutoSubsDel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;,
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;,
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;
    }
.end annotation


# static fields
.field private static mSelectall:Z


# instance fields
.field private ASDB_BUF:[B

.field private final ASDB_SIZE:I

.field private final ASDB_WORD_SIZE:I

.field private final DEBUG:Z

.field private DeletingWordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final INFO:Z

.field LengthOfShortcutBuf:S

.field LengthOfSubstitutionBuf:S

.field RowTouchListener:Landroid/view/View$OnTouchListener;

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_SCROLL_LIMIT:I

.field forward:B

.field private mAutoSubSet:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoSubsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/axt9/widget/DioListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mButton:Landroid/widget/Button;

.field mConfirmDlg:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field mCount:[S

.field mData:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

.field private mDisplayView:Landroid/widget/ListView;

.field private mKeyArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionY:I

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field private mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

.field private mListHeader_LineaLayout:Landroid/widget/LinearLayout;

.field mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

.field private mSelectallArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectallView:Landroid/widget/ListView;

.field private mTouchDownItem:Landroid/widget/LinearLayout;

.field private mTouchSlop:I

.field private mUnCheckSelectAll:Z

.field private mWordlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;",
            ">;"
        }
    .end annotation
.end field

.field private final ms_ASDB_FILE_NAME:Ljava/lang/String;

.field shortcutTouchListener:Landroid/view/View$OnTouchListener;

.field shortcutbuf:[S

.field shortcutlengthbuf:[S

.field substitutionbuf:[S

.field substitutionlengthbuf:[S

.field private final useTwWidget:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectall:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x48

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DEBUG:Z

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->INFO:Z

    .line 70
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->TAG:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->useTwWidget:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    .line 80
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_WORD_SIZE:I

    .line 81
    const/16 v0, 0x2800

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_SIZE:I

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mUnCheckSelectAll:Z

    .line 86
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->forward:B

    .line 88
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCount:[S

    .line 90
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutbuf:[S

    .line 91
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutlengthbuf:[S

    .line 92
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->LengthOfShortcutBuf:S

    .line 93
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionbuf:[S

    .line 94
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionlengthbuf:[S

    .line 95
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->LengthOfSubstitutionBuf:S

    .line 97
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getASDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    .line 98
    const-string v0, "xT9ASdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ms_ASDB_FILE_NAME:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubsItems:Ljava/util/ArrayList;

    .line 102
    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    .line 110
    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListHeader_LineaLayout:Landroid/widget/LinearLayout;

    .line 117
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLastMotionY:I

    .line 118
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchSlop:I

    .line 122
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->TOUCH_SCROLL_LIMIT:I

    .line 335
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->RowTouchListener:Landroid/view/View$OnTouchListener;

    .line 355
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutTouchListener:Landroid/view/View$OnTouchListener;

    .line 419
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 463
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 748
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$8;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectall:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectall:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->deleteEntry()V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLastMotionY:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLastMotionY:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    return-object v0
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .registers 6
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 395
    .local v0, i:I
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_12

    .line 396
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 398
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .registers 5
    .parameter "string"

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 383
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 384
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 387
    :cond_17
    return-object v1
.end method

.method private deleteEntry()V
    .registers 6

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 473
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->deleteEntry(Ljava/lang/String;)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 475
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->writeDBdataToFile()V

    .line 476
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "Delete is Done"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setResult(ILandroid/content/Intent;)V

    .line 477
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->finish()V

    .line 478
    return-void
.end method

.method private deleteEntry(Ljava/lang/String;)V
    .registers 5
    .parameter "shortcut"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 484
    .local v0, errorcode:S
    if-eqz v0, :cond_f

    .line 488
    :cond_f
    return-void
.end method

.method private getEntryfromAutoSubs()Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 406
    new-instance v7, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v7}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 408
    .local v7, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutbuf:[S

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->LengthOfShortcutBuf:S

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutlengthbuf:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionbuf:[S

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->LengthOfSubstitutionBuf:S

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionlengthbuf:[S

    invoke-static/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBGetEntry([SS[S[SS[SB)S

    move-result v8

    .line 409
    .local v8, errorcode:S
    if-eqz v8, :cond_18

    .line 413
    :cond_18
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutbuf:[S

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutlengthbuf:[S

    aget-short v1, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setShortcut(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionbuf:[S

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionlengthbuf:[S

    aget-short v1, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setSubstitution(Ljava/lang/String;)V

    .line 416
    return-object v7
.end method

.method private make_AutoSubstitution_CheckList()V
    .registers 5

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setEntry()V

    .line 245
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    .line 246
    const v1, 0x7f07003a

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    .line 249
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 250
    .local v0, substitution_top:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListHeader_LineaLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 287
    return-void
.end method

.method private make_SelectAll_CheckButton()V
    .registers 6

    .prologue
    .line 181
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 183
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectall:Z

    .line 185
    const v2, 0x7f03002a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListHeader_LineaLayout:Landroid/widget/LinearLayout;

    .line 187
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListHeader_LineaLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070066

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallView:Landroid/widget/ListView;

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, selectallString:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallArray:Ljava/util/ArrayList;

    .line 190
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    const v3, 0x7f03001e

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    .line 192
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    return-void
.end method

.method private readDBdataFromFile()V
    .registers 11

    .prologue
    .line 533
    const-string v0, ""

    .line 537
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 539
    const-string v8, "xT9DB"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 540
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 541
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 542
    const/4 v4, 0x0

    .line 543
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 545
    .local v7, returnOfRead:I
    :try_start_18
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_52

    .line 546
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1d
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_76
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_79

    move-result v7

    .line 553
    if-eqz v5, :cond_28

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v4, v5

    .line 567
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_29
    :goto_29
    return-void

    .line 554
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_2a
    move-exception v2

    .line 555
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 557
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_29

    .line 547
    .end local v2           #e:Ljava/io/IOException;
    :catch_30
    move-exception v2

    .line 548
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_31
    :try_start_31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File was removed durning test"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_61

    .line 553
    if-eqz v4, :cond_29

    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_29

    .line 554
    :catch_4d
    move-exception v2

    .line 555
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 549
    .end local v2           #e:Ljava/io/IOException;
    :catch_52
    move-exception v2

    .line 550
    .restart local v2       #e:Ljava/io/IOException;
    :goto_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    .line 553
    if-eqz v4, :cond_29

    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_29

    .line 554
    :catch_5c
    move-exception v2

    .line 555
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 552
    .end local v2           #e:Ljava/io/IOException;
    :catchall_61
    move-exception v8

    .line 553
    :goto_62
    if-eqz v4, :cond_67

    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 556
    :cond_67
    :goto_67
    throw v8

    .line 554
    :catch_68
    move-exception v2

    .line 555
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 561
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_6d
    :try_start_6d
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_29

    .line 562
    :catch_71
    move-exception v3

    .line 563
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 552
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_76
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_62

    .line 549
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_79
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_53

    .line 547
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7c
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_31
.end method

.method private readDataFromDB()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 299
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 301
    .local v0, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCount:[S

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v1

    .line 302
    .local v1, errorcode:S
    if-eqz v1, :cond_f

    .line 321
    :cond_e
    :goto_e
    return-void

    .line 306
    :cond_f
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCount:[S

    aget-short v3, v3, v6

    if-lez v3, :cond_e

    .line 308
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    if-nez v3, :cond_4b

    .line 309
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    .line 314
    :goto_25
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_26
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCount:[S

    aget-short v3, v3, v6

    if-ge v2, v3, :cond_51

    .line 315
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getEntryfromAutoSubs()Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    move-result-object v0

    .line 316
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 311
    .end local v2           #idx:I
    :cond_4b
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    goto :goto_25

    .line 319
    .restart local v2       #idx:I
    :cond_51
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_e
.end method

.method private setButtonEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 290
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    .line 291
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 293
    return-void
.end method

.method private setEntry()V
    .registers 6

    .prologue
    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    .line 618
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->readDataFromDB()V

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    .line 620
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_12
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 621
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mData:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

    .line 622
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mData:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 624
    :cond_41
    return-void
.end method

.method private writeDBdataToFile()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 492
    const-string v0, ""

    .line 496
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 498
    const-string v7, "xT9DB"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 499
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 500
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_19

    .line 502
    :try_start_16
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_35

    .line 507
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 508
    const/4 v5, 0x0

    .line 510
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_26} :catch_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_4f

    .line 511
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_26
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x2800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2e} :catch_70
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_6d

    .line 517
    if-eqz v6, :cond_73

    .line 519
    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3a

    move-object v5, v6

    .line 528
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    return-void

    .line 503
    :catch_35
    move-exception v3

    .line 504
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 520
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v2

    .line 521
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 522
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 512
    .end local v2           #e:Ljava/io/IOException;
    :catch_40
    move-exception v2

    .line 513
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5e

    .line 517
    if-eqz v5, :cond_34

    .line 519
    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_34

    .line 520
    :catch_4a
    move-exception v2

    .line 521
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 514
    .end local v2           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v2

    .line 515
    .restart local v2       #e:Ljava/io/IOException;
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    .line 517
    if-eqz v5, :cond_34

    .line 519
    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_34

    .line 520
    :catch_59
    move-exception v2

    .line 521
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 517
    .end local v2           #e:Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 519
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 522
    :cond_64
    :goto_64
    throw v7

    .line 520
    :catch_65
    move-exception v2

    .line 521
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 517
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_6a
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 514
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_6d
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_50

    .line 512
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_70
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_41

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_73
    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_34
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    iput-object p0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    sget-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-eqz v2, :cond_4d

    .line 141
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->readDBdataFromFile()V

    .line 143
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    const/16 v3, 0x2800

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v1

    .line 144
    .local v1, errorcode:S
    if-eqz v1, :cond_4d

    .line 149
    .end local v1           #errorcode:S
    :cond_4d
    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchSlop:I

    .line 155
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    .line 156
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    .line 159
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->make_SelectAll_CheckButton()V

    .line 163
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->make_AutoSubstitution_CheckList()V

    .line 177
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setButtonEnabled(Z)V

    .line 178
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 572
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 573
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 325
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 327
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setResult(I)V

    .line 328
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->finish()V

    .line 329
    const/4 v0, 0x1

    .line 331
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 579
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_9

    .line 580
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->hide()V

    .line 583
    :cond_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 584
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "inSettings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->sendBroadcast(Landroid/content/Intent;)V

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, errorcode:S
    sget-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v2, :cond_28

    .line 588
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->readDBdataFromFile()V

    .line 590
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    const/16 v3, 0x2800

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    .line 591
    if-eqz v0, :cond_28

    .line 597
    :cond_28
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    .line 598
    if-eqz v0, :cond_2e

    .line 601
    :cond_2e
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    .line 602
    if-eqz v0, :cond_34

    .line 606
    :cond_34
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 607
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setButtonEnabled(Z)V

    .line 612
    :goto_40
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 613
    return-void

    .line 609
    :cond_44
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setButtonEnabled(Z)V

    goto :goto_40
.end method
