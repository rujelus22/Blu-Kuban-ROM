.class Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;
.super Ljava/lang/Thread;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/common/MyCurrentLocation;->addCityWeatherFromProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

.field final synthetic val$latitude:Ljava/lang/String;

.field final synthetic val$locationHandler:Landroid/os/Handler;

.field final synthetic val$longitude:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iput-object p2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->val$latitude:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->val$longitude:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->val$locationHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$000(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 294
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->urlManager:Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$000(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->val$latitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->val$longitude:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/daemonapp/common/AccuWeatherUrlManager;->makeUrlForLocGetData(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 295
    .local v3, url:Ljava/net/URL;
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-eqz v3, :cond_67

    .line 298
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$100(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 299
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    #setter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$102(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 301
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->httpClient:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$300(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$200(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/content/Context;

    move-result-object v2

    new-instance v5, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;

    invoke-direct {v5, p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2$1;-><init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;)V

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v6

    .line 325
    .local v6, t:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$2;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #setter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;
    invoke-static {v0, v6}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$102(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 328
    .end local v6           #t:Ljava/lang/Thread;
    :cond_67
    return-void
.end method
