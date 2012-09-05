.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;
.super Ljava/lang/Thread;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestResults(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$responseHandler:Lorg/apache/http/client/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;->val$requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 519
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getBaseOrbitParameters(Z)Ljava/util/List;
    invoke-static {v3, v6}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1500(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Z)Ljava/util/List;

    move-result-object v1

    .line 522
    .local v1, parts:Ljava/util/List;,"Ljava/util/List<Lcom/util/http/multipart/Part;>;"
    new-instance v3, Lcom/util/http/multipart/StringPart;

    const-string v4, "requestId"

    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;->val$requestId:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v3, Lcom/util/http/multipart/StringPart;

    const-string v4, "amgFields"

    const-string v5, "/"

    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    const-string v2, "http://ssung.meta.shazamid.com/orbit/RequestResults1"

    .line 530
    .local v2, url:Ljava/lang/String;
    new-instance v0, Lcom/util/http/HTTPRequestHelper;

    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {v0, v3}, Lcom/util/http/HTTPRequestHelper;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    .line 532
    .local v0, helper:Lcom/util/http/HTTPRequestHelper;
    new-array v3, v6, [Lcom/util/http/multipart/Part;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/util/http/multipart/Part;

    invoke-virtual {v0, v2, v3}, Lcom/util/http/HTTPRequestHelper;->performPost(Ljava/lang/String;[Lcom/util/http/multipart/Part;)V

    .line 533
    return-void
.end method
