.class public Lcom/sec/android/widgetapp/weatherclock/MapsActivity;
.super Lcom/google/android/maps/MapActivity;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;,
        Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;
    }
.end annotation


# instance fields
.field private UpdateText:Landroid/widget/TextView;

.field backpressed:Z

.field clonelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field dataHandler:Landroid/os/Handler;

.field private dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field private detailAdd:Z

.field detailAddHandler:Landroid/os/Handler;

.field detailHandler:Landroid/os/Handler;

.field private detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

.field dialog:Landroid/app/Dialog;

.field dialog_selected:I

.field private display:Landroid/view/Display;

.field private gps_btn:Landroid/widget/ImageView;

.field private height:I

.field private httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

.field initGeoPoint:Lcom/google/android/maps/GeoPoint;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field kocities:[Ljava/lang/String;

.field koids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field kolocation:[Lcom/google/android/maps/GeoPoint;

.field latitude:I

.field launcher:I

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field loadingHandler:Landroid/os/Handler;

.field locHandler:Landroid/os/Handler;

.field longitude:I

.field private mAppWidgetId:I

.field public mDecryptKey:Ljava/security/Key;

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

.field private mLoadingDialog:Landroid/app/Dialog;

.field private mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mRequestCanceled:Z

.field mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

.field private mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

.field private map_btn:Landroid/widget/ImageView;

.field private menu_add_search_button:Landroid/widget/ImageView;

.field private menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

.field private mlo:Lcom/google/android/maps/MyLocationOverlay;

.field private myLocationListener:Landroid/location/LocationListener;

.field private myLocationManager:Landroid/location/LocationManager;

.field private myMapController:Lcom/google/android/maps/MapController;

.field myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

.field parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

.field positive:Z

.field pre_lat:D

.field pre_loc:Ljava/lang/String;

.field pre_lon:D

.field private retry:Z

.field tempimg:I

.field tempscale:I

.field public textcount:I

.field urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

.field private width:I

.field zoomHandler:Landroid/os/Handler;

.field private zoomlevel:I

.field zoomlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 94
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    .line 97
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mlo:Lcom/google/android/maps/MyLocationOverlay;

    .line 98
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    .line 100
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->clonelist:Ljava/util/ArrayList;

    .line 110
    iput v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->textcount:I

    .line 111
    iput v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog_selected:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I

    .line 121
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->retry:Z

    .line 125
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAdd:Z

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->koids:Ljava/util/ArrayList;

    .line 129
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mDecryptKey:Ljava/security/Key;

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cityId:224032"

    aput-object v1, v0, v5

    const-string v1, "cityId:223347"

    aput-object v1, v0, v4

    const-string v1, "cityId:223682"

    aput-object v1, v0, v6

    const-string v1, "cityId:223656"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "cityId:223146"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->kocities:[Ljava/lang/String;

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/maps/GeoPoint;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    const v2, 0x233dd1a

    const v3, 0x78994a8

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    const v2, 0x2233ffa

    const v3, 0x7af2830

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    const v2, 0x225dcb0

    const v3, 0x7bab1b4

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    const v2, 0x238eed6

    const v3, 0x7a049f0

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lcom/google/android/maps/GeoPoint;

    const v3, 0x238ca28

    const v4, 0x784ec78

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->kolocation:[Lcom/google/android/maps/GeoPoint;

    .line 157
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomHandler:Landroid/os/Handler;

    .line 495
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    .line 809
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$16;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->loadingHandler:Landroid/os/Handler;

    .line 943
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->positive:Z

    .line 974
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$22;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dataHandler:Landroid/os/Handler;

    .line 1586
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$31;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailHandler:Landroid/os/Handler;

    .line 1679
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$32;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAddHandler:Landroid/os/Handler;

    .line 2011
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->backpressed:Z

    return-void
.end method

.method private CenterLocatio(Lcom/google/android/maps/GeoPoint;)V
    .registers 3
    .parameter "centerGeoPoint"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V

    .line 186
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myMapController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_button:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->performLocation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;DD)Lcom/google/android/maps/GeoPoint;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->performSearch()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showCities(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->stopHttpThread()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->UpdateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->checkResultCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2702(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAdd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Lcom/google/android/maps/GeoPoint;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->CenterLocatio(Lcom/google/android/maps/GeoPoint;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->retry:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->retry:Z

    return p1
.end method

.method private checkResultCode(I)I
    .registers 5
    .parameter "resultCode"

    .prologue
    const/4 v2, -0x1

    .line 1858
    const/4 v0, 0x0

    .line 1859
    .local v0, result:I
    if-ne v2, p1, :cond_7

    .line 1861
    const/16 v0, 0x3e7

    .line 1868
    :cond_6
    :goto_6
    return v0

    .line 1863
    :cond_7
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getResultType()I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 1866
    const/16 v0, 0x3e7

    goto :goto_6
.end method

.method private cleanResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAdd:Z

    .line 2049
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mlo:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v0, :cond_a

    .line 2050
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mlo:Lcom/google/android/maps/MyLocationOverlay;

    .line 2052
    :cond_a
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->map_btn:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 2053
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->map_btn:Landroid/widget/ImageView;

    .line 2055
    :cond_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_button:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 2056
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_button:Landroid/widget/ImageView;

    .line 2058
    :cond_16
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 2059
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;

    .line 2061
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_22

    .line 2062
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    .line 2064
    :cond_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2d

    .line 2066
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2067
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    .line 2070
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    if-eqz v0, :cond_33

    .line 2072
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 2075
    :cond_33
    const-string v0, ""

    const-string v1, "stopHttpThread"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->stopHttpThread()V

    .line 2078
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_48

    .line 2080
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2081
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    .line 2084
    :cond_48
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;

    .line 2085
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;

    .line 2088
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2089
    return-void
.end method

.method private getPoint(DD)Lcom/google/android/maps/GeoPoint;
    .registers 10
    .parameter "lat"
    .parameter "lon"

    .prologue
    const-wide v3, 0x412e848000000000L

    .line 2115
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    mul-double v1, p1, v3

    double-to-int v1, v1

    mul-double v2, p3, v3

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method private hideLoadingDialog()V
    .registers 4

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 1215
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 1224
    :cond_c
    :goto_c
    return-void

    .line 1218
    :catch_d
    move-exception v0

    .line 1221
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

.method private performLocation()V
    .registers 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 540
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v8

    .line 542
    .local v8, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_35

    .line 544
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 546
    .local v9, s:Ljava/lang/String;
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prvdr:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 551
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #s:Ljava/lang/String;
    :cond_35
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    .line 553
    .local v7, locationManager:Landroid/location/LocationManager;
    if-eqz v8, :cond_55

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "gps"

    invoke-virtual {v7, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "network"

    invoke-virtual {v7, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 558
    :cond_55
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;

    if-eqz v0, :cond_5f

    .line 559
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 561
    :cond_5f
    const v0, 0x7f09002a

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 576
    :cond_65
    :goto_65
    return-void

    .line 563
    :cond_66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_65

    .line 565
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    if-eqz v0, :cond_76

    .line 566
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    const v1, -0x13d30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    :cond_76
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 573
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->initGeoPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_65

    .line 574
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->initGeoPoint:Lcom/google/android/maps/GeoPoint;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->CenterLocatio(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_65
.end method

.method private performSearch()V
    .registers 7

    .prologue
    .line 2154
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2156
    const v0, 0x7f09001e

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 2195
    :cond_c
    :goto_c
    return-void

    .line 2160
    :cond_d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2161
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetCityList(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 2163
    if-eqz v3, :cond_c

    .line 2165
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    const-string v0, ""

    const-string v1, "SrchInAccuSite"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showLoadingDialog()V

    .line 2169
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->loadingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_55

    .line 2170
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->loadingHandler:Landroid/os/Handler;

    const v1, -0x13d30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2172
    :cond_55
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_60

    .line 2173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    .line 2175
    :cond_60
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 2177
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$35;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$35;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v0

    .line 2193
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method private registerListener()V
    .registers 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 616
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$8;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->map_btn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$9;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$10;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_button:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$11;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$12;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->setInterface(Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;)V

    .line 774
    return-void
.end method

.method private setKeyboardVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 1190
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 1192
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1198
    :goto_b
    return-void

    .line 1196
    :cond_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_b
.end method

.method private showCities(Ljava/util/ArrayList;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 873
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V

    .line 874
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->positive:Z

    .line 875
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 877
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    .line 879
    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 880
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 879
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 882
    :cond_4b
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 883
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 884
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 885
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    const/high16 v5, 0x41d0

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 887
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 888
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 889
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 890
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 891
    const v6, 0x7f090033

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 893
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 894
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 895
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 896
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 898
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 899
    iput v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog_selected:I

    .line 900
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$17;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$17;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v3, v4, v2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 907
    const v0, 0x7f09006d

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$18;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$18;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 914
    const v0, 0x7f09000b

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$19;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$19;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 921
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 922
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    .line 923
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$20;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 942
    return-void
.end method

.method private showResult(Ljava/util/ArrayList;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 1028
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1030
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    .line 1032
    :goto_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    .line 1033
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1034
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1035
    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1036
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1032
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 1040
    :cond_43
    iput v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog_selected:I

    .line 1042
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1043
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1044
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1045
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    const/high16 v5, 0x41d0

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1047
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1048
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1049
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1050
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1051
    const v6, 0x7f090033

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1053
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1054
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1055
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1056
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1058
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1060
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$23;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$23;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v3, v4, v2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1067
    const v0, 0x7f09006d

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$24;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1090
    const v0, 0x7f09000b

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$25;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$25;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1097
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1098
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    .line 1099
    return-void
.end method

.method private stopHttpThread()V
    .registers 4

    .prologue
    .line 1228
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    .line 1230
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1232
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

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

    .line 1234
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_12

    .line 1237
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Ljava/lang/Thread;
    :cond_22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    .line 1239
    :cond_25
    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 8
    .parameter "bytes"

    .prologue
    const/16 v6, 0x10

    .line 2198
    if-nez p0, :cond_6

    .line 2199
    const/4 v5, 0x0

    .line 2207
    :goto_5
    return-object v5

    .line 2202
    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2203
    .local v4, result:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_29

    aget-byte v1, v0, v2

    .line 2204
    .local v1, b:B
    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2205
    and-int/lit8 v5, v1, 0xf

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2203
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2207
    .end local v1           #b:B
    :cond_29
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method


# virtual methods
.method public deleteMe(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 1204
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 1205
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1207
    :cond_11
    return-void
.end method

.method protected isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 2122
    const/4 v0, 0x0

    return v0
.end method

.method public makeDetail(Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;)V
    .registers 9
    .parameter "info"

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showLoadingDialog()V

    .line 1877
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 1878
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailHandler:Landroid/os/Handler;

    const v1, -0x13d30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1880
    :cond_f
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1881
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 1883
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_47

    .line 1885
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_2a

    .line 1886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    .line 1888
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1890
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$33;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$33;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v6

    .line 1906
    .local v6, t:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    .end local v4           #headerGroup:Lorg/apache/http/message/HeaderGroup;
    .end local v6           #t:Ljava/lang/Thread;
    :cond_47
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1570
    const v0, -0x9bdc

    if-ne p1, v0, :cond_1b

    .line 1572
    if-ne p2, v1, :cond_1f

    .line 1574
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1576
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    .line 1583
    :cond_1b
    :goto_1b
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1584
    return-void

    .line 1580
    :cond_1f
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V

    goto :goto_1b
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 2014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->backpressed:Z

    .line 2015
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onBackPressed()V

    .line 2016
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 395
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "savedInstanceState"

    .prologue
    .line 192
    invoke-super/range {p0 .. p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    const v10, 0x7f03002c

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setContentView(I)V

    .line 197
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mDecryptKey:Ljava/security/Key;

    if-nez v10, :cond_15

    .line 199
    :try_start_d
    sget-object v10, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->KEYDATA:[B

    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->generateKey([B)Ljava/security/Key;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mDecryptKey:Ljava/security/Key;
    :try_end_15
    .catch Ljava/security/InvalidKeyException; {:try_start_d .. :try_end_15} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_15} :catch_4e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_d .. :try_end_15} :catch_57

    .line 210
    :cond_15
    :goto_15
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getWindowDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->display:Landroid/view/Display;

    .line 211
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->display:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    iput v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->width:I

    .line 212
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->display:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->height:I

    .line 213
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->detailAdd:Z

    .line 215
    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v10, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 217
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->kocities:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_39
    if-ge v7, v8, :cond_60

    aget-object v9, v2, v7

    .line 218
    .local v9, s:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->koids:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 200
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #s:Ljava/lang/String;
    :catch_45
    move-exception v3

    .line 201
    .local v3, e:Ljava/security/InvalidKeyException;
    const-string v10, ""

    const-string v11, "InvalidKeyException"

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 202
    .end local v3           #e:Ljava/security/InvalidKeyException;
    :catch_4e
    move-exception v3

    .line 203
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    const-string v10, ""

    const-string v11, "NoSuchAlgorithmException"

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 204
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_57
    move-exception v3

    .line 205
    .local v3, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v10, ""

    const-string v11, "InvalidKeySpecException"

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 220
    .end local v3           #e:Ljava/security/spec/InvalidKeySpecException;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_60
    const v10, 0x7f0c006e

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->map_btn:Landroid/widget/ImageView;

    .line 221
    const v10, 0x7f0c0070

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;

    .line 222
    const v10, 0x7f0c006d

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_button:Landroid/widget/ImageView;

    .line 224
    const v10, 0x7f0c006c

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/AutoCompleteTextView;

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    .line 225
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v10}, Landroid/widget/AutoCompleteTextView;->setSingleLine()V

    .line 226
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 228
    sget-boolean v10, Lcom/sec/android/widgetapp/weatherclock/common/Constants;->ENABLE_JAPAN_PROTOCOL:Z

    if-nez v10, :cond_a8

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_27d

    .line 229
    :cond_a8
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    const v11, 0x7f090061

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 230
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    const/high16 v11, 0x4150

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 236
    :goto_b7
    const v10, 0x7f0c0085

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    .line 237
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 238
    const v10, 0x7f0c0087

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->UpdateText:Landroid/widget/TextView;

    .line 240
    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;-><init>()V

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    .line 241
    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-direct {v10, p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 242
    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    invoke-direct {v10, p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 243
    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 244
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myMapController:Lcom/google/android/maps/MapController;

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "mapweather"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "latitude"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->latitude:I

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "longitude"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->longitude:I

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "pre_lat"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_lat:D

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "pre_lon"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_lon:D

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "tempscale"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    .line 252
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "launcher"

    const/16 v12, -0x526c

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->launcher:I

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "pre_loc"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_loc:Ljava/lang/String;

    .line 257
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    if-eqz v10, :cond_1f0

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, EncryptLongitude:Ljava/lang/String;
    const/4 v0, 0x0

    .line 262
    .local v0, EncryptLatitude:Ljava/lang/String;
    :try_start_16a
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mDecryptKey:Ljava/security/Key;

    iget-wide v11, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_lon:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->Encrypt(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mDecryptKey:Ljava/security/Key;

    iget-wide v11, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_lat:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->Encrypt(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->toHexString([B)Ljava/lang/String;
    :try_end_189
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16a .. :try_end_189} :catch_287

    move-result-object v0

    .line 269
    :goto_18a
    const/4 v4, 0x0

    .line 273
    .local v4, file:Z
    :try_start_18b
    new-instance v6, Ljava/io/FileInputStream;

    const-string v10, "/mnt/sdcard/widgetgetlog.txt"

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 274
    .local v6, fis:Ljava/io/FileInputStream;
    const-string v10, ""

    const-string v11, "LF_success!!!"

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v4, 0x1

    .line 276
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_19d} :catch_291

    .line 284
    .end local v6           #fis:Ljava/io/FileInputStream;
    :goto_19d
    const-string v10, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-eqz v4, :cond_2ad

    .line 288
    const-string v10, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start@Lt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v10, ""

    const-string v11, "!!file is exisist"

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0           #EncryptLatitude:Ljava/lang/String;
    .end local v1           #EncryptLongitude:Ljava/lang/String;
    .end local v4           #file:Z
    :cond_1f0
    :goto_1f0
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "appWidgetId"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mAppWidgetId:I

    .line 300
    iget v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2b6

    const v10, 0x7f02001e

    :goto_205
    iput v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempimg:I

    .line 302
    iget v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->latitude:I

    if-nez v10, :cond_2bb

    iget v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->longitude:I

    if-nez v10, :cond_2bb

    .line 303
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v10

    iget-wide v11, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_lat:D

    iget-wide v13, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->pre_lon:D

    invoke-direct {p0, v11, v12, v13, v14}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 307
    :goto_220
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 309
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->setBuiltInZoomControls(Z)V

    .line 311
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$2;

    invoke-direct {v11, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    new-instance v11, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$3;

    invoke-direct {v11, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    new-instance v11, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$4;

    invoke-direct {v11, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 377
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    const-string v10, "location"

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/LocationManager;

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;

    .line 381
    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Lcom/sec/android/widgetapp/weatherclock/MapsActivity$1;)V

    iput-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;

    .line 383
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->registerListener()V

    .line 385
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v10, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLocationProviderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v5}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    return-void

    .line 233
    .end local v5           #filter:Landroid/content/IntentFilter;
    :cond_27d
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_edittext:Landroid/widget/AutoCompleteTextView;

    const v11, 0x7f090024

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    goto/16 :goto_b7

    .line 264
    .restart local v0       #EncryptLatitude:Ljava/lang/String;
    .restart local v1       #EncryptLongitude:Ljava/lang/String;
    :catch_287
    move-exception v3

    .line 265
    .local v3, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v10, ""

    const-string v11, "InvalidAlgorithmParameterException"

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18a

    .line 278
    .end local v3           #e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v4       #file:Z
    :catch_291
    move-exception v3

    .line 280
    .local v3, e:Ljava/lang/Exception;
    const-string v10, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v4, 0x0

    goto/16 :goto_19d

    .line 293
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2ad
    const-string v10, ""

    const-string v11, "file is not found!!"

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f0

    .line 300
    .end local v0           #EncryptLatitude:Ljava/lang/String;
    .end local v1           #EncryptLongitude:Ljava/lang/String;
    .end local v4           #file:Z
    :cond_2b6
    const v10, 0x7f020026

    goto/16 :goto_205

    .line 305
    :cond_2bb
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v10

    new-instance v11, Lcom/google/android/maps/GeoPoint;

    iget v12, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->latitude:I

    iget v13, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->longitude:I

    invoke-direct {v11, v12, v13}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v10, v11}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    goto/16 :goto_220
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2022
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->loadingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2023
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2024
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2025
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dataHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2027
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    if-eqz v0, :cond_2f

    .line 2029
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2030
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mlo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2032
    :cond_2f
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mlo:Lcom/google/android/maps/MyLocationOverlay;

    .line 2033
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    .line 2034
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 2035
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomlist:Ljava/util/ArrayList;

    .line 2036
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2039
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V

    .line 2040
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->cleanResource()V

    .line 2041
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 2042
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2094
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_15

    .line 2096
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->isSatellite()Z

    move-result v3

    if-nez v3, :cond_11

    move v0, v1

    :cond_11
    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->setSatellite(Z)V

    .line 2110
    :goto_14
    return v1

    .line 2099
    :cond_15
    const/16 v2, 0x36

    if-ne p1, v2, :cond_1f

    .line 2101
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->displayZoomControls(Z)V

    goto :goto_14

    .line 2105
    :cond_1f
    const/4 v1, 0x4

    if-ne p1, v1, :cond_25

    .line 2107
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V

    .line 2110
    :cond_25
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_14
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1949
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 1951
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->stopHttpThread()V

    .line 1952
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V

    .line 1953
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1954
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1957
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->launcher:I

    sparse-switch v0, :sswitch_data_96

    .line 1990
    const-string v0, ""

    const-string v1, "launch_default"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->backpressed:Z

    if-nez v0, :cond_85

    .line 1993
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2000
    :goto_29
    if-eqz v0, :cond_8d

    .line 2002
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2003
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2008
    :cond_33
    :goto_33
    return-void

    .line 1960
    :sswitch_34
    const-string v0, ""

    const-string v1, "launch_add"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->backpressed:Z

    if-nez v0, :cond_47

    .line 1963
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_29

    .line 1967
    :cond_47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_29

    .line 1970
    :sswitch_4f
    const-string v0, ""

    const-string v1, "launch_detail"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->backpressed:Z

    if-nez v0, :cond_62

    .line 1973
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_29

    .line 1977
    :cond_62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_29

    .line 1980
    :sswitch_6a
    const-string v0, ""

    const-string v1, "launch_srch"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->backpressed:Z

    if-nez v0, :cond_7d

    .line 1983
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_29

    .line 1987
    :cond_7d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_29

    .line 1997
    :cond_85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_29

    .line 2006
    :cond_8d
    const-string v0, ""

    const-string v1, "intent is null!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1957
    nop

    :sswitch_data_96
    .sparse-switch
        -0x14564 -> :sswitch_4f
        -0x526c -> :sswitch_6a
        -0x5208 -> :sswitch_34
    .end sparse-switch
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1524
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 1525
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->backpressed:Z

    .line 1527
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dbhelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flags"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x61a7

    if-eq v0, v1, :cond_28

    .line 1529
    const-string v0, ""

    const-string v1, "Don`t have Data in DB so finish!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->finish()V

    .line 1534
    :cond_28
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    if-nez v0, :cond_45

    .line 1536
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    .line 1537
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$30;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$30;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    :cond_45
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    if-eqz v0, :cond_72

    .line 1556
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1557
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->getInfoList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;->getCurrentUint()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    .line 1558
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mapView:Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/view/MyMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myitems:Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyItems;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    :cond_72
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->zoomHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1562
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;

    .line 1563
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Lcom/sec/android/widgetapp/weatherclock/MapsActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;

    .line 1564
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->registerListener()V

    .line 1565
    return-void
.end method

.method protected perform_Acity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
    .registers 9
    .parameter "i"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->tempscale:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetMultiData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 949
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_36

    .line 951
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_19

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    .line 954
    :cond_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 955
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$21;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$21;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v6

    .line 970
    .local v6, t:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    .end local v4           #headerGroup:Lorg/apache/http/message/HeaderGroup;
    .end local v6           #t:Ljava/lang/Thread;
    :cond_36
    return-void
.end method

.method protected showConfirmDialog()V
    .registers 4

    .prologue
    .line 777
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 778
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 779
    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 780
    const v1, 0x7f09006c

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$13;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$13;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 788
    const v1, 0x7f09000b

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$14;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$14;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 795
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->loadingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_31

    .line 797
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    .line 800
    :cond_31
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$15;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$15;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 807
    return-void
.end method

.method public showLoadingDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1104
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1106
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_38

    .line 1108
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mRequestCanceled:Z

    .line 1110
    const/4 v0, 0x0

    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    .line 1111
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1112
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$26;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$26;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1125
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$27;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$27;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1137
    :cond_38
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1138
    return-void
.end method

.method public showLoadingDialog(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1144
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_36

    .line 1147
    const/4 v0, 0x0

    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    .line 1148
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1149
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$28;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$28;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1167
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$29;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1184
    :cond_36
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1185
    return-void
.end method
