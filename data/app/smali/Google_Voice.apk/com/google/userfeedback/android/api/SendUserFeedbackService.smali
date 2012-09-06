.class public Lcom/google/userfeedback/android/api/SendUserFeedbackService;
.super Landroid/app/Service;
.source "SendUserFeedbackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/SendUserFeedbackService$SendUserFeedbackServiceBinder;
    }
.end annotation


# static fields
.field private static final APP_AND_VERSION:Ljava/lang/String; = "AndroidGoogleUIF/1.0"

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/x-protobuf"

.field private static final MAX_RETRIES:I = 0x3

.field private static final TIMEOUT:I = 0x4e20

.field private static mSilenceToast:Z


# instance fields
.field private final mServiceBinder:Landroid/os/IBinder;

.field protected mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

.field private mToastMessage:I

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$SendUserFeedbackServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$SendUserFeedbackServiceBinder;-><init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mServiceBinder:Landroid/os/IBinder;

    .line 80
    sget v0, Lcom/google/userfeedback/android/api/R$string;->gf_report_sent_failure:I

    iput v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mToastMessage:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mToastMessage:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/userfeedback/android/api/SendUserFeedbackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mToastMessage:I

    return p1
.end method


# virtual methods
.method protected getReceiverUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 109
    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_receiver_transport_scheme:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, scheme:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v1, "http"

    .line 111
    :cond_10
    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_receiver_port:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, port:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v0, ""

    .line 113
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/google/userfeedback/android/api/R$string;->gf_receiver_host:I

    invoke-virtual {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/google/userfeedback/android/api/R$string;->gf_receiver_path:I

    invoke-virtual {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 112
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mServiceBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 92
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->submitFeedback()V

    .line 97
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->submitFeedback()V

    .line 102
    const/4 v0, 0x2

    return v0
.end method

.method protected sendReport(Ljava/io/File;)I
    .registers 12
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x4e20

    .line 217
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "Content-encoding"

    const-string v7, "gzip"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v6, Lorg/apache/http/entity/FileEntity;

    const-string v7, "application/x-protobuf"

    invoke-direct {v6, p1, v7}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 221
    new-instance v1, Lcom/x/google/common/io/android/GoogleHttpClient;

    iget-object v6, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "AndroidGoogleUIF/1.0"

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v8}, Lcom/x/google/common/io/android/GoogleHttpClient;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 224
    .local v1, httpClient:Lcom/x/google/common/io/android/GoogleHttpClient;
    invoke-virtual {v1}, Lcom/x/google/common/io/android/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 225
    .local v2, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 226
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 228
    :try_start_36
    invoke-virtual {v1, v3}, Lcom/x/google/common/io/android/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 229
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-virtual {v1}, Lcom/x/google/common/io/android/GoogleHttpClient;->close()V

    .line 231
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 232
    .local v5, statusCode:I
    const/16 v6, 0x12c

    if-lt v5, v6, :cond_61

    .line 233
    const-string v6, "GFEEDBACK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Http response status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_61} :catch_62

    .line 235
    :cond_61
    return v5

    .line 236
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    :catch_62
    move-exception v0

    .line 237
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v1}, Lcom/x/google/common/io/android/GoogleHttpClient;->close()V

    .line 238
    throw v0
.end method

.method protected showToast(I)V
    .registers 4
    .parameter "messageResId"

    .prologue
    .line 248
    sget-boolean v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSilenceToast:Z

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->isServiceToastShown()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 249
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 251
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->serviceToastShown()V

    .line 254
    :cond_1b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSilenceToast:Z

    .line 255
    return-void
.end method

.method protected startSendingUserFeedback()V
    .registers 5

    .prologue
    .line 158
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v0

    .line 159
    .local v0, report:Lcom/google/userfeedback/android/api/UserFeedbackReport;
    move-object v1, p0

    .line 160
    .local v1, thisService:Landroid/app/Service;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;-><init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;Lcom/google/userfeedback/android/api/UserFeedbackReport;Landroid/app/Service;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 207
    return-void
.end method

.method protected submitFeedback()V
    .registers 5

    .prologue
    .line 121
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSilenceToast:Z

    .line 124
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 126
    :cond_13
    const-string v2, "GFEEDBACK"

    const-string v3, "Removing userfeedback send service. Inconsistent state detected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V

    .line 151
    :goto_1d
    return-void

    .line 128
    :cond_1e
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedbackReport;->shouldSubmitReport()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 129
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getReceiverUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mUrl:Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 132
    :try_start_3c
    iget-object v2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 135
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 136
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->startSendingUserFeedback()V
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_59} :catch_5a

    goto :goto_1d

    .line 142
    .end local v1           #network:Landroid/net/NetworkInfo;
    :catch_5a
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->startSendingUserFeedback()V

    goto :goto_1d

    .line 138
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #network:Landroid/net/NetworkInfo;
    :cond_5f
    :try_start_5f
    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_report_queued:I

    iput v2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mToastMessage:I

    .line 139
    iget v2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mToastMessage:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->showToast(I)V

    .line 140
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_5f .. :try_end_6b} :catch_5a

    goto :goto_1d

    .line 149
    .end local v1           #network:Landroid/net/NetworkInfo;
    :cond_6c
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V

    goto :goto_1d
.end method
