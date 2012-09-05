.class Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;
.super Ljava/lang/Thread;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/common/MyCurrentLocation;->getDetailInfo(Lcom/sec/android/daemonapp/info/CityInfo;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

.field final synthetic val$cityInfo:Lcom/sec/android/daemonapp/info/CityInfo;

.field final synthetic val$headerGroup:Lorg/apache/http/message/HeaderGroup;

.field final synthetic val$locationHandler:Landroid/os/Handler;

.field final synthetic val$tempScale:I

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;ILcom/sec/android/daemonapp/info/CityInfo;Landroid/os/Handler;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iput-object p2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$url:Ljava/net/URL;

    iput-object p3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$headerGroup:Lorg/apache/http/message/HeaderGroup;

    iput p4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$tempScale:I

    iput-object p5, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$cityInfo:Lcom/sec/android/daemonapp/info/CityInfo;

    iput-object p6, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$locationHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$url:Ljava/net/URL;

    if-eqz v0, :cond_2f

    .line 356
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$100(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_16

    .line 357
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    #setter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->mHttpThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$102(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 359
    :cond_16
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->httpClient:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$300(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$200(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$url:Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;->val$headerGroup:Lorg/apache/http/message/HeaderGroup;

    new-instance v5, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3$1;

    invoke-direct {v5, p0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation$3$1;-><init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation$3;)V

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;

    .line 410
    :cond_2f
    return-void
.end method
