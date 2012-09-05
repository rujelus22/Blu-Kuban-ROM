.class public Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;
.super Landroid/app/Dialog;
.source "ToWorldClockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorldClockDialog"
.end annotation


# instance fields
.field private dismissReceiver:Landroid/content/BroadcastReceiver;

.field private filter:Landroid/content/IntentFilter;

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

.field private mCloseBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDBCnt:I

.field private mDBCursor:Landroid/database/Cursor;

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

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter "context"
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    .line 100
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->this$0:Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;

    .line 101
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    .line 98
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->filter:Landroid/content/IntentFilter;

    .line 156
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$3;-><init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->requestWindowFeature(I)Z

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 106
    const v1, 0x7f030039

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->setContentView(I)V

    .line 108
    invoke-static {p2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->initDefzone()V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->initList()V

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->updateDBLocale()V

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->updateCityChoice()V

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->bindList()V

    .line 116
    invoke-virtual {p0, p3}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->filter:Landroid/content/IntentFilter;

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->filter:Landroid/content/IntentFilter;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->ACTION_WORLDCLOCK_DIALOG_DISMISS:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$000(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    const v1, 0x7f0e0144

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mCloseBtn:Landroid/widget/Button;

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mCloseBtn:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v1, 0x7f0e0147

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, headbuttonlayout:Landroid/view/View;
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$2;-><init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private bindList()V
    .registers 5

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->initDBCursor()V

    .line 346
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->controlListHead()V

    .line 347
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->makeListitem()V

    .line 348
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->delDBCursor()V

    .line 350
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f03003b

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    return-void
.end method

.method private controlListHead()V
    .registers 3

    .prologue
    .line 379
    const v1, 0x7f0e013f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 381
    .local v0, mNoItemLayout_image:Landroid/widget/LinearLayout;
    iget v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCnt:I

    if-nez v1, :cond_12

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    :goto_11
    return-void

    .line 384
    :cond_12
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_11
.end method

.method private delDBCursor()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 365
    :cond_d
    :goto_d
    return-void

    .line 364
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_d
.end method

.method private dismissDialog()V
    .registers 4

    .prologue
    .line 181
    const-string v0, "ToWorldClockReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialog() start / dialog_state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismiss()V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->filter:Landroid/content/IntentFilter;

    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$302(Z)Z

    .line 186
    const-string v0, "ToWorldClockReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialog() end / dialog_state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver;->access$300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method private getCityOfDefaultTime()Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 7

    .prologue
    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 239
    .local v3, tz:Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GMT+00:00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 240
    const-string v4, "Europe/London"

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 242
    :cond_1a
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCityByTimezoneID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, cityCountry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_65

    .line 246
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, cityname:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 256
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

    .line 261
    .end local v1           #cityname:[Ljava/lang/String;
    .end local v2           #country:[Ljava/lang/String;
    :cond_65
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v4

    return-object v4
.end method

.method private getContentValues()Landroid/content/ContentValues;
    .registers 6

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getCityOfDefaultTime()Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 206
    .local v0, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v1, v:Landroid/content/ContentValues;
    if-eqz v0, :cond_77

    .line 208
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

    .line 211
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLatitude()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 215
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLongitude()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 217
    :cond_77
    return-object v1
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 370
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v6

    .line 375
    :goto_11
    return-object v6

    .line 372
    :catch_12
    move-exception v7

    .line 373
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_11
.end method

.method private initDBCursor()V
    .registers 2

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getDBAll()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCnt:I

    .line 358
    return-void
.end method

.method private initDefzone()V
    .registers 4

    .prologue
    .line 190
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, sm:Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefDefault()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 197
    :goto_12
    return-void

    .line 195
    :cond_13
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefDefault()V

    .line 196
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->setDBFactory()V

    goto :goto_12
.end method

.method private initList()V
    .registers 4

    .prologue
    .line 266
    const v0, 0x7f0e0145

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog$4;-><init>(Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mList:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->requestFocus()Z

    .line 295
    return-void
.end method

.method private makeListitem()V
    .registers 8

    .prologue
    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mItems:Ljava/util/ArrayList;

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 391
    :goto_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_40

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mDBCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_c

    .line 397
    :cond_40
    return-void
.end method

.method private setDBFactory()V
    .registers 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 202
    return-void
.end method

.method private updateCityChoice()V
    .registers 5

    .prologue
    .line 319
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cleanDBSelected()V

    .line 320
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->getDBAll()Landroid/database/Cursor;

    move-result-object v2

    .line 321
    .local v2, cur:Landroid/database/Cursor;
    if-nez v2, :cond_a

    .line 342
    :goto_9
    return-void

    .line 325
    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_14

    .line 326
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 332
    :cond_14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 333
    :goto_17
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_38

    .line 334
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, cityCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 337
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-eqz v0, :cond_34

    .line 338
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/worldclock/City;->setDBSelected(Z)V

    .line 339
    :cond_34
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_17

    .line 341
    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v1           #cityCountry:Ljava/lang/String;
    :cond_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9
.end method

.method private updateDBLocale()V
    .registers 6

    .prologue
    .line 306
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, system_locale:Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;-><init>(Landroid/content/Context;)V

    .line 310
    .local v1, sm:Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->getPrefDBLocale()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, db_locale:Ljava/lang/String;
    if-eqz v0, :cond_27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 312
    :cond_27
    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SharedManager;->setPrefDBLocale(Ljava/lang/String;)V

    .line 316
    :cond_2a
    :goto_2a
    return-void

    .line 313
    :cond_2b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    goto :goto_2a
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 299
    const-string v0, "ToWorldClockReceiver"

    const-string v1, "onBackPressed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/ToWorldClockReceiver$WorldClockDialog;->dismissDialog()V

    .line 301
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 302
    return-void
.end method
