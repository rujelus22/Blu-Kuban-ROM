.class Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;
.super Lcom/sec/android/daemonapp/http/HttpResponseHandler;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    invoke-direct {p0}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 307
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_f

    .line 309
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-boolean v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->cancelRequested:Z

    if-eqz v1, :cond_10

    .line 323
    :cond_f
    :goto_f
    return-void

    .line 311
    :cond_10
    new-instance v0, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;

    invoke-direct {v0}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;-><init>()V

    .line 313
    .local v0, parser:Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->info:Lcom/sec/android/daemonapp/info/CityInfo;

    .line 314
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/daemonapp/common/AccuWeatherResponseParser;->parseDetailWeatherLocation(Lorg/xml/sax/InputSource;)Lcom/sec/android/daemonapp/info/CityInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->info:Lcom/sec/android/daemonapp/info/CityInfo;

    .line 315
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->info:Lcom/sec/android/daemonapp/info/CityInfo;

    if-eqz v1, :cond_f

    .line 316
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v2, v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$200(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aw_daemon_service_key_temp_scale"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->tempScale:I

    .line 317
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->info:Lcom/sec/android/daemonapp/info/CityInfo;

    iget-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v2, v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->val$latitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/daemonapp/info/CityInfo;->setLatitude(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->info:Lcom/sec/android/daemonapp/info/CityInfo;

    iget-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v2, v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->val$longitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/daemonapp/info/CityInfo;->setLongitude(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->info:Lcom/sec/android/daemonapp/info/CityInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/daemonapp/info/CityInfo;->setProvider(I)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v1, v1, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v2, v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v2, v2, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->info:Lcom/sec/android/daemonapp/info/CityInfo;

    iget-object v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v3, v3, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget v3, v3, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->tempScale:I

    iget-object v4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;->this$1:Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;

    iget-object v4, v4, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->val$locationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getDetailInfo(Lcom/sec/android/daemonapp/info/CityInfo;ILandroid/os/Handler;)V

    goto :goto_f
.end method
