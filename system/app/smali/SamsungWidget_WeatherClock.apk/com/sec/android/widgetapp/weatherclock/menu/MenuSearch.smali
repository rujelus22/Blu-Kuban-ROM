.class public Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;
.super Landroid/app/ListActivity;
.source "MenuSearch.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    }
.end annotation


# static fields
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

.field private cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

.field private cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

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

.field private dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

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

    .line 190
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    .line 191
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

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mappingKey:Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 97
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    .line 113
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    .line 114
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 115
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    .line 122
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mIsVisible:Z

    .line 149
    iput v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->textcount:I

    .line 154
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "Asia"

    aput-object v1, v0, v6

    const-string v1, "Middle East"

    aput-object v1, v0, v3

    const-string v1, "Oceania"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "North America"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Central America"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "South America"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Europe"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Africa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Europe"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->REGION_NAMES:[Ljava/lang/String;

    .line 168
    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v4, [I

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_d6

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_de

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_e6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_ee

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_f6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_fe

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_106

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_10e

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_116

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->REGION_POINTS:[[I

    .line 199
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    .line 201
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    .line 202
    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogEdit:Landroid/widget/EditText;

    .line 204
    iput v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->tempscale:I

    .line 478
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$11;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapHandler:Landroid/os/Handler;

    .line 506
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    .line 863
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$15;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$15;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1250
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$19;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getLocDataHandler:Landroid/os/Handler;

    .line 1350
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$20;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchHandler:Landroid/os/Handler;

    .line 1403
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$21;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1793
    return-void

    .line 168
    nop

    :array_d6
    .array-data 0x4
        0x3ft 0x2at 0x45t 0x1t
        0xact 0x31t 0x1dt 0x7t
    .end array-data

    :array_de
    .array-data 0x4
        0x26t 0x3bt 0xact 0x1t
        0xf1t 0xabt 0x6t 0x3t
    .end array-data

    :array_e6
    .array-data 0x4
        0x8ct 0xb6t 0x9ft 0xfet
        0x24t 0x4dt 0x84t 0x9t
    .end array-data

    :array_ee
    .array-data 0x4
        0x99t 0xa2t 0xb4t 0x2t
        0xe2t 0x45t 0x8bt 0xf9t
    .end array-data

    :array_f6
    .array-data 0x4
        0xfct 0x3bt 0x58t 0x0t
        0x6ft 0x57t 0xf0t 0xfat
    .end array-data

    :array_fe
    .array-data 0x4
        0x37t 0x5bt 0xb3t 0xfet
        0x2ct 0x69t 0x79t 0xfct
    .end array-data

    :array_106
    .array-data 0x4
        0xd9t 0x25t 0x2ct 0x3t
        0x71t 0x8ct 0xa5t 0x0t
    .end array-data

    :array_10e
    .array-data 0x4
        0x3ct 0x9et 0x28t 0xfft
        0x7ft 0x1ft 0xd2t 0x1t
    .end array-data

    :array_116
    .array-data 0x4
        0xd9t 0x25t 0x2ct 0x3t
        0x71t 0x8ct 0xa5t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideLoadingDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->tempscale:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$1300()I
    .registers 1

    .prologue
    .line 97
    sget v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogState:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    sput p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogState:I

    return p0
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setSLog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->stopHttpThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideAllDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->disableEditField()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getLocationInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getMccCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCities()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->enableEditField()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getSearchData()V

    return-void
.end method

.method private disableEditField()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1219
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_f

    .line 1221
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 1222
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 1224
    :cond_f
    return-void
.end method

.method private enableEditField()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1228
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_f

    .line 1230
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 1231
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 1233
    :cond_f
    return-void
.end method

.method private getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 1565
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1567
    const v0, 0x7f09001e

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 1573
    :goto_c
    return-void

    .line 1571
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mRequestCanceled:Z

    .line 1572
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performGetData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_c
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 907
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private getLocationInfo()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1236
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideAllDialog()V

    .line 1238
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1240
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1242
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->showLocatingDialog()V

    .line 1247
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getLocDataHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->performGetCurrentLocation(Landroid/os/Handler;IZZ)V

    .line 1248
    return-void
.end method

.method private getMccCode()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 676
    const-string v2, "mcc"

    const-string v3, "@@@"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 678
    .local v0, manager:Landroid/telephony/TelephonyManager;
    const-string v2, "mcc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, mcc:Ljava/lang/String;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_3d

    .line 681
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 682
    :cond_3d
    return-object v1
.end method

.method private getSearchData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1507
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1508
    const v0, 0x7f090079

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 1524
    :goto_1b
    return-void

    .line 1512
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[0-9a-zA-Z\'-]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1514
    :cond_40
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performSearch()V

    goto :goto_1b

    .line 1517
    :cond_44
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1518
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1520
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    goto :goto_1b
.end method

.method private hideAllDialog()V
    .registers 2

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideLoadingDialog()V

    .line 1081
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNetworkErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 1085
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNetworkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_18

    .line 1092
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 1096
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 1102
    :cond_15
    :goto_15
    return-void

    .line 1098
    :catch_16
    move-exception v0

    goto :goto_15

    .line 1087
    :catch_18
    move-exception v0

    goto :goto_c
.end method

.method private hideLoadingDialog()V
    .registers 4

    .prologue
    .line 1188
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->enableEditField()V

    .line 1189
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 1193
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    .line 1202
    :cond_c
    :goto_c
    return-void

    .line 1195
    :catch_d
    move-exception v0

    .line 1198
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
    .registers 11
    .parameter "cityInfo"

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1578
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v8

    .line 1579
    .local v8, tempScaleSetting:I
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v6

    .line 1581
    .local v6, location:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 1583
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_43

    .line 1585
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1587
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->showLoadingDialog()V

    .line 1590
    :cond_21
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_2c

    .line 1591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    .line 1593
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;

    invoke-direct {v5, p0, v8, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$23;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;ILcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v7

    .line 1661
    .local v7, t:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    .end local v7           #t:Ljava/lang/Thread;
    :cond_43
    return-void
.end method

.method private performMapCities()V
    .registers 16

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->showLoadingDialog()V

    .line 513
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapHandler:Landroid/os/Handler;

    if-eqz v1, :cond_f

    .line 514
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapHandler:Landroid/os/Handler;

    const v2, -0x13d30

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    :cond_f
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 518
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->syncstamp:J

    .line 520
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    const/4 v1, 0x1

    iget-wide v13, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->syncstamp:J

    invoke-direct {v0, p0, v1, v13, v14}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;ZJ)V

    .line 522
    .local v0, advHttpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 523
    .local v12, tmpcity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 524
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    :cond_2f
    :goto_2f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_97

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    if-nez v1, :cond_97

    .line 526
    const-string v9, ""

    .line 527
    .local v9, location:Ljava/lang/String;
    const/16 v6, 0x1f

    .line 528
    .local v6, count:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 529
    .local v10, sb:Ljava/lang/StringBuffer;
    :goto_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    if-lez v6, :cond_6c

    .line 531
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 532
    .local v8, item:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 535
    invoke-virtual {v8}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 540
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    :cond_65
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 544
    add-int/lit8 v6, v6, -0x1

    .line 545
    goto :goto_42

    .line 547
    .end local v8           #item:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    :cond_6c
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->tempscale:I

    invoke-virtual {v1, v9, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetMultiData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 549
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_2f

    .line 551
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v1, :cond_81

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    .line 554
    :cond_81
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v11

    .line 669
    .local v11, t:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 672
    .end local v3           #url:Ljava/net/URL;
    .end local v6           #count:I
    .end local v9           #location:Ljava/lang/String;
    .end local v10           #sb:Ljava/lang/StringBuffer;
    .end local v11           #t:Ljava/lang/Thread;
    :cond_97
    return-void
.end method

.method private performSearch()V
    .registers 9

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1529
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1530
    .local v6, parameter:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0, v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetCityList(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1531
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_43

    .line 1533
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1535
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->showLoadingDialog()V

    .line 1538
    :cond_21
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_2c

    .line 1539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    .line 1541
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$22;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$22;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v7

    .line 1559
    .local v7, t:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    .end local v7           #t:Ljava/lang/Thread;
    :cond_43
    return-void
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 890
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2d

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    .line 899
    :goto_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2c

    .line 901
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    .line 903
    :cond_2c
    return-void

    .line 896
    :cond_2d
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setKeyboardVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 1034
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 1036
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1042
    :goto_b
    return-void

    .line 1040
    :cond_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_b
.end method

.method private setSLog(I)V
    .registers 4
    .parameter

    .prologue
    .line 912
    const-string v0, "prefs_slog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 913
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 914
    const-string v1, "slog_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 915
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 917
    sput p1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 918
    return-void
.end method

.method private setSeachBtnController()V
    .registers 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchbtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$16;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$16;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    return-void
.end method

.method private showLoadingDialog()V
    .registers 4

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->disableEditField()V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_42

    .line 1109
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1110
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/16 v0, 0x3ef

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    .line 1114
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1115
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$17;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1145
    :cond_42
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1146
    return-void
.end method

.method private stopHttpThread()V
    .registers 4

    .prologue
    .line 1206
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    .line 1208
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1210
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

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

    .line 1211
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_12

    .line 1213
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Ljava/lang/Thread;
    :cond_22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    .line 1215
    :cond_25
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 959
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 960
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    .line 963
    :cond_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    if-eqz v0, :cond_17

    .line 965
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->clear()V

    .line 966
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    .line 969
    :cond_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    if-eqz v0, :cond_22

    .line 971
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->clear()V

    .line 972
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    .line 975
    :cond_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    .line 977
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 978
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    .line 981
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citynames:Ljava/util/ArrayList;

    if-eqz v0, :cond_38

    .line 983
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citynames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 984
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citynames:Ljava/util/ArrayList;

    .line 987
    :cond_38
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 989
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 990
    sput-object v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citylist:Ljava/util/ArrayList;

    .line 993
    :cond_43
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e

    .line 995
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 996
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    .line 999
    :cond_4e
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    .line 1000
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    .line 1002
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 1004
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->close()V

    .line 1005
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 1007
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 1009
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->intent:Landroid/content/Intent;

    .line 1011
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 1012
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 1014
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    .line 1015
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 1016
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mPopupDialog:Landroid/app/Dialog;

    .line 1019
    const-string v0, ""

    const-string v1, "===stopHttpThread==="

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->stopHttpThread()V

    .line 1023
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;

    .line 1024
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->map_btn:Landroid/widget/ImageView;

    .line 1025
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    .line 1028
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1029
    return-void
.end method

.method public deleteMe(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 1788
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 1789
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1791
    :cond_11
    return-void
.end method

.method public isActivityVisible()Z
    .registers 2

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mIsVisible:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x59d7

    const/16 v1, 0x3e7

    const/4 v3, -0x1

    const/16 v5, -0x3e7

    const/4 v4, 0x0

    .line 1667
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1669
    if-ne v1, p2, :cond_15

    .line 1671
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setResult(ILandroid/content/Intent;)V

    .line 1672
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    .line 1782
    :cond_14
    :goto_14
    return-void

    .line 1676
    :cond_15
    const v0, 0xf22f

    if-ne p1, v0, :cond_a3

    .line 1678
    const-string v0, "@@@"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    if-nez v0, :cond_89

    .line 1681
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setResult(ILandroid/content/Intent;)V

    .line 1682
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    .line 1737
    :cond_41
    :goto_41
    const/16 v0, 0x12c

    if-ne p2, v0, :cond_14

    .line 1739
    const-string v0, "cityinfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1740
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>()V

    .line 1742
    if-eqz v0, :cond_14

    .line 1744
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 1746
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setCity(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setState(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v1, v4}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setProvider(I)V

    .line 1752
    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLocation(Ljava/lang/String;)V

    .line 1754
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 1757
    const v0, 0x7f090020

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_14

    .line 1686
    :cond_89
    if-ne p2, v3, :cond_8f

    .line 1688
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    goto :goto_41

    .line 1692
    :cond_8f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1693
    :cond_98
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    goto :goto_41

    .line 1698
    :cond_a3
    const/16 v0, 0x3070

    if-ne p1, v0, :cond_41

    .line 1700
    const-string v0, ""

    const-string v1, "come in "

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    if-ne p2, v3, :cond_132

    .line 1703
    const-string v0, "cityinfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1704
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;-><init>()V

    .line 1705
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setCity(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLocation(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getProvider()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setProvider(I)V

    .line 1710
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setState(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getZoomlevel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setZoomlevel(I)V

    .line 1712
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    if-eqz v0, :cond_12a

    .line 1713
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1716
    :goto_f7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    .line 1719
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    const v1, 0x7f03002a

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    .line 1720
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1722
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1723
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->notifyDataSetChanged()V

    goto/16 :goto_41

    .line 1715
    :cond_12a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    goto :goto_f7

    .line 1727
    :cond_132
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideLoadingDialog()V

    .line 1728
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1729
    :cond_13e
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    .line 1731
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->performMapCancled:Z

    .line 1732
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mRequestCanceled:Z

    .line 1733
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    goto/16 :goto_41

    .line 1761
    :cond_155
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->intent:Landroid/content/Intent;

    .line 1762
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->intent:Landroid/content/Intent;

    const-string v3, "flags"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x7cf

    if-eq v0, v3, :cond_171

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->intent:Landroid/content/Intent;

    const-string v3, "flags"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_179

    .line 1764
    :cond_171
    invoke-static {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1765
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto/16 :goto_14

    .line 1767
    :cond_179
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->intent:Landroid/content/Intent;

    const-string v2, "flags"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x2edf

    if-ne v0, v2, :cond_18a

    .line 1769
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto/16 :goto_14

    .line 1771
    :cond_18a
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->intent:Landroid/content/Intent;

    const-string v2, "flags"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_14

    .line 1773
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto/16 :goto_14
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 953
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "bundel"

    .prologue
    const v8, 0x7f03002a

    .line 213
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    const v5, 0x7f030029

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setContentView(I)V

    .line 215
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setActivityVisibleState(Z)V

    .line 216
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 218
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mcl:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    .line 219
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 220
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v5}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 221
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 222
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 223
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getResultType()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_170

    .line 225
    const v5, 0x7f09006b

    invoke-static {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 226
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    .line 227
    .local v4, timer:Ljava/util/Timer;
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$2;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 239
    .end local v4           #timer:Ljava/util/Timer;
    :goto_54
    const v5, 0x7f0c007f

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchbtn:Landroid/widget/ImageView;

    .line 242
    const v5, 0x7f0c0082

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mNoSearchText:Landroid/widget/TextView;

    .line 243
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    .line 244
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    invoke-direct {v5, p0, p0, v8, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    .line 245
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->lstCity:Ljava/util/ArrayList;

    invoke-direct {v5, p0, p0, v8, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter2:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    .line 246
    const v5, 0x7f0c007e

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/AutoCompleteTextView;

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    .line 247
    const v5, 0x7f0c0081

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;

    .line 248
    const v5, 0x7f0c0080

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->map_btn:Landroid/widget/ImageView;

    .line 249
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->setSingleLine()V

    .line 250
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setSeachBtnController()V

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 254
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 255
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_c4

    .line 256
    const-string v5, "appWidgetId"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mAppWidgetId:I

    .line 260
    :cond_c4
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$3;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 268
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getListView()Landroid/widget/ListView;

    move-result-object v5

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$4;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 318
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->map_btn:Landroid/widget/ImageView;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 410
    sget-boolean v5, Lcom/sec/android/widgetapp/weatherclock/common/Constants;->ENABLE_JAPAN_PROTOCOL:Z

    if-nez v5, :cond_110

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 411
    :cond_110
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    const v6, 0x7f090061

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 412
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    const/high16 v6, 0x4170

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 419
    :goto_11f
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$7;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$8;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$8;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$9;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$9;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 456
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 458
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v5

    if-nez v5, :cond_151

    .line 459
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->gps_btn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->performClick()Z

    .line 461
    :cond_151
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$10;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$10;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 468
    .local v3, myTask:Ljava/util/TimerTask;
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    .line 469
    .restart local v4       #timer:Ljava/util/Timer;
    const-wide/16 v5, 0x258

    invoke-virtual {v4, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 472
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 473
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    return-void

    .line 237
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #myTask:Ljava/util/TimerTask;
    .end local v4           #timer:Ljava/util/Timer;
    :cond_170
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->tempscale:I

    goto/16 :goto_54

    .line 415
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_17a
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;

    const v6, 0x7f090024

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    goto :goto_11f
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 743
    packed-switch p1, :pswitch_data_10e

    .line 860
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 746
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 747
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 748
    const v0, 0x7f0c0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    .line 750
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 752
    const v0, 0x7f0c0012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    .line 753
    const v0, 0x7f0c0017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogEdit:Landroid/widget/EditText;

    .line 754
    sget v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogState:I

    .line 755
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 757
    sget v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogState:I

    packed-switch v0, :pswitch_data_114

    .line 778
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$14;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$14;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$13;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$13;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 761
    :pswitch_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 767
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0015

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 773
    :pswitch_e0
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 743
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 757
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 939
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 940
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setActivityVisibleState(Z)V

    .line 942
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    if-eqz v0, :cond_10

    .line 943
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;->close()V

    .line 946
    :cond_10
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    .line 947
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cleanResource()V

    .line 948
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 717
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

    .line 721
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 723
    const/4 v0, 0x4

    if-ne p1, v0, :cond_27

    .line 725
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V

    .line 728
    :cond_27
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 730
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->showDialog(I)V

    .line 731
    const-string v0, ""

    invoke-direct {p0, v0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 736
    :cond_3d
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1046
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1047
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cityListAdapter:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$MenuAddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1048
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 1050
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1052
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1053
    const-string v2, "searchlocation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1055
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->startActivity(Landroid/content/Intent;)V

    .line 1057
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setResult(I)V

    .line 1058
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    .line 1064
    :goto_3b
    return-void

    .line 1062
    :cond_3c
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getData(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V

    goto :goto_3b
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 697
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 699
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->stopHttpThread()V

    .line 702
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setActivityVisibleState(Z)V

    .line 703
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 706
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 707
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->hideAllDialog()V

    .line 710
    :cond_18
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 923
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 925
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    if-nez v0, :cond_1a

    .line 927
    const-string v0, ""

    const-string v1, "Don`t have Data in DB so finish!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setResult(ILandroid/content/Intent;)V

    .line 929
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->finish()V

    .line 933
    :cond_1a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setActivityVisibleState(Z)V

    .line 934
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 935
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mIsVisible:Z

    .line 693
    return-void
.end method

.method public showLocatingDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1150
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1151
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->disableEditField()V

    .line 1152
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_29

    .line 1155
    const/4 v0, 0x0

    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    .line 1157
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$18;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$18;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1183
    :cond_29
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1184
    return-void
.end method
