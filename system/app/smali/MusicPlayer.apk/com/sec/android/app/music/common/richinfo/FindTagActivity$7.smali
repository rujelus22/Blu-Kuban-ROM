.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;
.super Ljava/lang/Thread;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->doRecognition([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

.field final synthetic val$recordedSample:[B

.field final synthetic val$responseHandler:Lorg/apache/http/client/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;[BLorg/apache/http/client/ResponseHandler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;->val$recordedSample:[B

    iput-object p3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 489
    .local v3, time:Ljava/util/Calendar;
    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1600()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 490
    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1800()Ljava/util/Formatter;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1700()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x3

    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xd

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, tagDate:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getBaseOrbitParameters(Z)Ljava/util/List;
    invoke-static {v5, v10}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1500(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Z)Ljava/util/List;

    move-result-object v1

    .line 496
    .local v1, parts:Ljava/util/List;,"Ljava/util/List<Lcom/util/http/multipart/Part;>;"
    new-instance v5, Lcom/util/http/multipart/StringPart;

    const-string v6, "tagDate"

    invoke-static {v2}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v5, Lcom/util/http/multipart/StringPart;

    const-string v6, "sampleBytes"

    iget-object v7, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;->val$recordedSample:[B

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v5, Lcom/util/http/multipart/FilePart;

    const-string v6, "sample"

    new-instance v7, Lcom/util/http/multipart/ByteArrayPartSource;

    const-string v8, "sign.sig"

    iget-object v9, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;->val$recordedSample:[B

    invoke-static {v9}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_byte([B)[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/util/http/multipart/ByteArrayPartSource;-><init>(Ljava/lang/String;[B)V

    invoke-direct {v5, v6, v7}, Lcom/util/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/util/http/multipart/PartSource;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v4, "http://ssung.meta.shazamid.com/orbit/DoRecognition1"

    .line 503
    .local v4, url:Ljava/lang/String;
    new-instance v0, Lcom/util/http/HTTPRequestHelper;

    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {v0, v5}, Lcom/util/http/HTTPRequestHelper;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    .line 505
    .local v0, helper:Lcom/util/http/HTTPRequestHelper;
    new-array v5, v10, [Lcom/util/http/multipart/Part;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/util/http/multipart/Part;

    invoke-virtual {v0, v4, v5}, Lcom/util/http/HTTPRequestHelper;->performPost(Ljava/lang/String;[Lcom/util/http/multipart/Part;)V

    .line 506
    return-void
.end method
