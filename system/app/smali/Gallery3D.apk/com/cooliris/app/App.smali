.class public Lcom/cooliris/app/App;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field public static final CURRENT_TIME_ZONE:Ljava/util/TimeZone;

.field public static PIXEL_DENSITY:F

.field private static final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/cooliris/app/App;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mGridLayer:Lcom/cooliris/media/GridLayer;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mReverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cooliris/app/App;->mMap:Ljava/util/HashMap;

    .line 45
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/cooliris/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AppHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cooliris/app/App;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iput-object v3, p0, Lcom/cooliris/app/App;->mReverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cooliris/app/App;->mPaused:Z

    .line 139
    iput-object v3, p0, Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;

    .line 63
    sget-object v1, Lcom/cooliris/app/App;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/cooliris/app/App;->mContext:Landroid/content/Context;

    .line 67
    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3a

    .line 68
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/cooliris/app/App;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    .line 73
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_3a
    iget-object v1, p0, Lcom/cooliris/app/App;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/cooliris/app/App;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/cooliris/app/App;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v1, Lcom/cooliris/media/ReverseGeocoder;

    iget-object v2, p0, Lcom/cooliris/app/App;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cooliris/media/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cooliris/app/App;->mReverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/app/App;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cooliris/app/App;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cooliris/app/App;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cooliris/app/App;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/cooliris/app/App;
    .registers 2
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/cooliris/app/App;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/app/App;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cooliris/app/App;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGridLayer()Lcom/cooliris/media/GridLayer;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cooliris/app/App;->mGridLayer:Lcom/cooliris/media/GridLayer;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 94
    :cond_0
    iget-object v0, p0, Lcom/cooliris/app/App;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/cooliris/app/App;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getReverseGeocoder()Lcom/cooliris/media/ReverseGeocoder;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cooliris/app/App;->mReverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;

    return-object v0
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/cooliris/app/App;->mPaused:Z

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cooliris/app/App;->mReverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;

    invoke-virtual {v0}, Lcom/cooliris/media/ReverseGeocoder;->flushCache()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/app/App;->mPaused:Z

    .line 129
    invoke-virtual {p0}, Lcom/cooliris/app/App;->toastCancel()V

    .line 130
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/app/App;->mPaused:Z

    .line 124
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .registers 6
    .parameter "string"
    .parameter "duration"

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/cooliris/app/App;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    new-instance v2, Lcom/cooliris/app/App$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/cooliris/app/App$1;-><init>(Lcom/cooliris/app/App;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/cooliris/media/Gallery;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 163
    :goto_c
    return-void

    .line 159
    :catch_d
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cooliris/app/App;->mReverseGeocoder:Lcom/cooliris/media/ReverseGeocoder;

    invoke-virtual {v0}, Lcom/cooliris/media/ReverseGeocoder;->shutdown()V

    .line 84
    sget-object v0, Lcom/cooliris/app/App;->mMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/cooliris/app/App;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/app/App;->mGridLayer:Lcom/cooliris/media/GridLayer;

    .line 86
    iget-object v0, p0, Lcom/cooliris/app/App;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 87
    return-void
.end method

.method public toastCancel()V
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_23

    .line 167
    iget-object v0, p0, Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 168
    const-string v0, "APP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toastCancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_23
    return-void
.end method
