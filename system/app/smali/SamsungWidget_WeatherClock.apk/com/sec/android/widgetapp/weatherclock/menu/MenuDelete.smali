.class public Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;
.super Landroid/app/ListActivity;
.source "MenuDelete.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;
    }
.end annotation


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private ctx:Landroid/content/Context;

.field private mDbHandler:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field private mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mDeleteButtonCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

.field private mDeletedialog:Landroid/app/Dialog;

.field mHandler:Landroid/os/Handler;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field mIsVisible:Z

.field private mListView:Landroid/widget/ListView;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSelectAllState:Ljava/lang/Boolean;

.field private mSelectAllStateView:Landroid/widget/CheckedTextView;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->keyBuf:Ljava/lang/String;

    .line 74
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

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mappingKey:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;

    .line 69
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeletedialog:Landroid/app/Dialog;

    .line 82
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;

    .line 85
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogEdit:Landroid/widget/EditText;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mHandler:Landroid/os/Handler;

    .line 356
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 550
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDbHandler:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeletedialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->isAllItemChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setDeleteButtonState()V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogState:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    sput p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogState:I

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setSLog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 400
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private isAllItemChecked()Z
    .registers 3

    .prologue
    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 530
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 531
    const/4 v1, 0x0

    .line 534
    :goto_12
    return v1

    .line 529
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private setButton()V
    .registers 3

    .prologue
    .line 424
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 425
    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButtonCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 427
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButtonCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 525
    return-void
.end method

.method private setCheckStatus()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v1, deleteCheckArrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 590
    .local v5, sba:Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .line 591
    .local v3, nCheckCnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_30

    .line 593
    invoke-virtual {v5, v2, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 595
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, Location:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v3, v3, 0x1

    .line 591
    .end local v0           #Location:Ljava/lang/String;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 601
    :cond_30
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->getCount()I

    move-result v4

    .line 603
    .local v4, nTotalCtn:I
    if-ne v3, v4, :cond_40

    .line 604
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;

    .line 607
    :goto_3f
    return-void

    .line 606
    :cond_40
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;

    goto :goto_3f
.end method

.method private setDeleteButtonState()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 538
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllStateView:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 539
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 540
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 541
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 542
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 548
    :goto_28
    return-void

    .line 539
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 546
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 547
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    goto :goto_28
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 383
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2d

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->keyBuf:Ljava/lang/String;

    .line 392
    :goto_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2c

    .line 394
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->keyBuf:Ljava/lang/String;

    .line 396
    :cond_2c
    return-void

    .line 389
    :cond_2d
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 405
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 406
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    sput p1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 411
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    if-eqz v0, :cond_11

    .line 162
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;->clear()V

    .line 163
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    .line 166
    :cond_11
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mInfoList:Ljava/util/ArrayList;

    .line 167
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    .line 168
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mIntent:Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDbHandler:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->close()V

    .line 171
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDbHandler:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 173
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeletedialog:Landroid/app/Dialog;

    .line 174
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 175
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;

    .line 176
    return-void
.end method

.method public isActivityVisible()Z
    .registers 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mIsVisible:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v2, 0x7f030028

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setContentView(I)V

    .line 97
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setActivityVisibleState(Z)V

    .line 98
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 99
    iput-object p0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->ctx:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, allView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    .line 104
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 105
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 106
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 107
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDbHandler:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 109
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 110
    .local v1, ly:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 111
    const v2, 0x7f0c000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllStateView:Landroid/widget/CheckedTextView;

    .line 113
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDbHandler:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mInfoList:Ljava/util/ArrayList;

    .line 116
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    const v3, 0x7f03001d

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mInfoList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    .line 118
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeleteListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$WeatherClockListAdapter;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setButton()V

    .line 120
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setDeleteButtonState()V

    .line 122
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_10e

    .line 353
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 239
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;

    .line 243
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 245
    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;

    .line 246
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogEdit:Landroid/widget/EditText;

    .line 247
    sget v2, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogState:I

    .line 248
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 250
    sget v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 271
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$3;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$2;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 254
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 260
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 266
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 236
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 250
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
    .line 152
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->cleanResource()V

    .line 154
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 215
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> KD <<<<<<<< : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 221
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 223
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->showDialog(I)V

    .line 224
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 229
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, extras:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 191
    .local v2, mAppWidgetId:I
    if-eqz v0, :cond_15

    .line 193
    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 196
    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setActivityVisibleState(Z)V

    .line 201
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeletedialog:Landroid/app/Dialog;

    if-eqz v3, :cond_30

    .line 203
    :try_start_2b
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mDeletedialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_36

    .line 207
    :cond_30
    :goto_30
    const-string v3, ""

    invoke-direct {p0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 208
    return-void

    .line 205
    :catch_36
    move-exception v3

    goto :goto_30
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 417
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setCheckStatus()V

    .line 418
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setDeleteButtonState()V

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setActivityVisibleState(Z)V

    .line 420
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 421
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mIsVisible:Z

    .line 184
    return-void
.end method
