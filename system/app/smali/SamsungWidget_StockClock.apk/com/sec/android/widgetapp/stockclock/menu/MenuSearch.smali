.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;
.super Landroid/app/ListActivity;
.source "MenuSearch.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private mDdbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field private mEditText:Landroid/widget/EditText;

.field private mFindButton:Landroid/widget/ImageButton;

.field private mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field private mIntent:Landroid/content/Intent;

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

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    .line 60
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

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mappingKey:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    .line 68
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogEdit:Landroid/widget/EditText;

    .line 80
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    .line 81
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    .line 82
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mIsVisible:Z

    .line 88
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->toast:Landroid/widget/Toast;

    .line 380
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$6;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 701
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->searchHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 55
    sget v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    sput p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setSLog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->fireSearch()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private executeSearch()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 673
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 676
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 683
    :goto_23
    return-void

    .line 680
    :cond_24
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, stockName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->showLoadingDialog()V

    .line 682
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v0, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestSearch(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    goto :goto_23
.end method

.method private fireSearch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 628
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4c

    .line 629
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mDdbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 631
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRequestCanceled:Z

    .line 633
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, stockName:Ljava/lang/String;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_43

    .line 646
    :cond_36
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->clear()V

    .line 647
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    .end local v0           #stockName:Ljava/lang/String;
    :goto_42
    return-void

    .line 651
    .restart local v0       #stockName:Ljava/lang/String;
    :cond_43
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 652
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->executeSearch()V

    goto :goto_42

    .line 663
    .end local v0           #stockName:Ljava/lang/String;
    :cond_4c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

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
    .line 243
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private regEventSearchButton()V
    .registers 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mFindButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$7;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$8;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 570
    return-void
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 231
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    .line 239
    :goto_18
    return-void

    .line 237
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setKeyboardVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 532
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 533
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 536
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 542
    :goto_11
    return-void

    .line 540
    :cond_12
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_11
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 248
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 254
    return-void
.end method


# virtual methods
.method public RemoveAllThread()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_57

    .line 448
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 449
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 451
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 453
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_49

    .line 455
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 457
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 461
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    .line 471
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 473
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    .line 476
    :cond_11
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mFindButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1c

    .line 477
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mFindButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mFindButton:Landroid/widget/ImageButton;

    .line 481
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_27

    .line 482
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 483
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;

    .line 486
    :cond_27
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    if-eqz v0, :cond_32

    .line 487
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->close()V

    .line 488
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    .line 491
    :cond_32
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    .line 492
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 494
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mDdbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_41

    .line 495
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mDdbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 496
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mDdbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 499
    :cond_41
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    .line 500
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    .line 501
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 503
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    .line 504
    return-void
.end method

.method public hideLoadingDialog()V
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 617
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 624
    :cond_9
    :goto_9
    return-void

    .line 619
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v4, 0x28

    .line 802
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 803
    if-eqz p3, :cond_13

    .line 805
    const-string v1, "through"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 807
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->finish()V

    .line 829
    :cond_13
    :goto_13
    return-void

    .line 810
    :cond_14
    const-string v1, "searchAdd"

    const-string v2, "type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 812
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mIntent:Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "searchAdd"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mIntent:Landroid/content/Intent;

    const-string v2, "symbol"

    const-string v3, "symbol"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setResult(ILandroid/content/Intent;)V

    .line 815
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->finish()V

    .line 817
    :cond_41
    if-ne p2, v4, :cond_13

    .line 819
    const-string v1, "symbol"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 821
    const-string v1, "symbol"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, symbol:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mIntent:Landroid/content/Intent;

    const-string v2, "symbol"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setResult(ILandroid/content/Intent;)V

    .line 824
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->finish()V

    goto :goto_13
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 465
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 466
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 96
    const-string v2, "Tag"

    const-string v3, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const v2, 0x7f030030

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setContentView(I)V

    .line 100
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mDdbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 102
    const v2, 0x7f0b011e

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0b011d

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mFindButton:Landroid/widget/ImageButton;

    .line 104
    const v2, 0x7f0b011c

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    .line 105
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 106
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mIntent:Landroid/content/Intent;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;

    .line 110
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030020

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mStockItemList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    .line 111
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->regEventSearchButton()V

    .line 114
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$1;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    .line 160
    .local v0, myTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 161
    .local v1, timer:Ljava/util/Timer;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$3;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 190
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_10e

    .line 376
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 261
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 262
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    .line 265
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 266
    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    .line 267
    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogEdit:Landroid/widget/EditText;

    .line 268
    sget v2, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogState:I

    .line 270
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 271
    sget v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 294
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$5;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$5;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$4;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 275
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 281
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 287
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 259
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 271
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
    .line 411
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 412
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 416
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_29

    .line 421
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 425
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_27

    .line 430
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNetworkErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1e

    .line 434
    :try_start_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mNetworkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_25

    .line 439
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->RemoveAllThread()V

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->cleanResource()V

    .line 442
    return-void

    .line 436
    :catch_25
    move-exception v0

    goto :goto_1e

    .line 427
    :catch_27
    move-exception v0

    goto :goto_15

    .line 418
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

    .line 706
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRequestCanceled:Z

    if-ne v1, v2, :cond_7

    .line 798
    :cond_6
    :goto_6
    return-void

    .line 711
    :cond_7
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_10

    .line 713
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 716
    :cond_10
    if-nez p2, :cond_22

    move-object v0, p4

    .line 718
    check-cast v0, Ljava/util/ArrayList;

    .line 719
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->searchHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$11;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Ljava/util/ArrayList;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 776
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :cond_22
    if-ne p2, v2, :cond_57

    .line 778
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 779
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    .line 780
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->hideLoadingDialog()V

    .line 782
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 784
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 788
    :cond_48
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 791
    :cond_57
    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    .line 793
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 794
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->hideLoadingDialog()V

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

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

    .line 511
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

    .line 512
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 514
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getKeyBuffer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 516
    const/16 v1, 0x3e7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->showDialog(I)V

    .line 517
    const-string v1, ""

    invoke-direct {p0, v1, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 520
    :cond_37
    const/4 v1, 0x4

    if-ne p1, v1, :cond_41

    .line 522
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->finish()V

    .line 527
    :goto_40
    return v0

    :cond_41
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_40
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 688
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 689
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 690
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mSearchListAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v0

    .line 692
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    const-string v4, "name"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v1, "symbol"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v1, "exchange"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const/16 v0, 0x1e

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 697
    const/16 v0, 0xa

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->startActivityForResult(Landroid/content/Intent;I)V

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->finish()V

    .line 699
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 221
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 223
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 225
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 212
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 213
    return-void
.end method

.method public showLoadingDialog()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 574
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_29

    .line 576
    const/4 v1, 0x0

    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$9;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$9;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    .line 589
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 609
    :cond_29
    return-void
.end method
