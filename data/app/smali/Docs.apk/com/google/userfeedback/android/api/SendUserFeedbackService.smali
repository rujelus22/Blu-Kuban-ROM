.class public Lcom/google/userfeedback/android/api/SendUserFeedbackService;
.super Landroid/app/Service;
.source "SendUserFeedbackService.java"


# static fields
.field private static a:Z


# instance fields
.field private a:I

.field private final a:Landroid/os/IBinder;

.field public a:LarF;

.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Lark;

    invoke-direct {v0, p0}, Lark;-><init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Landroid/os/IBinder;

    .line 80
    sget v0, Lari;->gf_report_sent_failure:I

    iput v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)I
    .registers 2
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/google/userfeedback/android/api/SendUserFeedbackService;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:I

    return p1
.end method


# virtual methods
.method public a(Ljava/io/File;)I
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x4e20

    .line 217
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v1, "Content-encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Lorg/apache/http/entity/FileEntity;

    const-string v2, "application/x-protobuf"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 221
    new-instance v1, LasF;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:LarF;

    invoke-virtual {v2}, LarF;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "AndroidGoogleUIF/1.0"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LasF;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 224
    invoke-virtual {v1}, LasF;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 225
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 226
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 228
    :try_start_36
    invoke-virtual {v1, v0}, LasF;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 229
    invoke-virtual {v1}, LasF;->a()V

    .line 231
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 232
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_61

    .line 233
    const-string v2, "GFEEDBACK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http response status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_61} :catch_62

    .line 235
    :cond_61
    return v0

    .line 236
    :catch_62
    move-exception v0

    .line 237
    invoke-virtual {v1}, LasF;->a()V

    .line 238
    throw v0
.end method

.method protected a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 109
    sget v0, Lari;->gf_receiver_transport_scheme:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "http"

    .line 111
    :cond_10
    sget v1, Lari;->gf_receiver_port:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v1, ""

    .line 113
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lari;->gf_receiver_host:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lari;->gf_receiver_path:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Z

    .line 124
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 126
    :cond_13
    const-string v0, "GFEEDBACK"

    const-string v1, "Removing userfeedback send service. Inconsistent state detected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V

    .line 151
    :goto_1d
    return-void

    .line 128
    :cond_1e
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    invoke-virtual {v0}, Larz;->a()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 129
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Ljava/lang/String;

    .line 130
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:LarF;

    .line 132
    :try_start_3c
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 136
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b()V
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_59} :catch_5a

    goto :goto_1d

    .line 142
    :catch_5a
    move-exception v0

    .line 145
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b()V

    goto :goto_1d

    .line 138
    :cond_5f
    :try_start_5f
    sget v0, Lari;->gf_report_queued:I

    iput v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:I

    .line 139
    iget v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(I)V

    .line 140
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_5f .. :try_end_6b} :catch_5a

    goto :goto_1d

    .line 149
    :cond_6c
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V

    goto :goto_1d
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 248
    sget-boolean v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Z

    if-nez v0, :cond_1b

    invoke-static {}, Larm;->d()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 249
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:LarF;

    invoke-virtual {v0}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 251
    invoke-static {}, Larm;->c()V

    .line 254
    :cond_1b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Z

    .line 255
    return-void
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 158
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Larj;

    invoke-direct {v2, p0, v0, p0}, Larj;-><init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;Larz;Landroid/app/Service;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 207
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Landroid/os/IBinder;

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
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a()V

    .line 97
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a()V

    .line 102
    const/4 v0, 0x2

    return v0
.end method
