.class public Lcom/android/exchange/DeviceInformationTask;
.super Landroid/os/AsyncTask;
.source "DeviceInformationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Lcom/android/exchange/DeviceInformation;

.field private mSvc:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/DeviceInformation;)V
    .registers 4
    .parameter "dInfo"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const-string v0, "DeviceInformationTask"

    iput-object v0, p0, Lcom/android/exchange/DeviceInformationTask;->TAG:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/android/exchange/DeviceInformationTask;->mSvc:Lcom/android/exchange/EasSyncService;

    .line 36
    iput-object v1, p0, Lcom/android/exchange/DeviceInformationTask;->mDeviceInfo:Lcom/android/exchange/DeviceInformation;

    .line 39
    iput-object p1, p0, Lcom/android/exchange/DeviceInformationTask;->mDeviceInfo:Lcom/android/exchange/DeviceInformation;

    .line 40
    return-void
.end method

.method private deviceInfoCb(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/emailcommon/service/IEmailServiceCallback;->deviceInfoStatus(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 62
    :goto_7
    return-void

    .line 59
    :catch_8
    move-exception v0

    goto :goto_7
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/DeviceInformationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7
    .parameter "params"

    .prologue
    .line 73
    const/16 v3, 0x1388

    invoke-direct {p0, v3}, Lcom/android/exchange/DeviceInformationTask;->deviceInfoCb(I)V

    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, result:I
    iget-object v3, p0, Lcom/android/exchange/DeviceInformationTask;->mSvc:Lcom/android/exchange/EasSyncService;

    if-eqz v3, :cond_1d

    .line 78
    :try_start_a
    iget-object v3, p0, Lcom/android/exchange/DeviceInformationTask;->mDeviceInfo:Lcom/android/exchange/DeviceInformation;

    invoke-virtual {v3}, Lcom/android/exchange/DeviceInformation;->buildCommand()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 79
    .local v0, deviceSerializer:Lcom/android/exchange/adapter/Serializer;
    if-eqz v0, :cond_1f

    .line 80
    iget-object v3, p0, Lcom/android/exchange/DeviceInformationTask;->mSvc:Lcom/android/exchange/EasSyncService;

    iget-object v4, p0, Lcom/android/exchange/DeviceInformationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/exchange/EasSyncService;->sendDeviceInformation(Landroid/content/Context;Lcom/android/exchange/adapter/Serializer;)I
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_19} :catch_27
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_31

    move-result v2

    .line 92
    :goto_1a
    invoke-direct {p0, v2}, Lcom/android/exchange/DeviceInformationTask;->deviceInfoCb(I)V

    .line 95
    .end local v0           #deviceSerializer:Lcom/android/exchange/adapter/Serializer;
    :cond_1d
    :goto_1d
    const/4 v3, 0x0

    return-object v3

    .line 82
    .restart local v0       #deviceSerializer:Lcom/android/exchange/adapter/Serializer;
    :cond_1f
    :try_start_1f
    const-string v3, "DeviceInformationTask"

    const-string v4, "deviceSerializer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_26} :catch_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_31

    goto :goto_1a

    .line 84
    .end local v0           #deviceSerializer:Lcom/android/exchange/adapter/Serializer;
    :catch_27
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/16 v2, 0x138a

    .line 86
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3b

    .line 92
    invoke-direct {p0, v2}, Lcom/android/exchange/DeviceInformationTask;->deviceInfoCb(I)V

    goto :goto_1d

    .line 87
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_31
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/IOException;
    const/16 v2, 0x1389

    .line 89
    :try_start_34
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 92
    invoke-direct {p0, v2}, Lcom/android/exchange/DeviceInformationTask;->deviceInfoCb(I)V

    goto :goto_1d

    .end local v1           #e:Ljava/io/IOException;
    :catchall_3b
    move-exception v3

    invoke-direct {p0, v2}, Lcom/android/exchange/DeviceInformationTask;->deviceInfoCb(I)V

    throw v3
.end method

.method public setUpService(Landroid/content/Context;Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "context"
    .parameter "svc"

    .prologue
    .line 51
    iput-object p2, p0, Lcom/android/exchange/DeviceInformationTask;->mSvc:Lcom/android/exchange/EasSyncService;

    .line 52
    iput-object p1, p0, Lcom/android/exchange/DeviceInformationTask;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method
