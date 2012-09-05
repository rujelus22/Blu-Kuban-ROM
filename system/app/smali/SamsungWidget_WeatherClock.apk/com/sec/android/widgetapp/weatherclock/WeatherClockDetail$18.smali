.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$18;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setWebLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 2191
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2194
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 2196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2197
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$18;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2198
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->offset:I

    .line 2199
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset:="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_34
    return-void
.end method
