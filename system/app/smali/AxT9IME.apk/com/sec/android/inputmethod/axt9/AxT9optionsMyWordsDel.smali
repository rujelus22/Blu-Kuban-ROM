.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;
.super Landroid/app/Activity;
.source "AxT9optionsMyWordsDel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;
    }
.end annotation


# static fields
.field private static mSelectall:Z


# instance fields
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

.field LengthOfWordsbuf:S

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_SCROLL_LIMIT:I

.field private UDB_BUF:[B

.field private final UDB_SIZE:I

.field private final UDB_WORD_SIZE:I

.field forward:B

.field lengthbuf:[S

.field private mButton:Landroid/widget/Button;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field mCount:[S

.field mDeleteDlg:Landroid/app/AlertDialog;

.field private mDisplayView:Landroid/widget/ListView;

.field private mLastMotionY:I

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field private mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

.field private mListHeader_LineaLayout:Landroid/widget/LinearLayout;

.field mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

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

.field private mSelectallview:Landroid/widget/ListView;

.field private mTouchDownItem:Landroid/widget/LinearLayout;

.field private mTouchSlop:I

.field private mUnCheckSelectAll:Z

.field private mWordlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWordsinUDB:[Ljava/lang/String;

.field private final ms_UDB_FILE_NAME:Ljava/lang/String;

.field private final useTwWidget:Z

.field wordsbuf:[S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectall:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x48

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DEBUG:Z

    .line 65
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->INFO:Z

    .line 66
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->useTwWidget:Z

    .line 67
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->TAG:Ljava/lang/String;

    .line 74
    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListHeader_LineaLayout:Landroid/widget/LinearLayout;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    .line 85
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_WORD_SIZE:I

    .line 87
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->forward:B

    .line 89
    const/16 v0, 0x5000

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_SIZE:I

    .line 90
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getUDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_BUF:[B

    .line 91
    const-string v0, "xT9UdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->ms_UDB_FILE_NAME:Ljava/lang/String;

    .line 93
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCount:[S

    .line 95
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->wordsbuf:[S

    .line 96
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->lengthbuf:[S

    .line 97
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->wordsbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->LengthOfWordsbuf:S

    .line 99
    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mLastMotionY:I

    .line 102
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mTouchSlop:I

    .line 106
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->TOUCH_SCROLL_LIMIT:I

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mUnCheckSelectAll:Z

    .line 530
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mClickListener:Landroid/view/View$OnClickListener;

    .line 598
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 604
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 846
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$8;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectall:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectall:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->deleteMyWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->writeDBdataToFile()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .registers 6
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 576
    .local v0, i:I
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_12

    .line 577
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 579
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .registers 5
    .parameter "string"

    .prologue
    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 564
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 565
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 568
    :cond_17
    return-object v1
.end method

.method private deleteMyWord(Ljava/lang/String;)V
    .registers 5
    .parameter "mywords"

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBDeleteWord([SS)S

    move-result v0

    .line 624
    .local v0, errorcode:S
    return-void
.end method

.method private getWordfromMyWords()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 587
    const-string v1, ""

    .line 589
    .local v1, getWordString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->wordsbuf:[S

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->LengthOfWordsbuf:S

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->lengthbuf:[S

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBGetWord([SS[SB)S

    move-result v0

    .line 590
    .local v0, errorcode:S
    if-eqz v0, :cond_f

    .line 593
    :cond_f
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->wordsbuf:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->lengthbuf:[S

    aget-short v3, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v1

    .line 595
    return-object v1
.end method

.method private make_MyWords_CheckList()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->readDataFromDB()V

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    .line 215
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    if-nez v2, :cond_1f

    move v2, v3

    :goto_11
    if-ge v0, v2, :cond_23

    .line 216
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1f
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    array-length v2, v2

    goto :goto_11

    .line 218
    :cond_23
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    const v4, 0x7f03001c

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    .line 219
    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    .line 222
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 223
    .local v1, mywords_top:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListHeader_LineaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 227
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 229
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 230
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 264
    return-void
.end method

.method private make_SelectAll_CheckButton()V
    .registers 6

    .prologue
    .line 152
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 154
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectall:Z

    .line 156
    const v2, 0x7f03002a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListHeader_LineaLayout:Landroid/widget/LinearLayout;

    .line 158
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListHeader_LineaLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f070066

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallview:Landroid/widget/ListView;

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, selectallString:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    .line 161
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    const v3, 0x7f03001e

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    .line 163
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallview:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallview:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    return-void
.end method

.method private readDBdataFromFile()V
    .registers 11

    .prologue
    .line 669
    const-string v0, ""

    .line 673
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 675
    const-string v8, "xT9DB"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 676
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 677
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 678
    const/4 v4, 0x0

    .line 679
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 681
    .local v7, returnOfRead:I
    :try_start_18
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_52

    .line 682
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1d
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_76
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_79

    move-result v7

    .line 689
    if-eqz v5, :cond_28

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v4, v5

    .line 703
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_29
    :goto_29
    return-void

    .line 690
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_2a
    move-exception v2

    .line 691
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 693
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_29

    .line 683
    .end local v2           #e:Ljava/io/IOException;
    :catch_30
    move-exception v2

    .line 684
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

    .line 689
    if-eqz v4, :cond_29

    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_29

    .line 690
    :catch_4d
    move-exception v2

    .line 691
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 685
    .end local v2           #e:Ljava/io/IOException;
    :catch_52
    move-exception v2

    .line 686
    .restart local v2       #e:Ljava/io/IOException;
    :goto_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    .line 689
    if-eqz v4, :cond_29

    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_29

    .line 690
    :catch_5c
    move-exception v2

    .line 691
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 688
    .end local v2           #e:Ljava/io/IOException;
    :catchall_61
    move-exception v8

    .line 689
    :goto_62
    if-eqz v4, :cond_67

    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 692
    :cond_67
    :goto_67
    throw v8

    .line 690
    :catch_68
    move-exception v2

    .line 691
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 697
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_6d
    :try_start_6d
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_29

    .line 698
    :catch_71
    move-exception v3

    .line 699
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 688
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_76
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_62

    .line 685
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_79
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_53

    .line 683
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
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCount:[S

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBGetWordCount([S)S

    move-result v0

    .line 540
    .local v0, errorcode:S
    if-eqz v0, :cond_9

    .line 544
    :cond_9
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCount:[S

    aget-short v2, v2, v3

    if-lez v2, :cond_30

    .line 545
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCount:[S

    aget-short v2, v2, v3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    .line 547
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_18
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_28

    .line 548
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getWordfromMyWords()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 552
    :cond_28
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 556
    .end local v1           #idx:I
    :goto_2f
    return-void

    .line 554
    :cond_30
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    goto :goto_2f
.end method

.method private setButtonEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 300
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    .line 301
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 303
    return-void
.end method

.method private writeDBdataToFile()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 628
    const-string v0, ""

    .line 632
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 634
    const-string v7, "xT9DB"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 635
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 636
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_19

    .line 638
    :try_start_16
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_35

    .line 643
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 644
    const/4 v5, 0x0

    .line 646
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_26} :catch_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_4f

    .line 647
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_26
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x5000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2e} :catch_70
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_6d

    .line 653
    if-eqz v6, :cond_73

    .line 655
    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3a

    move-object v5, v6

    .line 664
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    return-void

    .line 639
    :catch_35
    move-exception v3

    .line 640
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 656
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v2

    .line 657
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 658
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 648
    .end local v2           #e:Ljava/io/IOException;
    :catch_40
    move-exception v2

    .line 649
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5e

    .line 653
    if-eqz v5, :cond_34

    .line 655
    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_34

    .line 656
    :catch_4a
    move-exception v2

    .line 657
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 650
    .end local v2           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v2

    .line 651
    .restart local v2       #e:Ljava/io/IOException;
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    .line 653
    if-eqz v5, :cond_34

    .line 655
    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_34

    .line 656
    :catch_59
    move-exception v2

    .line 657
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 653
    .end local v2           #e:Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 655
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 658
    :cond_64
    :goto_64
    throw v7

    .line 656
    :catch_65
    move-exception v2

    .line 657
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 653
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_6a
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 650
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_6d
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_50

    .line 648
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
.method makeDeletePopup()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 269
    const v2, 0x7f0a0014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    const v2, 0x7f0a0071

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 282
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5d

    .line 283
    const v2, 0x7f0a00f8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 289
    :goto_3d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    .line 293
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 296
    .local v1, win:Landroid/view/Window;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 297
    return-void

    .line 284
    .end local v1           #win:Landroid/view/Window;
    :cond_5d
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_6c

    .line 285
    const v2, 0x7f0a00f6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3d

    .line 287
    :cond_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    iput-object p0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 125
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    .line 126
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    .line 129
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->make_SelectAll_CheckButton()V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->make_MyWords_CheckList()V

    .line 142
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4180

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mTouchSlop:I

    .line 149
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 775
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 777
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setResult(I)V

    .line 778
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->finish()V

    .line 779
    const/4 v0, 0x1

    .line 781
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
    .line 708
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_9

    .line 709
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->hide()V

    .line 712
    :cond_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 713
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "inSettings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->sendBroadcast(Landroid/content/Intent;)V

    .line 715
    sget-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v2, :cond_1d

    .line 716
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->readDBdataFromFile()V

    .line 718
    :cond_1d
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_BUF:[B

    const/16 v3, 0x5000

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v0

    .line 725
    .local v0, errorcode:S
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 726
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V

    .line 730
    :goto_31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 731
    return-void

    .line 728
    :cond_35
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V

    goto :goto_31
.end method
