.class public Lcom/sec/android/app/clockpackage/worldclock/WCMain;
.super Landroid/app/Activity;
.source "WCMain.java"


# static fields
.field public static RESULT_ITEM_INSERTED:I

.field static filter:Landroid/content/IntentFilter;

.field public static filter2:Landroid/content/IntentFilter;

.field static parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;


# instance fields
.field private final CW_MAIN_MENU_CREATE:I

.field private final CW_MAIN_MENU_DELETE:I

.field private final CW_MAIN_MENU_REORDER:I

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCityCountrySel:Ljava/lang/String;

.field private mDBCnt:I

.field private mDBCursor:Landroid/database/Cursor;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBroadcastReceiverRegistered:Z

.field private mIsDST:I

.field private mIsItemInserted:Z

.field private mItemID:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

.field private mListPos:I

.field private mNoItemLayout:Landroid/view/View;

.field private mOrientation:I

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private m_fadeAnimation:Landroid/view/animation/Animation;

.field m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

.field private numCitiesInMenu:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const/16 v0, 0x65

    sput v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->RESULT_ITEM_INSERTED:I

    .line 104
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    .line 105
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    .line 109
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter2:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    .line 99
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsItemInserted:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsBroadcastReceiverRegistered:Z

    .line 265
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 780
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->CW_MAIN_MENU_CREATE:I

    .line 782
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->CW_MAIN_MENU_DELETE:I

    .line 785
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->CW_MAIN_MENU_REORDER:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBDST(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mListPos:I

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsDST:I

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItemID:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->delDB()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateCityChoice()V

    return-void
.end method

.method private bindList()V
    .registers 4

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initDBCursor()V

    .line 395
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->controlListHead()V

    .line 396
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->makeListitem()V

    .line 397
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->delDBCursor()V

    .line 399
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v1, 0x7f03003c

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    return-void
.end method

.method private bindList_ConfigurationChanged()V
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 411
    :goto_4
    return-void

    .line 407
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->controlListHead()V

    .line 409
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v1, 0x7f03003c

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4
.end method

.method private changeActivity2Create(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 491
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_18

    .line 492
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 549
    :goto_17
    return-void

    .line 497
    :cond_18
    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 498
    const/4 v0, 0x0

    .line 499
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 501
    if-eqz v2, :cond_2d

    .line 502
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefLastActivity()Ljava/lang/String;

    move-result-object v0

    .line 504
    :cond_2d
    if-eqz p1, :cond_9b

    .line 505
    const-class v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 521
    :cond_34
    :goto_34
    const-string v0, "where"

    const-string v4, "add"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v0

    if-ne v0, v7, :cond_e1

    .line 524
    :cond_4b
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getCityOfDefaultTime()Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    const-string v4, "cityname"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 530
    const-string v4, "uniqueid"

    if-eqz v0, :cond_df

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_83
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    :cond_86
    :goto_86
    const-string v0, "zoomlevel"

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefLastZoomLevel()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    const-string v0, "NUMBER_OF_CITIES_IN_MENU"

    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_17

    .line 506
    :cond_9b
    if-eqz v0, :cond_b3

    const-string v4, "AddLastActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ad

    const-string v4, "CityList"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 507
    :cond_ad
    const-class v0, Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_34

    .line 510
    :cond_b3
    const-class v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 511
    const-string v0, "sTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/ClockPackage;

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    .line 515
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_34

    .line 516
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_fadeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_34

    :cond_df
    move v0, v1

    .line 530
    goto :goto_83

    .line 533
    :cond_e1
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_86

    .line 535
    const-string v4, "cityname"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 538
    const-string v4, "uniqueid"

    if-eqz v0, :cond_104

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_104
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_86
.end method

.method private changeActivity2Delete()V
    .registers 3

    .prologue
    .line 552
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 553
    return-void
.end method

.method private changeActivity2ReOrder()V
    .registers 3

    .prologue
    .line 561
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 562
    return-void
.end method

.method private controlListHead()V
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 429
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    const v7, 0x7f0e0146

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, fv:Landroid/view/View;
    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    const/16 v7, 0x14

    if-ge v6, v7, :cond_16

    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    if-nez v6, :cond_63

    .line 431
    :cond_16
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :goto_19
    const v6, 0x7f0e013f

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 440
    .local v4, mNoItemLayout_image:Landroid/widget/LinearLayout;
    const v6, 0x7f0e0140

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, NoItemImage_view:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/clockpackage/worldclock/WCMain$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$5;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    const v6, 0x7f0e0141

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 449
    .local v1, NoItemText_view:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/clockpackage/worldclock/WCMain$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$6;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    const v6, 0x7f0e013d

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 456
    .local v3, mNoItemLayout_TaptoAdd:Landroid/widget/LinearLayout;
    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    if-nez v6, :cond_67

    .line 457
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    :goto_53
    const v6, 0x7f0e013e

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 464
    .local v5, mNoItemLayout_txtCreate:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/clockpackage/worldclock/WCMain$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$7;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    return-void

    .line 433
    .end local v0           #NoItemImage_view:Landroid/view/View;
    .end local v1           #NoItemText_view:Landroid/view/View;
    .end local v3           #mNoItemLayout_TaptoAdd:Landroid/widget/LinearLayout;
    .end local v4           #mNoItemLayout_image:Landroid/widget/LinearLayout;
    .end local v5           #mNoItemLayout_txtCreate:Landroid/view/View;
    :cond_63
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 460
    .restart local v0       #NoItemImage_view:Landroid/view/View;
    .restart local v1       #NoItemText_view:Landroid/view/View;
    .restart local v3       #mNoItemLayout_TaptoAdd:Landroid/widget/LinearLayout;
    .restart local v4       #mNoItemLayout_image:Landroid/widget/LinearLayout;
    :cond_67
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_53
.end method

.method private delDB()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItemID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, whereClause:Ljava/lang/String;
    :try_start_1e
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1e .. :try_end_28} :catch_2a

    .line 594
    const/4 v2, 0x1

    :goto_29
    return v2

    .line 591
    :catch_2a
    move-exception v0

    .line 592
    .local v0, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_29
.end method

.method private delDBCursor()V
    .registers 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 575
    :cond_d
    :goto_d
    return-void

    .line 574
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_d
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_c

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsBroadcastReceiverRegistered:Z

    .line 285
    :cond_c
    return-void
.end method

.method private getCityOfDefaultTime()Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 7

    .prologue
    .line 667
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 684
    .local v3, tz:Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GMT+00:00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 685
    const-string v4, "Europe/London"

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 687
    :cond_1a
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCityByTimezoneID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, cityCountry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_61

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, cityname:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, country:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2d

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x45

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    .end local v1           #cityname:[Ljava/lang/String;
    .end local v2           #country:[Ljava/lang/String;
    :cond_61
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v4

    return-object v4
.end method

.method private getContentValues()Landroid/content/ContentValues;
    .registers 6

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getCityOfDefaultTime()Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 655
    .local v0, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v1, v:Landroid/content/ContentValues;
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLatitude()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 662
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLongitude()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 663
    return-object v1
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "cityName"
    .parameter "cityCountry"

    .prologue
    .line 647
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v0, c:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-object v0
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 580
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v6

    .line 584
    :goto_f
    return-object v6

    .line 581
    :catch_10
    move-exception v7

    .line 582
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_f
.end method

.method private initDBCursor()V
    .registers 2

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getDBAll()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    .line 568
    return-void
.end method

.method private initDefzone()V
    .registers 4

    .prologue
    .line 248
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, sm:Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefDefault()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 254
    :goto_10
    return-void

    .line 252
    :cond_11
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefDefault()V

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->setDBFactory()V

    goto :goto_10
.end method

.method private initList()V
    .registers 3

    .prologue
    .line 332
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$2;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->requestFocus()Z

    .line 389
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->makeListHead()V

    .line 390
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    .line 259
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsBroadcastReceiverRegistered:Z

    .line 263
    return-void
.end method

.method private makeListHead()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 414
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    const v2, 0x7f0e0148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, headlayout:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$4;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mNoItemLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->addHeaderView(Landroid/view/View;)V

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setChoiceMode(I)V

    .line 426
    return-void
.end method

.method private makeListitem()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 475
    iput v7, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    .line 478
    :goto_f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_48

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 484
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    goto :goto_f

    .line 487
    :cond_48
    return-void
.end method

.method private setDBFactory()V
    .registers 4

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 644
    return-void
.end method

.method private updateCityChoice()V
    .registers 5

    .prologue
    .line 302
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cleanDBSelected()V

    .line 303
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 304
    .local v2, cur:Landroid/database/Cursor;
    if-nez v2, :cond_a

    .line 327
    :goto_9
    return-void

    .line 308
    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->numCitiesInMenu:I

    .line 311
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1a

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 318
    :cond_1a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    :goto_1d
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 320
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, cityCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 322
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-eqz v0, :cond_3a

    .line 323
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/worldclock/City;->setDBSelected(Z)V

    .line 324
    :cond_3a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1d

    .line 326
    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v1           #cityCountry:Ljava/lang/String;
    :cond_3e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9
.end method

.method private updateDBDST(I)Z
    .registers 10
    .parameter "setdst"

    .prologue
    const/4 v4, 0x0

    .line 598
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mListPos:I

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 599
    .local v0, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    if-eqz v0, :cond_4c

    .line 600
    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->setDST(I)V

    .line 601
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 602
    .local v2, values:Landroid/content/ContentValues;
    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, whereClause:Ljava/lang/String;
    :try_start_38
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_38 .. :try_end_46} :catch_4a

    move-result v5

    if-gez v5, :cond_4c

    .line 613
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #whereClause:Ljava/lang/String;
    :goto_49
    return v4

    .line 609
    .restart local v2       #values:Landroid/content/ContentValues;
    .restart local v3       #whereClause:Ljava/lang/String;
    :catch_4a
    move-exception v1

    .line 610
    .local v1, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_49

    .line 613
    .end local v1           #se:Landroid/database/sqlite/SQLiteFullException;
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #whereClause:Ljava/lang/String;
    :cond_4c
    const/4 v4, 0x1

    goto :goto_49
.end method

.method private updateDBLocale()V
    .registers 6

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, system_locale:Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 292
    .local v1, sm:Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefDBLocale()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, db_locale:Ljava/lang/String;
    if-eqz v0, :cond_23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 294
    :cond_23
    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefDBLocale(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBCityCountry()V

    .line 299
    :cond_29
    :goto_29
    return-void

    .line 296
    :cond_2a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    goto :goto_29
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->setContentView(I)V

    .line 179
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBLocale()V

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateCityChoice()V

    .line 182
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList()V

    .line 184
    sget v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->RESULT_ITEM_INSERTED:I

    if-ne p2, v0, :cond_1c

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsItemInserted:Z

    .line 186
    :cond_1c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    .line 192
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->setContentView(I)V

    .line 193
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V

    .line 194
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList_ConfigurationChanged()V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initDefzone()V

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter2:Landroid/content/IntentFilter;

    .line 118
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter2:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.app.clockpackage.world.WORLD_ADDCITY_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->filter2:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 709
    move-object v0, p0

    .line 711
    .local v0, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_7e

    .line 776
    :goto_6
    const/4 v4, 0x0

    :goto_7
    return-object v4

    .line 713
    :pswitch_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, typeItems:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    if-nez v4, :cond_33

    .line 715
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    .line 716
    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    .line 745
    .end local v3           #typeItems:[Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 746
    .restart local v3       #typeItems:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    if-nez v4, :cond_52

    .line 747
    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    .line 748
    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    goto :goto_6

    .line 719
    :cond_33
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 720
    .local v2, dlsSet:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 721
    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/WCMain$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$8;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/WCMain$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$9;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 742
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_7

    .line 750
    .end local v2           #dlsSet:Landroid/app/AlertDialog$Builder;
    :cond_52
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 751
    .local v1, dlsDST:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 752
    iget v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsDST:I

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/WCMain$11;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain$11;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 770
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_7

    .line 711
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    if-eqz v0, :cond_c

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->destroy()V

    .line 225
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    .line 229
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_17

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 233
    :cond_17
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->ReleaseInstance()V

    .line 235
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->deleteReceiver()V

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 240
    const/16 v0, 0x52

    if-ne v0, p1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 826
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 842
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 828
    :pswitch_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Create(Z)V

    goto :goto_7

    .line 831
    :pswitch_e
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2Delete()V

    goto :goto_7

    .line 837
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->changeActivity2ReOrder()V

    goto :goto_7

    .line 826
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_e
        :pswitch_7
        :pswitch_12
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    .line 218
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f0b0090

    const v1, 0x7f020157

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 788
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 789
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    if-nez v0, :cond_34

    .line 791
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 794
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 812
    :goto_17
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_24

    .line 813
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 814
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 817
    :cond_24
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mDBCnt:I

    if-ne v0, v3, :cond_2f

    .line 818
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 819
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 822
    :cond_2f
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 797
    :cond_34
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 800
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 801
    const v0, 0x7f0b008c

    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 804
    const v1, 0x7f020158

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 808
    const/4 v0, 0x4

    const v1, 0x7f0b008f

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 809
    const v1, 0x7f020155

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_17
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    const v2, 0x7f030038

    :try_start_6
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->setContentView(I)V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_9} :catch_72

    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBLocale()V

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateCityChoice()V

    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList()V

    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initReceiver()V

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 147
    .local v1, orientation:I
    iget v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    if-eq v2, v1, :cond_2b

    .line 148
    iput v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mOrientation:I

    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->bindList_ConfigurationChanged()V

    .line 154
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    if-nez v2, :cond_36

    .line 155
    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-direct {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    .line 158
    :cond_36
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_ui3dinitdata:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    const-string v3, "com.sec.android.app.clockpackage"

    const/16 v4, 0x14

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->Start(Landroid/content/Context;Ljava/lang/String;I)V

    .line 162
    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_fadeAnimation:Landroid/view/animation/Animation;

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->m_fadeAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/ClockPackage;

    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    .line 166
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->parentActivity:Lcom/sec/android/app/clockpackage/ClockPackage;

    if-eqz v2, :cond_64

    sget-object v2, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_64

    .line 167
    sget-object v2, Lcom/sec/android/app/clockpackage/ClockPackage;->mFadeLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    :cond_64
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsItemInserted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_71

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userStartAnimationEffectForAddLastItem()V

    .line 172
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsItemInserted:Z

    .line 174
    .end local v1           #orientation:I
    :cond_71
    :goto_71
    return-void

    .line 135
    :catch_72
    move-exception v0

    .line 136
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->finish()V

    goto :goto_71
.end method

.method public updateDBCityCountry()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 617
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 618
    .local v2, cur:Landroid/database/Cursor;
    if-nez v2, :cond_8

    .line 639
    :goto_7
    return-void

    .line 621
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 622
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 628
    :cond_12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 629
    :goto_15
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_65

    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, whereClause:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, cityname:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 634
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 636
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_15

    .line 638
    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v1           #cityname:Ljava/lang/String;
    .end local v3           #whereClause:Ljava/lang/String;
    :cond_65
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method
