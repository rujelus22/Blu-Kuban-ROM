.class public Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;
.super Landroid/app/ListActivity;
.source "MenuAdd.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    }
.end annotation


# static fields
.field public static autoCompleteCity:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static citylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private COLLAB_MODE:Z

.field private LogGroup:Landroid/widget/RadioGroup;

.field REGION_NAMES:[Ljava/lang/String;

.field REGION_POINTS:[[I

.field cities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

.field private cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

.field private citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

.field citynames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field private dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field private getDataHandler:Landroid/os/Handler;

.field getLocDataHandler:Landroid/os/Handler;

.field private gps_btn:Landroid/widget/Button;

.field private httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private intent:Landroid/content/Intent;

.field private lstCity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetId:I

.field public mHttpThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field mIsVisible:Z

.field public mLoadingDialog:Landroid/app/Dialog;

.field private mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

.field public mNetworkErrorDialog:Landroid/app/Dialog;

.field private mNoSearchText:Landroid/widget/TextView;

.field public mPopupDialog:Landroid/app/Dialog;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private volatile mRequestCanceled:Z

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field mapHandler:Landroid/os/Handler;

.field private map_btn:Landroid/widget/ImageView;

.field mapweather:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

.field private parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

.field public performMapCancled:Z

.field point:[I

.field region:I

.field private searchEditText:Landroid/widget/AutoCompleteTextView;

.field searchHandler:Landroid/os/Handler;

.field private searchbtn:Landroid/widget/ImageView;

.field syncstamp:J

.field private tempscale:I

.field public textcount:I

.field private urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    .line 189
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    .line 190
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

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mappingKey:Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 95
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    .line 111
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 112
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 113
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    .line 120
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mIsVisible:Z

    .line 147
    iput v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->textcount:I

    .line 149
    iput v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->region:I

    .line 153
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "Asia"

    aput-object v1, v0, v7

    const-string v1, "Middle East"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Oceania"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "North America"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Central America"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "South America"

    aput-object v2, v0, v1

    const-string v1, "Europe"

    aput-object v1, v0, v6

    const/16 v1, 0x8

    const-string v2, "Africa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Europe"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->REGION_NAMES:[Ljava/lang/String;

    .line 167
    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v4, [I

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e0

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_e8

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_f0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_f8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_100

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_108

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_110

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_118

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_120

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->REGION_POINTS:[[I

    .line 198
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    .line 200
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    .line 201
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogEdit:Landroid/widget/EditText;

    .line 203
    iput v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->tempscale:I

    .line 208
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z

    .line 586
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$12;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapHandler:Landroid/os/Handler;

    .line 616
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCancled:Z

    .line 976
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$16;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$16;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1415
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$20;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getLocDataHandler:Landroid/os/Handler;

    .line 1548
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$21;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchHandler:Landroid/os/Handler;

    .line 1602
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$22;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1772
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;

    .line 2045
    return-void

    .line 167
    :array_e0
    .array-data 0x4
        0x3ft 0x2at 0x45t 0x1t
        0xact 0x31t 0x1dt 0x7t
    .end array-data

    :array_e8
    .array-data 0x4
        0x26t 0x3bt 0xact 0x1t
        0xf1t 0xabt 0x6t 0x3t
    .end array-data

    :array_f0
    .array-data 0x4
        0x8ct 0xb6t 0x9ft 0xfet
        0x24t 0x4dt 0x84t 0x9t
    .end array-data

    :array_f8
    .array-data 0x4
        0x99t 0xa2t 0xb4t 0x2t
        0xe2t 0x45t 0x8bt 0xf9t
    .end array-data

    :array_100
    .array-data 0x4
        0xfct 0x3bt 0x58t 0x0t
        0x6ft 0x57t 0xf0t 0xfat
    .end array-data

    :array_108
    .array-data 0x4
        0x37t 0x5bt 0xb3t 0xfet
        0x2ct 0x69t 0x79t 0xfct
    .end array-data

    :array_110
    .array-data 0x4
        0xd9t 0x25t 0x2ct 0x3t
        0x71t 0x8ct 0xa5t 0x0t
    .end array-data

    :array_118
    .array-data 0x4
        0x3ct 0x9et 0x28t 0xfft
        0x7ft 0x1ft 0xd2t 0x1t
    .end array-data

    :array_120
    .array-data 0x4
        0xd9t 0x25t 0x2ct 0x3t
        0x71t 0x8ct 0xa5t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->tempscale:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$1300()I
    .registers 1

    .prologue
    .line 95
    sget v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogState:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    sput p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogState:I

    return p0
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setSLog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->stopHttpThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->disableEditField()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->checkResultCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getLocationInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getMccCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCities()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->enableEditField()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSearchData()V

    return-void
.end method

.method private checkResultCode(I)I
    .registers 5
    .parameter "resultCode"

    .prologue
    const/4 v2, -0x1

    .line 2032
    const/4 v0, 0x0

    .line 2033
    .local v0, result:I
    if-ne v2, p1, :cond_7

    .line 2035
    const/16 v0, 0x3e7

    .line 2042
    :cond_6
    :goto_6
    return v0

    .line 2037
    :cond_7
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getResultType()I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 2040
    const/16 v0, 0x3e7

    goto :goto_6
.end method

.method private disableEditField()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1384
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_f

    .line 1386
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 1387
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 1389
    :cond_f
    return-void
.end method

.method private enableEditField()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1393
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_f

    .line 1395
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 1396
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 1398
    :cond_f
    return-void
.end method

.method private getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 1762
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1764
    const v0, 0x7f09001e

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 1770
    :goto_c
    return-void

    .line 1768
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z

    .line 1769
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performGetData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_c
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1020
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private getLocationInfo()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1402
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V

    .line 1404
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1406
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1408
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->showLocatingDialog()V

    .line 1410
    :cond_1f
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "G_Btn Progress Dlg performed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getLocDataHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->performGetCurrentLocation(Landroid/os/Handler;IZZ)V

    .line 1413
    return-void
.end method

.method private getMccCode()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 788
    const-string v0, "Mc"

    const-string v1, "@@@"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 790
    const-string v1, "Mc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_3d

    .line 793
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 794
    :cond_3d
    return-object v0
.end method

.method private getSearchData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1704
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1705
    const v0, 0x7f090079

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 1721
    :goto_1b
    return-void

    .line 1709
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[0-9a-zA-Z\'-]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1711
    :cond_40
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performSearch()V

    goto :goto_1b

    .line 1714
    :cond_44
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1715
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1717
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V

    goto :goto_1b
.end method

.method private hideAllDialog()V
    .registers 2

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNetworkErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 1250
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNetworkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_18

    .line 1257
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 1261
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 1267
    :cond_15
    :goto_15
    return-void

    .line 1263
    :catch_16
    move-exception v0

    goto :goto_15

    .line 1252
    :catch_18
    move-exception v0

    goto :goto_c
.end method

.method private hideLoadingDialog()V
    .registers 4

    .prologue
    .line 1353
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->enableEditField()V

    .line 1354
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 1358
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_10

    .line 1365
    :goto_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 1367
    :cond_f
    return-void

    .line 1360
    :catch_10
    move-exception v0

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MenuAdd.hideLoadingDialog() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private performGetData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
    .registers 13
    .parameter "cityInfo"

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1777
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v8

    .line 1778
    .local v8, tempScaleSetting:I
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v6

    .line 1780
    .local v6, location:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 1782
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_4f

    .line 1784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    .line 1785
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1787
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->showLoadingDialog()V

    .line 1790
    :cond_27
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_32

    .line 1791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    .line 1793
    :cond_32
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    const/4 v1, 0x1

    iget-wide v9, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    invoke-direct {v0, p0, v1, v9, v10}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;ZJ)V

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;

    invoke-direct {v5, p0, v8, p1, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$24;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;ILcom/sec/android/widgetapp/weatherclock/model/CityInfo;Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v7

    .line 2017
    .local v7, t:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    .end local v7           #t:Ljava/lang/Thread;
    :cond_4f
    return-void
.end method

.method private performMapCities()V
    .registers 10

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->showLoadingDialog()V

    .line 623
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 624
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapHandler:Landroid/os/Handler;

    const v1, -0x13d30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 626
    :cond_f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    .line 629
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->syncstamp:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;ZJ)V

    .line 631
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    .line 632
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 634
    :cond_30
    :goto_30
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ba

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->performMapCancled:Z

    if-nez v1, :cond_ba

    .line 636
    const-string v2, ""

    .line 637
    const/16 v1, 0x1f

    .line 638
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v8, v1

    move-object v1, v2

    move v2, v8

    .line 639
    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    if-lez v2, :cond_72

    .line 641
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 642
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 645
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 650
    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    :cond_69
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v3

    .line 656
    goto :goto_46

    .line 658
    :cond_72
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->tempscale:I

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetMultiData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 659
    if-eqz v3, :cond_30

    .line 661
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tomap url "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v1, :cond_a3

    .line 663
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    .line 665
    :cond_a3
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$13;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v1

    .line 781
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    .line 784
    :cond_ba
    return-void
.end method

.method private performSearch()V
    .registers 7

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1726
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1727
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetCityList(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1728
    if-eqz v3, :cond_5f

    .line 1730
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1733
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->showLoadingDialog()V

    .line 1736
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_48

    .line 1737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    .line 1739
    :cond_48
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$23;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$23;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v0

    .line 1756
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    :cond_5f
    return-void
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 1003
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2d

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    .line 1012
    :goto_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2c

    .line 1014
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    .line 1016
    :cond_2c
    return-void

    .line 1009
    :cond_2d
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setKeyboardVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 1160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 1162
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1168
    :goto_b
    return-void

    .line 1166
    :cond_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_b
.end method

.method private setSLog(I)V
    .registers 4
    .parameter

    .prologue
    .line 1025
    const-string v0, "prefs_slog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1026
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1027
    const-string v1, "slog_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1028
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1030
    sput p1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 1031
    return-void
.end method

.method private setSeachBtnController()V
    .registers 3

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchbtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$17;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$17;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    return-void
.end method

.method private showLoadingDialog()V
    .registers 3

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1273
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->disableEditField()V

    .line 1274
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_25

    .line 1276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z

    .line 1278
    const/16 v0, 0x3ef

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 1280
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$18;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1308
    :cond_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1309
    return-void
.end method

.method private stopHttpThread()V
    .registers 4

    .prologue
    .line 1371
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    .line 1373
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1375
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 1376
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_12

    .line 1378
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Ljava/lang/Thread;
    :cond_22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    .line 1380
    :cond_25
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1077
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 1079
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1080
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;

    .line 1083
    :cond_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    if-eqz v0, :cond_17

    .line 1085
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->clear()V

    .line 1086
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    .line 1089
    :cond_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    if-eqz v0, :cond_22

    .line 1091
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->clear()V

    .line 1092
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    .line 1095
    :cond_22
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 1097
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->close()V

    .line 1098
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 1100
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 1102
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    .line 1104
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 1105
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 1108
    const-string v0, ""

    const-string v1, "stopHttpThread"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->stopHttpThread()V

    .line 1112
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 1113
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 1114
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    .line 1116
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->autoCompleteCity:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_4e

    .line 1118
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->autoCompleteCity:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1119
    sput-object v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->autoCompleteCity:Landroid/widget/ArrayAdapter;

    .line 1122
    :cond_4e
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_59

    .line 1124
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1125
    sput-object v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citylist:Ljava/util/ArrayList;

    .line 1128
    :cond_59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    if-eqz v0, :cond_64

    .line 1130
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1131
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cities:Ljava/util/ArrayList;

    .line 1134
    :cond_64
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citynames:Ljava/util/ArrayList;

    if-eqz v0, :cond_6f

    .line 1136
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citynames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1137
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citynames:Ljava/util/ArrayList;

    .line 1140
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    if-eqz v0, :cond_7a

    .line 1142
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1143
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    .line 1146
    :cond_7a
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;

    .line 1147
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->map_btn:Landroid/widget/ImageView;

    .line 1148
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchbtn:Landroid/widget/ImageView;

    .line 1149
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1150
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    .line 1153
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1154
    return-void
.end method

.method public deleteMe(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 2025
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 2026
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    :cond_11
    return-void
.end method

.method public isActivityVisible()Z
    .registers 2

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mIsVisible:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v9, 0x59d7

    const/4 v8, 0x0

    const/16 v7, -0x3e7

    .line 522
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@@@@@@@@@ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/16 v4, 0x61a7

    if-ne p1, v4, :cond_a0

    if-eqz p3, :cond_a0

    .line 525
    const-string v4, "cityinfo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 526
    .local v1, info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    if-eqz v1, :cond_a0

    .line 528
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, location:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>()V

    .line 530
    .local v0, cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setCity(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, v8}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setProvider(I)V

    .line 534
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setState(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLocation(Ljava/lang/String;)V

    .line 537
    iget-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z

    if-eqz v4, :cond_8e

    .line 539
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v3, result:Landroid/content/Intent;
    const-string v4, "CITY_NAME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string v4, "CITY_STATE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v4, "CITY_ID"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setResult(ILandroid/content/Intent;)V

    .line 545
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 583
    .end local v0           #cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v1           #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .end local v2           #location:Ljava/lang/String;
    .end local v3           #result:Landroid/content/Intent;
    :goto_8d
    return-void

    .line 549
    .restart local v0       #cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .restart local v1       #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .restart local v2       #location:Ljava/lang/String;
    :cond_8e
    const/16 v4, 0x12c

    if-ne p2, v4, :cond_e5

    .line 551
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 554
    const v4, 0x7f090020

    invoke-static {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 582
    .end local v0           #cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v1           #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .end local v2           #location:Ljava/lang/String;
    :cond_a0
    :goto_a0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_8d

    .line 558
    .restart local v0       #cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .restart local v1       #info:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .restart local v2       #location:Ljava/lang/String;
    :cond_a4
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    .line 559
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    const-string v5, "flags"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x7cf

    if-eq v4, v5, :cond_c0

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    const-string v5, "flags"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_c7

    .line 561
    :cond_c0
    invoke-static {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_a0

    .line 564
    :cond_c7
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    const-string v5, "flags"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x2edf

    if-ne v4, v5, :cond_d7

    .line 566
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_a0

    .line 568
    :cond_d7
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    const-string v5, "flags"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_a0

    .line 570
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_a0

    .line 576
    :cond_e5
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideLoadingDialog()V

    .line 577
    iput-boolean v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z

    goto :goto_a0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 1072
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1073
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "bundel"

    .prologue
    const v12, 0x7f030024

    const/4 v11, 0x0

    .line 215
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const v8, 0x7f030023

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setContentView(I)V

    .line 218
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setActivityVisibleState(Z)V

    .line 219
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 220
    iput-object p0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->ctx:Landroid/content/Context;

    .line 222
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    .line 223
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 224
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v8}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 225
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 226
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 227
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getResultType()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1a7

    .line 229
    const v8, 0x7f09006b

    invoke-static {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 230
    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    .line 231
    .local v7, timer:Ljava/util/Timer;
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$2;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    const-wide/16 v9, 0x7d0

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 242
    .end local v7           #timer:Ljava/util/Timer;
    :goto_57
    const v8, 0x7f0c006d

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchbtn:Landroid/widget/ImageView;

    .line 244
    const v8, 0x7f0c0072

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mNoSearchText:Landroid/widget/TextView;

    .line 245
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;

    .line 246
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;

    invoke-direct {v8, p0, p0, v12, v9}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    .line 247
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->lstCity:Ljava/util/ArrayList;

    invoke-direct {v8, p0, p0, v12, v9}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    .line 248
    const v8, 0x7f0c006c

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    .line 249
    const v8, 0x7f0c0070

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;

    .line 250
    const v8, 0x7f0c006e

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->map_btn:Landroid/widget/ImageView;

    .line 252
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->setSingleLine()V

    .line 253
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setSeachBtnController()V

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 257
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 258
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_c6

    .line 259
    const-string v8, "appWidgetId"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mAppWidgetId:I

    .line 262
    :cond_c6
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$3;

    invoke-direct {v9, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 271
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getListView()Landroid/widget/ListView;

    move-result-object v8

    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$4;

    invoke-direct {v9, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 301
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;

    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    invoke-direct {v9, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->map_btn:Landroid/widget/ImageView;

    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;

    invoke-direct {v9, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 419
    sget-boolean v8, Lcom/sec/android/widgetapp/weatherclock/common/Constants;->ENABLE_JAPAN_PROTOCOL:Z

    if-nez v8, :cond_112

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1b1

    .line 420
    :cond_112
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    const v9, 0x7f090061

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 421
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    const/high16 v9, 0x4170

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 427
    :goto_121
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$7;

    invoke-direct {v9, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 435
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$8;

    invoke-direct {v9, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$8;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$9;

    invoke-direct {v9, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$9;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 468
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$10;

    invoke-direct {v9, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$10;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 485
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 487
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    if-nez v8, :cond_15b

    .line 488
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v8, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 490
    :cond_15b
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v8

    if-nez v8, :cond_188

    iget-boolean v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z

    if-nez v8, :cond_188

    .line 492
    const-string v8, "location"

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    .line 493
    .local v5, locationManager:Landroid/location/LocationManager;
    const-string v8, "gps"

    invoke-virtual {v5, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 494
    .local v3, isGpsEnabled:Z
    const-string v8, "network"

    invoke-virtual {v5, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 495
    .local v4, isNetworkEnabled:Z
    if-nez v3, :cond_17f

    if-eqz v4, :cond_1bb

    .line 496
    :cond_17f
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;

    if-eqz v8, :cond_188

    .line 497
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->performClick()Z

    .line 503
    .end local v3           #isGpsEnabled:Z
    .end local v4           #isNetworkEnabled:Z
    .end local v5           #locationManager:Landroid/location/LocationManager;
    :cond_188
    :goto_188
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$11;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$11;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 510
    .local v6, myTask:Ljava/util/TimerTask;
    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    .line 511
    .restart local v7       #timer:Ljava/util/Timer;
    const-wide/16 v8, 0x258

    invoke-virtual {v7, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 514
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 515
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v8, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    return-void

    .line 240
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #myTask:Ljava/util/TimerTask;
    .end local v7           #timer:Ljava/util/Timer;
    :cond_1a7
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v8

    iput v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->tempscale:I

    goto/16 :goto_57

    .line 424
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1b1
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchEditText:Landroid/widget/AutoCompleteTextView;

    const v9, 0x7f090024

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    goto/16 :goto_121

    .line 499
    .restart local v3       #isGpsEnabled:Z
    .restart local v4       #isNetworkEnabled:Z
    .restart local v5       #locationManager:Landroid/location/LocationManager;
    :cond_1bb
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->gps_btn:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_188
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 856
    packed-switch p1, :pswitch_data_10e

    .line 973
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 859
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 860
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 861
    const v0, 0x7f0c0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    .line 863
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 865
    const v0, 0x7f0c0012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    .line 866
    const v0, 0x7f0c0017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogEdit:Landroid/widget/EditText;

    .line 867
    sget v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogState:I

    .line 868
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 870
    sget v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogState:I

    packed-switch v0, :pswitch_data_114

    .line 891
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$15;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$15;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$14;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$14;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 874
    :pswitch_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 880
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0015

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 886
    :pswitch_e0
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 856
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 870
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
    const/4 v0, 0x0

    .line 1062
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1063
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setActivityVisibleState(Z)V

    .line 1064
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V

    .line 1066
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cleanResource()V

    .line 1067
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 830
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

    .line 834
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 836
    const/4 v0, 0x4

    if-ne p1, v0, :cond_27

    .line 838
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V

    .line 841
    :cond_27
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 843
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->showDialog(I)V

    .line 844
    const-string v0, ""

    invoke-direct {p0, v0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 849
    :cond_3d
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/16 v6, 0x59d7

    const/16 v5, -0x3e7

    .line 1172
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1173
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;

    invoke-virtual {v3, p3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$MenuAddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1174
    .local v0, cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, location:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z

    if-eqz v3, :cond_3f

    .line 1178
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1179
    .local v2, result:Landroid/content/Intent;
    const-string v3, "CITY_NAME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    const-string v3, "CITY_STATE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v3, "CITY_ID"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setResult(ILandroid/content/Intent;)V

    .line 1184
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->finish()V

    .line 1211
    .end local v2           #result:Landroid/content/Intent;
    :cond_3e
    :goto_3e
    return-void

    .line 1189
    :cond_3f
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1191
    const v3, 0x7f090020

    invoke-static {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_3e

    .line 1195
    :cond_4e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    .line 1196
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    const-string v4, "flags"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x7cf

    if-eq v3, v4, :cond_6a

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    const-string v4, "flags"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_71

    .line 1198
    :cond_6a
    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1199
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_3e

    .line 1201
    :cond_71
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    const-string v4, "flags"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x2edf

    if-ne v3, v4, :cond_81

    .line 1203
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_3e

    .line 1205
    :cond_81
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->intent:Landroid/content/Intent;

    const-string v4, "flags"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3e

    .line 1207
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_3e
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 809
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 812
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->stopHttpThread()V

    .line 813
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getLocDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->searchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 817
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setActivityVisibleState(Z)V

    .line 818
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_37

    .line 821
    :cond_34
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->hideAllDialog()V

    .line 823
    :cond_37
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1037
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 1039
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LAUNCH_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_59

    const-string v1, "COLLAB_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1041
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z

    .line 1045
    :goto_1a
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z

    if-eqz v0, :cond_29

    .line 1047
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->map_btn:Landroid/widget/ImageView;

    if-eqz v0, :cond_29

    .line 1049
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->map_btn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1053
    :cond_29
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 1054
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    if-eqz v0, :cond_52

    .line 1055
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapWthr.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_52
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setActivityVisibleState(Z)V

    .line 1057
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 1058
    return-void

    .line 1043
    :cond_59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->COLLAB_MODE:Z

    goto :goto_1a
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mIsVisible:Z

    .line 805
    return-void
.end method

.method public showLocatingDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1313
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1314
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->disableEditField()V

    .line 1315
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_31

    .line 1317
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mRequestCanceled:Z

    .line 1319
    const/4 v0, 0x0

    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    .line 1320
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1322
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$19;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1348
    :cond_31
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1349
    return-void
.end method
