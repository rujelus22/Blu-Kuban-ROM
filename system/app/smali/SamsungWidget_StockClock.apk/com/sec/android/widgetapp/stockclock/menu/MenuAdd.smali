.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;
.super Landroid/app/ListActivity;
.source "MenuAdd.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field private mEditText:Landroid/widget/EditText;

.field private mFindButton:Landroid/widget/ImageButton;

.field private mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field mIsVisible:Z

.field private mLoadingDialog:Landroid/app/Dialog;

.field private mNetworkErrorDialog:Landroid/app/Dialog;

.field private mNoSearchText:Landroid/widget/TextView;

.field private mPopupDialog:Landroid/app/Dialog;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRequestCanceled:Z

.field private mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mStockItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field

.field searchHandler:Landroid/os/Handler;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mappingKey:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    .line 79
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogEdit:Landroid/widget/EditText;

    .line 91
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 92
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    .line 93
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mIsVisible:Z

    .line 97
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->toast:Landroid/widget/Toast;

    .line 399
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$6;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 794
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->searchHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 66
    sget v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setSLog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->fireSearch()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private executeSearch()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 702
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 704
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 706
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 713
    :goto_23
    return-void

    .line 710
    :cond_24
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, stockName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->showLoadingDialog()V

    .line 712
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v0, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestSearch(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    goto :goto_23
.end method

.method private fireSearch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 657
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4c

    .line 658
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 660
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRequestCanceled:Z

    .line 663
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, stockName:Ljava/lang/String;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_43

    .line 678
    :cond_36
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->clear()V

    .line 679
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    .end local v0           #stockName:Ljava/lang/String;
    :goto_42
    return-void

    .line 683
    .restart local v0       #stockName:Ljava/lang/String;
    :cond_43
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 684
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->executeSearch()V

    goto :goto_42

    .line 696
    .end local v0           #stockName:Ljava/lang/String;
    :cond_4c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private regEventSearchButton()V
    .registers 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mFindButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$7;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$8;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 599
    return-void
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 248
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    .line 256
    :goto_18
    return-void

    .line 254
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setKeyboardVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 561
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 562
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 565
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 571
    :goto_11
    return-void

    .line 569
    :cond_12
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_11
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 265
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 271
    return-void
.end method


# virtual methods
.method public RemoveAllThread()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 465
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_57

    .line 467
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 468
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 472
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_49

    .line 474
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 476
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 480
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 489
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 490
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 491
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 493
    :cond_f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mFindButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_18

    .line 494
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mFindButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    :cond_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    .line 498
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 499
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;

    .line 502
    :cond_23
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    if-eqz v0, :cond_2e

    .line 504
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->close()V

    .line 505
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    .line 509
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_39

    .line 511
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 512
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->toast:Landroid/widget/Toast;

    .line 515
    :cond_39
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    .line 516
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogEdit:Landroid/widget/EditText;

    .line 518
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    .line 520
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    .line 521
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mFindButton:Landroid/widget/ImageButton;

    .line 522
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;

    .line 523
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 525
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_52

    .line 526
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 527
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 530
    :cond_52
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 531
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    .line 532
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 533
    return-void
.end method

.method public hideLoadingDialog()V
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 646
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 653
    :cond_9
    :goto_9
    return-void

    .line 648
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 485
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 107
    const-string v2, "Tag"

    const-string v3, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const v2, 0x7f030030

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setContentView(I)V

    .line 111
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 113
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4a

    :cond_36
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->isFirstRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 115
    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec.android.intent.action.HOME_RESUME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->finish()V

    .line 207
    :goto_49
    return-void

    .line 120
    :cond_4a
    const v2, 0x7f0b011e

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f0b011d

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mFindButton:Landroid/widget/ImageButton;

    .line 122
    const v2, 0x7f0b011c

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    .line 123
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 124
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;

    .line 127
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030020

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mStockItemList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    .line 128
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->regEventSearchButton()V

    .line 131
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$1;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 139
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    .line 176
    .local v0, myTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 177
    .local v1, timer:Ljava/util/Timer;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$3;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_49
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 276
    packed-switch p1, :pswitch_data_10e

    .line 395
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 278
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 279
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    .line 282
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 284
    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    .line 285
    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogEdit:Landroid/widget/EditText;

    .line 286
    sget v2, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogState:I

    .line 288
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 289
    sget v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 312
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$5;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$5;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$4;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 293
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 299
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 305
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 276
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 289
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 431
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 435
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_29

    .line 440
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 444
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_27

    .line 449
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNetworkErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1e

    .line 453
    :try_start_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mNetworkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_25

    .line 458
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->RemoveAllThread()V

    .line 460
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->cleanResource()V

    .line 461
    return-void

    .line 455
    :catch_25
    move-exception v0

    goto :goto_1e

    .line 446
    :catch_27
    move-exception v0

    goto :goto_15

    .line 437
    :catch_29
    move-exception v0

    goto :goto_c
.end method

.method public onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter "methodName"
    .parameter "resultCode"
    .parameter "param"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 799
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRequestCanceled:Z

    if-ne v1, v2, :cond_7

    .line 889
    :cond_6
    :goto_6
    return-void

    .line 804
    :cond_7
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_10

    .line 806
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 809
    :cond_10
    if-nez p2, :cond_22

    move-object v0, p4

    .line 811
    check-cast v0, Ljava/util/ArrayList;

    .line 812
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->searchHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$12;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Ljava/util/ArrayList;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 868
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :cond_22
    if-ne p2, v2, :cond_57

    .line 870
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 871
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyboardVisible(Z)V

    .line 872
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->hideLoadingDialog()V

    .line 873
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 875
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 879
    :cond_48
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 882
    :cond_57
    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    .line 884
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 885
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyboardVisible(Z)V

    .line 886
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->hideLoadingDialog()V

    .line 887
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 540
    const-string v1, "Tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>> key down <<<<<<<< : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 543
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getKeyBuffer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 545
    const/16 v1, 0x3e7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->showDialog(I)V

    .line 546
    const-string v1, ""

    invoke-direct {p0, v1, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 549
    :cond_37
    const/4 v1, 0x4

    if-ne p1, v1, :cond_41

    .line 551
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyboardVisible(Z)V

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->finish()V

    .line 556
    :goto_40
    return v0

    :cond_41
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_40
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, -0x1

    .line 717
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 718
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v4, p3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v4, p3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, symbol:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v4, p3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, exchange:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->isAleadyExistStock(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 724
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 792
    :goto_3e
    return-void

    .line 728
    :cond_3f
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v4

    const/16 v5, 0x13

    if-lt v4, v5, :cond_6d

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;

    invoke-direct {v5, p0, v3, v2, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$11;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_3e

    .line 764
    :cond_6d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "IDLE_LAUNCHED_MENUADD"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_af

    .line 766
    const-string v4, ""

    const-string v5, "launcher idle"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-static {p0, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setCurrentSymbol(Landroid/content/Context;Ljava/lang/String;)V

    .line 768
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.stockclock.MANUAL_REFRESH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "type"

    const-string v5, "stock"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string v4, "name"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v4, "symbol"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v4, "DETAIL_CURRENT_SHOWN_STOCK"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v4, "exchange"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v6, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setResult(ILandroid/content/Intent;)V

    .line 775
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->sendBroadcast(Landroid/content/Intent;)V

    .line 776
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->finish()V

    goto :goto_3e

    .line 780
    .end local v1           #intent:Landroid/content/Intent;
    :cond_af
    const-string v4, ""

    const-string v5, "launcher else"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 782
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "type"

    const-string v5, "stock"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v4, "name"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string v4, "symbol"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v4, "selSymbol"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v4, "exchange"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    invoke-virtual {p0, v6, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setResult(ILandroid/content/Intent;)V

    .line 788
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->finish()V

    goto/16 :goto_3e
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 238
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 240
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 242
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 229
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 230
    return-void
.end method

.method public showLoadingDialog()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 603
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_29

    .line 605
    const/4 v1, 0x0

    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$9;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$9;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 618
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 636
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 638
    :cond_29
    return-void
.end method
