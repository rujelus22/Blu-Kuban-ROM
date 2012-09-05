.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.super Landroid/app/Activity;
.source "AxT9optionsAutoSubs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;,
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;,
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;
    }
.end annotation


# instance fields
.field private ASDB_BUF:[B

.field private final ASDB_SIZE:I

.field private final ASDB_WORD_SIZE:I

.field private CurrentLanguage:Ljava/lang/String;

.field private final DEBUG:Z

.field private GET_CODE:I

.field private final INFO:Z

.field LengthOfShortcutBuf:S

.field LengthOfSubstitutionBuf:S

.field private final OPTION_MENU_ADD:I

.field private final OPTION_MENU_DELETE:I

.field private final OPTION_MENU_EDIT:I

.field RowClickListener:Landroid/view/View$OnClickListener;

.field RowTouchListener:Landroid/view/View$OnTouchListener;

.field private TAG:Ljava/lang/String;

.field private final TOUCH_SCROLL_LIMIT:I

.field TextFocusListener:Landroid/view/View$OnFocusChangeListener;

.field forward:B

.field mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

.field mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

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

.field private mAutoSubsPopupMenuList:[Ljava/lang/String;

.field private mAutoSubs_empty:Landroid/widget/LinearLayout;

.field mCount:[S

.field private mCurrentFocusString:Ljava/lang/String;

.field private mIsEditMode:Z

.field private mItem:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mKeyArray:[Ljava/lang/String;

.field private mLastMotionY:I

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field private mLeftButton:Landroid/widget/Button;

.field mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mMainListView:Landroid/widget/ListView;

.field private mMainView:Landroid/widget/LinearLayout;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/Button;

.field private mTouchDownItem:Landroid/widget/LinearLayout;

.field private mTouchSlop:I

.field private final ms_ASDB_FILE_NAME:Ljava/lang/String;

.field shortcutbuf:[S

.field shortcutlengthbuf:[S

.field substitutionbuf:[S

.field substitutionlengthbuf:[S

.field private final useTwWidget:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x48

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->DEBUG:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->INFO:Z

    .line 76
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->TAG:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->useTwWidget:Z

    .line 81
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    .line 94
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_WORD_SIZE:I

    .line 95
    const/16 v0, 0x2800

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_SIZE:I

    .line 98
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->forward:B

    .line 100
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCount:[S

    .line 102
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutbuf:[S

    .line 103
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutlengthbuf:[S

    .line 104
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->LengthOfShortcutBuf:S

    .line 105
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionbuf:[S

    .line 106
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionlengthbuf:[S

    .line 107
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->LengthOfSubstitutionBuf:S

    .line 109
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getASDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    .line 110
    const-string v0, "xT9ASdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ms_ASDB_FILE_NAME:Ljava/lang/String;

    .line 119
    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubSet:Ljava/util/Hashtable;

    .line 120
    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mKeyArray:[Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLastMotionY:I

    .line 123
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchSlop:I

    .line 127
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->TOUCH_SCROLL_LIMIT:I

    .line 135
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->OPTION_MENU_ADD:I

    .line 136
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->OPTION_MENU_EDIT:I

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->OPTION_MENU_DELETE:I

    .line 223
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->RowClickListener:Landroid/view/View$OnClickListener;

    .line 238
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->RowTouchListener:Landroid/view/View$OnTouchListener;

    .line 249
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->TextFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 322
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 332
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 664
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 682
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$8;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 800
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$9;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$9;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

    .line 810
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$10;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$10;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private AutoSubsMenuHandler(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 449
    packed-switch p1, :pswitch_data_c

    .line 461
    :goto_3
    return-void

    .line 452
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->editEntry()V

    goto :goto_3

    .line 456
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->deleteEntry()V

    goto :goto_3

    .line 449
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private PopupMenuOn()V
    .registers 7

    .prologue
    .line 340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 342
    const v4, 0x7f0a0014

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubsPopupMenuList:[Ljava/lang/String;

    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;

    invoke-direct {v5, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 356
    .local v1, MenuDlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 357
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 358
    .local v3, wlp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 359
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 360
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLastMotionY:I

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->PopupMenuOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubsPopupMenuList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->AutoSubsMenuHandler(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    return-object v0
.end method

.method private addEntry()V
    .registers 4

    .prologue
    .line 463
    const v0, 0x7f0a0022

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 465
    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 466
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 468
    return-void
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .registers 6
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 301
    .local v0, i:I
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_12

    .line 302
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 304
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .registers 5
    .parameter "string"

    .prologue
    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 291
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 294
    :cond_17
    return-object v1
.end method

.method private deleteEntry()V
    .registers 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 473
    const-class v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 475
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 480
    :goto_12
    return-void

    .line 477
    :cond_13
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->deleteEntry(Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    goto :goto_12
.end method

.method private deleteEntry(Ljava/lang/String;)V
    .registers 5
    .parameter "shortcut"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    const/16 v2, 0x2800

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    .line 486
    .local v0, errorcode:S
    if-eqz v0, :cond_a

    .line 490
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 491
    if-eqz v0, :cond_19

    .line 494
    :cond_19
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->writeDBdataToFile()V

    .line 495
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->displayAllEntries()V

    .line 496
    return-void
.end method

.method private displayAllEntries()V
    .registers 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->readDataFromDB()V

    .line 192
    return-void
.end method

.method private editEntry()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 502
    const v1, 0x7f0a009b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 513
    :goto_16
    return-void

    .line 505
    :cond_17
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    .line 506
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 508
    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 509
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v0, "shortcut"

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_16
.end method

.method private getEntryfromAutoSubs()Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 310
    new-instance v7, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v7}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 312
    .local v7, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutbuf:[S

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->LengthOfShortcutBuf:S

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutlengthbuf:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionbuf:[S

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->LengthOfSubstitutionBuf:S

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionlengthbuf:[S

    invoke-static/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBGetEntry([SS[S[SS[SB)S

    move-result v8

    .line 313
    .local v8, errorcode:S
    if-eqz v8, :cond_18

    .line 317
    :cond_18
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutbuf:[S

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutlengthbuf:[S

    aget-short v1, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setShortcut(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionbuf:[S

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionlengthbuf:[S

    aget-short v1, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setSubstitution(Ljava/lang/String;)V

    .line 319
    return-object v7
.end method

.method private getResourceString(I)Ljava/lang/String;
    .registers 3
    .parameter "ResourceStringID"

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readDBdataFromFile()V
    .registers 11

    .prologue
    .line 563
    const-string v0, ""

    .line 567
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 569
    const-string v8, "xT9DB"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 570
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 571
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 572
    const/4 v4, 0x0

    .line 573
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 575
    .local v7, returnOfRead:I
    :try_start_18
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_52

    .line 576
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1d
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_76
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_79

    move-result v7

    .line 583
    if-eqz v5, :cond_28

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v4, v5

    .line 597
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_29
    :goto_29
    return-void

    .line 584
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_2a
    move-exception v2

    .line 585
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 587
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_29

    .line 577
    .end local v2           #e:Ljava/io/IOException;
    :catch_30
    move-exception v2

    .line 578
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

    .line 583
    if-eqz v4, :cond_29

    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_29

    .line 584
    :catch_4d
    move-exception v2

    .line 585
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 579
    .end local v2           #e:Ljava/io/IOException;
    :catch_52
    move-exception v2

    .line 580
    .restart local v2       #e:Ljava/io/IOException;
    :goto_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    .line 583
    if-eqz v4, :cond_29

    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_29

    .line 584
    :catch_5c
    move-exception v2

    .line 585
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 582
    .end local v2           #e:Ljava/io/IOException;
    :catchall_61
    move-exception v8

    .line 583
    :goto_62
    if-eqz v4, :cond_67

    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 586
    :cond_67
    :goto_67
    throw v8

    .line 584
    :catch_68
    move-exception v2

    .line 585
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 591
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_6d
    :try_start_6d
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_29

    .line 592
    :catch_71
    move-exception v3

    .line 593
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 582
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_76
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_62

    .line 579
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_79
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_53

    .line 577
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
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 198
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 200
    .local v0, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCount:[S

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v1

    .line 201
    .local v1, errorcode:S
    if-eqz v1, :cond_11

    .line 221
    :goto_10
    return-void

    .line 206
    :cond_11
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCount:[S

    aget-short v3, v3, v6

    if-lez v3, :cond_56

    .line 207
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->clear()V

    .line 208
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_1d
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCount:[S

    aget-short v3, v3, v6

    if-ge v2, v3, :cond_40

    .line 209
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getEntryfromAutoSubs()Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    move-result-object v0

    .line 210
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mItem:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    .line 211
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mItem:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->add(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 213
    :cond_40
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubs_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->sort(Ljava/util/Comparator;)V

    goto :goto_10

    .line 217
    .end local v2           #idx:I
    :cond_56
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubs_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10
.end method

.method private writeDBdataToFile()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 522
    const-string v0, ""

    .line 526
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 528
    const-string v7, "xT9DB"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 529
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_19

    .line 532
    :try_start_16
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_35

    .line 537
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 538
    const/4 v5, 0x0

    .line 540
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_26} :catch_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_4f

    .line 541
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_26
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x2800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2e} :catch_70
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_6d

    .line 547
    if-eqz v6, :cond_73

    .line 549
    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3a

    move-object v5, v6

    .line 558
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    return-void

    .line 533
    :catch_35
    move-exception v3

    .line 534
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 550
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v2

    .line 551
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 552
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 542
    .end local v2           #e:Ljava/io/IOException;
    :catch_40
    move-exception v2

    .line 543
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5e

    .line 547
    if-eqz v5, :cond_34

    .line 549
    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_34

    .line 550
    :catch_4a
    move-exception v2

    .line 551
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 544
    .end local v2           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v2

    .line 545
    .restart local v2       #e:Ljava/io/IOException;
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    .line 547
    if-eqz v5, :cond_34

    .line 549
    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_34

    .line 550
    :catch_59
    move-exception v2

    .line 551
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 547
    .end local v2           #e:Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 549
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 552
    :cond_64
    :goto_64
    throw v7

    .line 550
    :catch_65
    move-exception v2

    .line 551
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 547
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_6a
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 544
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_6d
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_50

    .line 542
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
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CurrentLanguage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    .line 155
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

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setContentView(I)V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 161
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubs_empty:Landroid/widget/LinearLayout;

    .line 162
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainView:Landroid/widget/LinearLayout;

    .line 164
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 165
    .local v1, addwordsView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_78

    .line 166
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    :cond_78
    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLeftButton:Landroid/widget/Button;

    .line 171
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLeftButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mRightButton:Landroid/widget/Button;

    .line 175
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mRightButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchSlop:I

    .line 183
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 602
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 603
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 436
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 438
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setResult(I)V

    .line 439
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->finish()V

    .line 440
    const/4 v0, 0x1

    .line 442
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 397
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 388
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->addEntry()V

    goto :goto_9

    .line 391
    :pswitch_e
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->editEntry()V

    goto :goto_9

    .line 394
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->deleteEntry()V

    goto :goto_9

    .line 386
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    .line 608
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 609
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v1, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020031

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 373
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_2b

    .line 380
    :cond_2a
    :goto_2a
    return v0

    .line 378
    :cond_2b
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020033

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    :goto_4a
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 380
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_2a

    :cond_52
    move v0, v1

    .line 378
    goto :goto_4a
.end method

.method public onResume()V
    .registers 10

    .prologue
    .line 614
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 615
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "inSettings"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    sget-boolean v7, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v7, :cond_1e

    .line 619
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->readDBdataFromFile()V

    .line 621
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    const/16 v8, 0x2800

    invoke-static {v7, v8}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v3

    .line 622
    .local v3, errorcode:S
    if-eqz v3, :cond_1e

    .line 627
    .end local v3           #errorcode:S
    :cond_1e
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v3

    .line 628
    .restart local v3       #errorcode:S
    if-eqz v3, :cond_24

    .line 631
    :cond_24
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v3

    .line 632
    if-eqz v3, :cond_2a

    .line 636
    :cond_2a
    const v7, 0x7f07002d

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainListView:Landroid/widget/ListView;

    .line 637
    new-instance v7, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    const v8, 0x7f030016

    invoke-direct {v7, p0, p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    .line 638
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 639
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 640
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 642
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->displayAllEntries()V

    .line 644
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 646
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "select_language"

    const-string v8, "-1"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 647
    .local v2, currentLang:I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_a7

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "CurrentLanguage"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    .line 659
    :goto_81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 662
    return-void

    .line 650
    :cond_a7
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v1

    .line 651
    .local v1, T9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;
    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    .line 652
    .local v4, info:Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;
    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_cf

    .line 653
    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    goto :goto_81

    .line 655
    :cond_cf
    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    goto :goto_81
.end method
