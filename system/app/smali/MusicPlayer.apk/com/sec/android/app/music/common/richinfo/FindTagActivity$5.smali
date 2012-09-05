.class Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;
.super Ljava/lang/Thread;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestUMSinfo()V
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
    .line 408
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 411
    const-string v1, "http://ums.samsungmobile.com/http_client/find_url.jsp"

    .line 413
    .local v1, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 414
    .local v8, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_74

    .line 419
    const/4 v7, 0x0

    .line 424
    .local v7, imsi:Ljava/lang/String;
    :try_start_15
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x3

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "etc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_15 .. :try_end_24} :catch_4e

    move-result-object v7

    .line 432
    :goto_25
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v5, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "pver"

    const-string v4, "1.0"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-boolean v3, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sIsOpenRom:Z

    if-eqz v3, :cond_6c

    .line 436
    const-string v3, "ptype"

    const-string v4, "O"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :goto_3c
    const-string v3, "imsi"

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v0, Lcom/util/http/HTTPRequestHelper;

    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;->val$responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-direct {v0, v3}, Lcom/util/http/HTTPRequestHelper;-><init>(Lorg/apache/http/client/ResponseHandler;)V

    .local v0, helper:Lcom/util/http/HTTPRequestHelper;
    move-object v3, v2

    move-object v4, v2

    .line 447
    invoke-virtual/range {v0 .. v5}, Lcom/util/http/HTTPRequestHelper;->performPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 453
    .end local v0           #helper:Lcom/util/http/HTTPRequestHelper;
    .end local v5           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #imsi:Ljava/lang/String;
    :goto_4d
    return-void

    .line 429
    .restart local v7       #imsi:Ljava/lang/String;
    :catch_4e
    move-exception v6

    .line 430
    .local v6, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v3, "RichInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StringIndexOutOfBoundsException caught: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 440
    .end local v6           #e:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v5       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6c
    const-string v3, "ptype"

    const-string v4, "T"

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 451
    .end local v5           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #imsi:Ljava/lang/String;
    :cond_74
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;->this$0:Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4d
.end method
