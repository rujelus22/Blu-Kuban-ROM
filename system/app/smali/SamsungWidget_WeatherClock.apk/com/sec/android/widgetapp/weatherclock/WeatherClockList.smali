.class public Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;
.super Landroid/app/Activity;
.source "WeatherClockList.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;
    }
.end annotation


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field add_btn:Landroid/view/View;

.field cityCountHandler:Landroid/os/Handler;

.field private cityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field private dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field private headerscount:I

.field private listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

.field private listview:Landroid/widget/ListView;

.field private mAppWidgetId:I

.field private mCityCount:Landroid/widget/TextView;

.field mIsVisible:Z

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private menu:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->keyBuf:Ljava/lang/String;

    .line 79
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

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mappingKey:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogText:Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mCityCount:Landroid/widget/TextView;

    .line 90
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;

    .line 91
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogEdit:Landroid/widget/EditText;

    .line 93
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->headerscount:I

    .line 95
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I

    .line 475
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 704
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityCountHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->headerscount:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 66
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogState:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogState:I

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setSLog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mCityCount:Landroid/widget/TextView;

    return-object v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 502
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2d

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->keyBuf:Ljava/lang/String;

    .line 511
    :goto_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2c

    .line 513
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->keyBuf:Ljava/lang/String;

    .line 515
    :cond_2c
    return-void

    .line 508
    :cond_2d
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 524
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 525
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 526
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 527
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    sput p1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 530
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 271
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    .line 275
    :cond_11
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    if-eqz v0, :cond_1c

    .line 277
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->clear()V

    .line 278
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    .line 281
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->close()V

    .line 282
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 284
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    .line 285
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->menu:Landroid/view/Menu;

    .line 286
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    .line 287
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;

    .line 288
    return-void
.end method

.method public isActivityVisible()Z
    .registers 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mIsVisible:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v4, 0x3e7

    .line 611
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 612
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 613
    .local v2, msg:Landroid/os/Message;
    if-ne v4, p2, :cond_14

    .line 614
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setResult(ILandroid/content/Intent;)V

    .line 615
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->finish()V

    .line 645
    :goto_13
    return-void

    .line 619
    :cond_14
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 620
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    .line 622
    .local v0, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2d

    .line 623
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setResult(I)V

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->finish()V

    goto :goto_13

    .line 628
    :cond_2d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_40

    .line 629
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 631
    :cond_40
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;->notifyDataSetChanged()V

    .line 633
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 634
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 635
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityCountHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->menu:Landroid/view/Menu;

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_13
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    if-eqz v0, :cond_40

    .line 246
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 247
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    const v1, 0x7f030022

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    .line 249
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    .line 251
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    :cond_40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "bundle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v5, 0x7f030020

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setContentView(I)V

    .line 104
    invoke-virtual {p0, v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setActivityVisibleState(Z)V

    .line 105
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 106
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 107
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    .line 108
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    const v6, 0x7f030022

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    .line 109
    const v5, 0x7f0c0066

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 112
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 113
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_49

    .line 114
    const-string v5, "appWidgetId"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I

    .line 117
    :cond_49
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    .line 119
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 120
    .local v3, ly:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    invoke-virtual {v3, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 122
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$1;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    const v6, 0x7f0c0006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mCityCount:Landroid/widget/TextView;

    .line 142
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 143
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 145
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listAdapter:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$WeatherClockListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->listview:Landroid/widget/ListView;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$3;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 230
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mCityCount:Landroid/widget/TextView;

    const-string v6, "( 0 )"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 232
    .local v4, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    .local v0, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c5

    .line 235
    iput v9, v4, Landroid/os/Message;->what:I

    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 237
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cityCountHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    :cond_c5
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 355
    packed-switch p1, :pswitch_data_10e

    .line 472
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 358
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 359
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 360
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;

    .line 362
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 364
    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogText:Landroid/widget/TextView;

    .line 365
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogEdit:Landroid/widget/EditText;

    .line 366
    sget v2, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogState:I

    .line 367
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 369
    sget v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 390
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$5;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 373
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 379
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 385
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 355
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 369
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menus"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 536
    if-eqz p1, :cond_84

    .line 537
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-eqz v4, :cond_12

    .line 538
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 540
    :cond_12
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->menu:Landroid/view/Menu;

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 542
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v4

    if-nez v4, :cond_7d

    .line 543
    const v4, 0x7f0b0002

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 544
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    .line 545
    .local v0, cityCount:I
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 547
    if-ge v0, v6, :cond_5f

    .line 548
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 549
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 556
    :goto_43
    if-nez v0, :cond_6e

    .line 557
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 558
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 565
    :goto_53
    const/16 v4, 0xa

    if-ne v0, v4, :cond_5e

    .line 566
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 574
    .end local v0           #cityCount:I
    .end local v1           #inflater:Landroid/view/MenuInflater;
    :cond_5e
    :goto_5e
    return v2

    .line 552
    .restart local v0       #cityCount:I
    .restart local v1       #inflater:Landroid/view/MenuInflater;
    :cond_5f
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 553
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_43

    .line 561
    :cond_6e
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 562
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_53

    .line 569
    .end local v0           #cityCount:I
    :cond_7d
    const v3, 0x7f0b0001

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_5e

    .end local v1           #inflater:Landroid/view/MenuInflater;
    :cond_84
    move v2, v3

    .line 574
    goto :goto_5e
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->cleanResource()V

    .line 263
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 334
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

    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 340
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 342
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->showDialog(I)V

    .line 343
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 348
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x32c7

    const/16 v4, 0x2edf

    const/4 v0, 0x1

    .line 578
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_78

    .line 607
    :pswitch_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 580
    :pswitch_e
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    const-string v2, "flags"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0, v1, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 586
    :pswitch_25
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string v2, "flags"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 592
    :pswitch_3c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuChangeOrders;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    const/16 v2, 0x36af

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 597
    :pswitch_50
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 598
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    const/16 v2, 0x7917

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 602
    :pswitch_64
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 603
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const/16 v2, 0x55ef

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 578
    :pswitch_data_78
    .packed-switch 0x7f0c00c4
        :pswitch_e
        :pswitch_25
        :pswitch_c
        :pswitch_50
        :pswitch_64
        :pswitch_3c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 300
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setActivityVisibleState(Z)V

    .line 301
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 302
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 307
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    if-nez v0, :cond_1c

    .line 309
    const-string v0, ""

    const-string v1, "Don`t have Data in DB so finish!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setResult(ILandroid/content/Intent;)V

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->finish()V

    .line 315
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 317
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 325
    :goto_2e
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->setActivityVisibleState(Z)V

    .line 326
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 327
    return-void

    .line 322
    :cond_35
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->add_btn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2e
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mIsVisible:Z

    .line 296
    return-void
.end method
