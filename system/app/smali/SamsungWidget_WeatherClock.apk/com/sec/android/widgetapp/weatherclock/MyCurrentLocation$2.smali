.class Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;
.super Ljava/lang/Thread;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->addCityWeatherFromProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

.field final synthetic val$headerGroup:Lorg/apache/http/message/HeaderGroup;

.field final synthetic val$latitude:Ljava/lang/String;

.field final synthetic val$locationHandler:Landroid/os/Handler;

.field final synthetic val$longitude:Ljava/lang/String;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$url:Ljava/net/URL;

    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$headerGroup:Lorg/apache/http/message/HeaderGroup;

    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$latitude:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$longitude:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$locationHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$url:Ljava/net/URL;

    if-eqz v0, :cond_35

    .line 295
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$000(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_16

    .line 296
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$002(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 298
    :cond_16
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$200(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;)Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$100(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$url:Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->val$headerGroup:Lorg/apache/http/message/HeaderGroup;

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;)V

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v6

    .line 340
    .local v6, t:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$2;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;
    invoke-static {v0, v6}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$002(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 342
    .end local v6           #t:Ljava/lang/Thread;
    :cond_35
    return-void
.end method
