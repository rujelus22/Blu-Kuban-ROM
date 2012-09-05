.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;
.super Landroid/app/ListActivity;
.source "MenuDeleteIndices.java"


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mCancel_Button:Landroid/widget/Button;

.field private mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field private mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mDeleteListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDelete_Button:Landroid/widget/Button;

.field private mDeletedialog:Landroid/app/Dialog;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field mIsVisible:Z

.field private mListView:Landroid/widget/ListView;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSelectAllState:Ljava/lang/Boolean;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->keyBuf:Ljava/lang/String;

    .line 55
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

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mappingKey:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogText:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->LogGroup:Landroid/widget/RadioGroup;

    .line 63
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogEdit:Landroid/widget/EditText;

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSelectAllState:Ljava/lang/Boolean;

    .line 74
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeletedialog:Landroid/app/Dialog;

    .line 78
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->toast:Landroid/widget/Toast;

    .line 290
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogState:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    sput p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogState:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setSLog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private isAllItemChecked()Z
    .registers 3

    .prologue
    .line 650
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 652
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 654
    const/4 v1, 0x0

    .line 657
    :goto_17
    return v1

    .line 650
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 657
    :cond_1b
    const/4 v1, 0x1

    goto :goto_17
.end method

.method private setButton()V
    .registers 5

    .prologue
    const v3, 0x7f0b0129

    const v2, 0x7f0b0128

    .line 434
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_18

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_3d

    .line 435
    :cond_18
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    .line 436
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancel_Button:Landroid/widget/Button;

    .line 437
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$4;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancel_Button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$5;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$5;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    :goto_3c
    return-void

    .line 525
    :cond_3d
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 526
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 527
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$6;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$7;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3c
.end method

.method private setCheckStatus()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v0, deleteCheckArrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 693
    .local v4, sba:Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .line 694
    .local v2, nCheckCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_32

    .line 696
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 698
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v2, v2, 0x1

    .line 694
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 702
    :cond_32
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    .line 704
    .local v3, nTotalCtn:I
    if-ne v2, v3, :cond_42

    .line 705
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSelectAllState:Ljava/lang/Boolean;

    .line 708
    :goto_41
    return-void

    .line 707
    :cond_42
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSelectAllState:Ljava/lang/Boolean;

    goto :goto_41
.end method

.method private setDeleteButtonState()V
    .registers 7

    .prologue
    const v5, 0xfa000

    const v4, 0xe1000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 662
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 664
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 666
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v5, :cond_25

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_30

    .line 667
    :cond_25
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 668
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 687
    :goto_2f
    return-void

    .line 671
    :cond_30
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 672
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    goto :goto_2f

    .line 662
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 678
    :cond_3e
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v5, :cond_4a

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_55

    .line 679
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 680
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_2f

    .line 683
    :cond_55
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 684
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    goto :goto_2f
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 141
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->keyBuf:Ljava/lang/String;

    .line 149
    :goto_18
    return-void

    .line 147
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 158
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 159
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 164
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_13

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_6d

    .line 335
    :cond_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    if-eqz v0, :cond_1e

    .line 336
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDelete_Button:Landroid/widget/Button;

    .line 347
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_29

    .line 348
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 349
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;

    .line 352
    :cond_29
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    .line 353
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 354
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;

    .line 357
    :cond_34
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_3f

    .line 358
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 359
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->toast:Landroid/widget/Toast;

    .line 361
    :cond_3f
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    .line 363
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mIntent:Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_4e

    .line 366
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 367
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 370
    :cond_4e
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeletedialog:Landroid/app/Dialog;

    .line 373
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancel_Button:Landroid/widget/Button;

    if-eqz v0, :cond_5b

    .line 374
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancel_Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancel_Button:Landroid/widget/Button;

    .line 378
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-eqz v0, :cond_66

    .line 379
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 383
    :cond_66
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogText:Landroid/widget/TextView;

    .line 384
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogEdit:Landroid/widget/EditText;

    .line 386
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->LogGroup:Landroid/widget/RadioGroup;

    .line 388
    return-void

    .line 340
    :cond_6d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-eqz v0, :cond_1e

    .line 341
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    goto :goto_1e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 330
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 86
    const-string v3, "Tag"

    const-string v4, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const v3, 0x7f030034

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setContentView(I)V

    .line 90
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setActivityVisibleState(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030035

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, allView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    .line 94
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 95
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 96
    new-instance v3, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 98
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDbHandler:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_52
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 102
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 105
    :cond_6c
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 107
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030036

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;

    .line 109
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeleteListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setButton()V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setDeleteButtonState()V

    .line 112
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_10e

    .line 286
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 171
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 172
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->LogGroup:Landroid/widget/RadioGroup;

    .line 175
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 176
    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogText:Landroid/widget/TextView;

    .line 177
    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogEdit:Landroid/widget/EditText;

    .line 178
    sget v2, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogState:I

    .line 180
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 181
    sget v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 204
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$2;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 185
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 191
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 197
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 169
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 181
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->cleanResource()V

    .line 325
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 120
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

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 125
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 127
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->showDialog(I)V

    .line 128
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 132
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 619
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 620
    if-nez p3, :cond_42

    .line 622
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSelectAllState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 624
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 626
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 628
    :cond_20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSelectAllState:Ljava/lang/Boolean;

    .line 645
    .end local v1           #i:I
    :goto_26
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setDeleteButtonState()V

    .line 646
    return-void

    .line 632
    :cond_2a
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 634
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 636
    :cond_3b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSelectAllState:Ljava/lang/Boolean;

    goto :goto_26

    .line 641
    .end local v1           #i:I
    :cond_42
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->isAllItemChecked()Z

    move-result v0

    .line 642
    .local v0, allcheck:Z
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 643
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mSelectAllState:Ljava/lang/Boolean;

    goto :goto_26
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 405
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 407
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setActivityVisibleState(Z)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeletedialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 412
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mDeletedialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 417
    :cond_15
    :goto_15
    return-void

    .line 414
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 424
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setActivityVisibleState(Z)V

    .line 427
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setCheckStatus()V

    .line 428
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setDeleteButtonState()V

    .line 430
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->mIsVisible:Z

    .line 398
    return-void
.end method
