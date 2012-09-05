.class final Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;
.super Landroid/os/AsyncTask;
.source "ReadingAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReadingAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAccessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/apps/books/net/DeviceAccess;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReadingAccessManager;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReadingAccessManager;Lcom/google/android/apps/books/app/ReadingAccessManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;-><init>(Lcom/google/android/apps/books/app/ReadingAccessManager;)V

    return-void
.end method

.method private useApiaryToCheckAccess()Lcom/google/android/apps/books/net/DeviceAccess;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$400(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/books/api/ApiaryClient;->getHttpHelper()Lcom/google/android/apps/books/net/HttpHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/books/net/HttpHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_24

    .line 197
    const-string v0, "ReadingAccessManager"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 198
    const-string v0, "ReadingAccessManager"

    const-string v1, "Device offline, using default access"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_21
    sget-object v0, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    .line 240
    :goto_23
    return-object v0

    .line 205
    :cond_24
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$300(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getSessionKeyFactory(Landroid/content/Context;)Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v0

    .line 208
    :try_start_2e
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$500(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$200(Lcom/google/android/apps/books/app/ReadingAccessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3d} :catch_9b

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateNonce()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeLongString(J)[B

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$300(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/Config;->buildFrom(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$200(Lcom/google/android/apps/books/app/ReadingAccessManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/apps/books/api/OceanApiaryUrls;->forRequestAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    .line 220
    :try_start_64
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$400(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/books/api/ApiaryClient;->NO_POST_DATA:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/apps/books/api/ApiaryClient;->makePostRequest(Lcom/google/api/client/googleapis/GoogleUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 222
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$400(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v2

    const-class v3, Lcom/google/android/apps/books/api/RequestAccessResponse;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mAccount:Landroid/accounts/Account;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$500(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/accounts/Account;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/apps/books/api/ApiaryClient;->execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/api/RequestAccessResponse;

    .line 227
    iget-object v4, v0, Lcom/google/android/apps/books/api/RequestAccessResponse;->concurrentAccess:Lcom/google/android/apps/books/api/ConcurrentAccessResponse;

    .line 228
    iget-boolean v0, v4, Lcom/google/android/apps/books/api/ConcurrentAccessResponse;->restricted:Z

    if-nez v0, :cond_a7

    const/4 v0, 0x1

    :goto_8e
    iget-boolean v1, v4, Lcom/google/android/apps/books/api/ConcurrentAccessResponse;->deviceAllowed:Z

    iget v2, v4, Lcom/google/android/apps/books/api/ConcurrentAccessResponse;->maxConcurrentDevices:I

    int-to-long v2, v2

    iget v4, v4, Lcom/google/android/apps/books/api/ConcurrentAccessResponse;->timeWindowSeconds:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/net/DeviceAccess;->newInstance(ZZJJ)Lcom/google/android/apps/books/net/DeviceAccess;
    :try_end_99
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_64 .. :try_end_99} :catch_a9
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_99} :catch_be

    move-result-object v0

    goto :goto_23

    .line 209
    :catch_9b
    move-exception v0

    .line 210
    const-string v1, "ReadingAccessManager"

    const-string v2, "Error finding session key"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    sget-object v0, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    goto/16 :goto_23

    :cond_a7
    move v0, v1

    .line 228
    goto :goto_8e

    .line 232
    :catch_a9
    move-exception v0

    .line 234
    const-string v1, "ReadingAccessManager"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 235
    const-string v1, "ReadingAccessManager"

    const-string v2, "Expired sesion key in /requestAccess apiary call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :cond_ba
    sget-object v0, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    goto/16 :goto_23

    .line 238
    :catch_be
    move-exception v0

    .line 239
    const-string v1, "ReadingAccessManager"

    const-string v2, "Error making /requestAccess apiary call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    sget-object v0, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    goto/16 :goto_23
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/net/DeviceAccess;
    .registers 6
    .parameter "voids"

    .prologue
    .line 173
    const-string v1, "ReadingAccessManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 174
    const-string v1, "ReadingAccessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking device access for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mVolumeId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$200(Lcom/google/android/apps/books/app/ReadingAccessManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$300(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/BooksGservicesHelper;->shouldGetAccessLock(Landroid/content/Context;)Z

    move-result v0

    .line 180
    .local v0, shouldGetAccessLock:Z
    if-nez v0, :cond_46

    .line 181
    const-string v1, "ReadingAccessManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 182
    const-string v1, "ReadingAccessManager"

    const-string v2, "Skipping concurrent access check due to Gservices"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_43
    sget-object v1, Lcom/google/android/apps/books/net/DeviceAccess;->sUnknown:Lcom/google/android/apps/books/net/DeviceAccess;

    .line 188
    :goto_45
    return-object v1

    :cond_46
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->useApiaryToCheckAccess()Lcom/google/android/apps/books/net/DeviceAccess;

    move-result-object v1

    goto :goto_45
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/net/DeviceAccess;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/books/net/DeviceAccess;)V
    .registers 10
    .parameter "access"

    .prologue
    .line 340
    const-string v4, "ReadingAccessManager"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 341
    const-string v4, "ReadingAccessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got device access "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_35
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mRunning:Z
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$900(Lcom/google/android/apps/books/app/ReadingAccessManager;)Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->isUnrestricted()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 357
    :cond_43
    :goto_43
    return-void

    .line 350
    :cond_44
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->isAllowed()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 351
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 352
    .local v0, millis:J
    const-wide/16 v4, 0x3a98

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 353
    .local v2, safeMillis:J
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$1000(Lcom/google/android/apps/books/app/ReadingAccessManager;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_43

    .line 355
    .end local v0           #millis:J
    .end local v2           #safeMillis:J
    :cond_68
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->this$0:Lcom/google/android/apps/books/app/ReadingAccessManager;

    #getter for: Lcom/google/android/apps/books/app/ReadingAccessManager;->mReader:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReadingAccessManager;->access$700(Lcom/google/android/apps/books/app/ReadingAccessManager;)Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/DeviceAccess;->getMaxDevices()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v4, v5}, Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;->accessDenied(I)V

    goto :goto_43
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, Lcom/google/android/apps/books/net/DeviceAccess;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReadingAccessManager$DeviceAccessTask;->onPostExecute(Lcom/google/android/apps/books/net/DeviceAccess;)V

    return-void
.end method
