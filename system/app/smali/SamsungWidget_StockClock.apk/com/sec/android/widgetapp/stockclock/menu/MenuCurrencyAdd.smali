.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;
.super Landroid/app/Activity;
.source "MenuCurrencyAdd.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private final CURRENCYCODE:I

.field private final CURRENCYNAME:I

.field private LogGroup:Landroid/widget/RadioGroup;

.field private mCDBHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

.field private mCountry:Z

.field private mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

.field private mCurrencyArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation
.end field

.field mCurrencyCode:Landroid/widget/Button;

.field private mCurrencyList:Landroid/widget/ListView;

.field private mEditText:Landroid/widget/EditText;

.field private mFocusBtn:I

.field private mIntent:Landroid/content/Intent;

.field private mNoSearch:Landroid/widget/TextView;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field mSelectCurrency:Landroid/widget/Button;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->keyBuf:Ljava/lang/String;

    .line 49
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

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mappingKey:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mNoSearch:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;

    .line 57
    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogEdit:Landroid/widget/EditText;

    .line 70
    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->CURRENCYNAME:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->CURRENCYCODE:I

    .line 72
    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mFocusBtn:I

    .line 400
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$9;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$9;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->refreshSearchHintText()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setSLog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->search()V

    return-void
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogState:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    sput p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogState:I

    return p0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method private getCountry(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 5
    .parameter "searchString"
    .parameter "bool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCDBHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->selectCountrySymbol(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 454
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;>;"
    return-object v0
.end method

.method private getCountry(Z)Ljava/util/ArrayList;
    .registers 4
    .parameter "bool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCDBHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;->getCountrySymbol(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 461
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;>;"
    return-object v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    const v0, 0x7f0b011e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mNoSearch:Landroid/widget/TextView;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCDBHelper:Lcom/sec/android/widgetapp/stockclock/db/StockCurrencyDBHelper;

    .line 117
    const v0, 0x7f0b0124

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    .line 118
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 119
    const v0, 0x7f0b0127

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    .line 120
    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->initFocusedButton()V

    .line 124
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$3;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0b0125

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyList:Landroid/widget/ListView;

    .line 152
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    .line 153
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getCountry(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    .line 155
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$4;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$5;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mTextWatcher:Landroid/text/TextWatcher;

    .line 185
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$6;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 198
    invoke-direct {p0, v5}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setKeyboardVisible(Z)V

    .line 199
    return-void
.end method

.method private initFocusedButton()V
    .registers 5

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    if-eqz v0, :cond_31

    .line 95
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mFocusBtn:I

    if-nez v0, :cond_32

    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 110
    :cond_31
    :goto_31
    return-void

    .line 104
    :cond_32
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_31
.end method

.method private refreshSearchHintText()V
    .registers 5

    .prologue
    .line 559
    const-string v1, ""

    .line 560
    .local v1, SpaceText:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, CompText:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 564
    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mFocusBtn:I

    if-nez v2, :cond_26

    .line 566
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 575
    :cond_25
    :goto_25
    return-void

    .line 571
    :cond_26
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_25
.end method

.method private regEventSearchButton()V
    .registers 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$10;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 603
    return-void
.end method

.method private search()V
    .registers 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getCountry(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    .line 433
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 435
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mNoSearch:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 438
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    .line 440
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 441
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->notifyDataSetChanged()V

    .line 442
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->notifyDataSetInvalidated()V

    .line 449
    :goto_49
    return-void

    .line 446
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mNoSearch:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_49
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 251
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->keyBuf:Ljava/lang/String;

    .line 259
    :goto_18
    return-void

    .line 257
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setKeyboardVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 545
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 546
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 548
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 554
    :goto_11
    return-void

    .line 552
    :cond_12
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_11
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 268
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 269
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 274
    return-void
.end method


# virtual methods
.method public changeCountry()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 498
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 500
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    .line 501
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getCountry(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    .line 502
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    .line 503
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->notifyDataSetChanged()V

    .line 505
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->notifyDataSetInvalidated()V

    .line 506
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 508
    iput v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mFocusBtn:I

    .line 509
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->initFocusedButton()V

    .line 510
    return-void
.end method

.method public changeSymbol()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 466
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 468
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    .line 469
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getCountry(Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    .line 470
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyArrayList:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountry:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    .line 471
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->notifyDataSetChanged()V

    .line 473
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCountryAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListCurrencyCountryAdapter;->notifyDataSetInvalidated()V

    .line 474
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSelectCurrency:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mCurrencyCode:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 476
    iput v6, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mFocusBtn:I

    .line 477
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->initFocusedButton()V

    .line 478
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->refreshSearchHintText()V

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 82
    const-string v0, "Tag"

    const-string v1, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setContentView(I)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setActivityVisibleState(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mIntent:Landroid/content/Intent;

    .line 87
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->init()V

    .line 88
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->regEventSearchButton()V

    .line 90
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_10e

    .line 396
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 281
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 282
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 283
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;

    .line 285
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 286
    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;

    .line 287
    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogEdit:Landroid/widget/EditText;

    .line 288
    sget v2, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogState:I

    .line 290
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 291
    sget v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 314
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$8;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$7;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd$7;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 295
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 301
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 307
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 279
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 291
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method public onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "methodName"
    .parameter "resultCode"
    .parameter "param"
    .parameter "result"

    .prologue
    .line 541
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 214
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> key down <<<<<<<< : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 219
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 221
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->showDialog(I)V

    .line 222
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 226
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 240
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 245
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 234
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 536
    return-void
.end method
