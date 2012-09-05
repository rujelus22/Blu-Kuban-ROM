.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$6;
.super Ljava/lang/Thread;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

.field final synthetic val$responseHandler:Lorg/apache/http/client/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lorg/apache/http/client/ResponseHandler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$6;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$6;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 465
    const-string v1, "http://ssung.meta.shazamid.com/orbit/RequestConfig1"

    .line 467
    .local v1, url:Ljava/lang/String;
    new-instance v0, Lcom/util/http/HTTPRequestHelper;

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$6;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {v0, v2}, Lcom/util/http/HTTPRequestHelper;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    .line 468
    .local v0, helper:Lcom/util/http/HTTPRequestHelper;
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$6;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const/4 v3, 0x1

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getBaseOrbitParameters(Z)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1500(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Z)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/util/http/multipart/Part;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/util/http/multipart/Part;

    invoke-virtual {v0, v1, v2}, Lcom/util/http/HTTPRequestHelper;->performPost(Ljava/lang/String;[Lcom/util/http/multipart/Part;)V

    .line 469
    return-void
.end method
