.class public Landroid/app/enterprise/DatafadePolicy;
.super Ljava/lang/Object;
.source "DatafadePolicy.java"


# static fields
.field public static final EXTERNAL_MEMORY:Ljava/lang/String; = "external"

.field public static final FACTORY_RESET:Ljava/lang/String; = "factory_reset"

.field public static final INTERNAL_EXTERNAL_MEMORY:Ljava/lang/String; = "all"

.field public static final INTERNAL_MEMORY:Ljava/lang/String; = "internal"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IDataFadePolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "DataFadePolicy"

    sput-object v0, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    .line 61
    return-void
.end method


# virtual methods
.method public addDatafadeWipeTask(IIII[Ljava/lang/String;)Z
    .registers 13
    .parameter "wipeTypeWeight"
    .parameter "timeDurationToPromptAuth"
    .parameter "timeDurationToWaitForAuthInput"
    .parameter "validAuthAttempts"
    .parameter "wipeTypeMetaData"

    .prologue
    .line 169
    iget-object v0, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v0, :cond_18

    .line 171
    :try_start_4
    iget-object v0, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IDataFadePolicy;->addDatafadeWipeTask(IIII[Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    move-result v0

    .line 179
    :goto_f
    return v0

    .line 175
    :catch_10
    move-exception v6

    .line 176
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public deleteDatafadeWipeTask(I)Z
    .registers 5
    .parameter "wipeTypeWeight"

    .prologue
    .line 200
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_13

    .line 202
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDataFadePolicy;->deleteDatafadeWipeTask(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 207
    :goto_a
    return v1

    .line 203
    :catch_b
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDatafadeWipeInfoList(I)[Landroid/app/enterprise/DatafadeInfo;
    .registers 5
    .parameter "wipeTypeWeight"

    .prologue
    .line 228
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_13

    .line 230
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDataFadePolicy;->getDatafadeWipeInfoList(I)[Landroid/app/enterprise/DatafadeInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 235
    :goto_a
    return-object v1

    .line 231
    :catch_b
    move-exception v0

    .line 232
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public registerDatafadeWipeCallback(Landroid/app/enterprise/DatafadeWipeCallback;)V
    .registers 5
    .parameter "cb"

    .prologue
    .line 253
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_b

    .line 255
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    iget-object v2, p1, Landroid/app/enterprise/DatafadeWipeCallback;->callback:Landroid/app/enterprise/IDatafadeWipeCallback;

    invoke-interface {v1, v2}, Landroid/app/enterprise/IDataFadePolicy;->registerDatafadeWipeCallback(Landroid/app/enterprise/IDatafadeWipeCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 260
    :cond_b
    :goto_b
    return-void

    .line 256
    :catch_c
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public startDatafadeWipe()Z
    .registers 4

    .prologue
    .line 81
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_13

    .line 83
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDataFadePolicy;->startDatafadeWipe()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 88
    :goto_a
    return v1

    .line 84
    :catch_b
    move-exception v0

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public stopDatafadeWipe()Z
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_13

    .line 105
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDataFadePolicy;->stopDatafadeWipe()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 110
    :goto_a
    return v1

    .line 106
    :catch_b
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public unregisterDatafadeWipeCallback(Landroid/app/enterprise/DatafadeWipeCallback;)V
    .registers 5
    .parameter "cb"

    .prologue
    .line 274
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_b

    .line 276
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    iget-object v2, p1, Landroid/app/enterprise/DatafadeWipeCallback;->callback:Landroid/app/enterprise/IDatafadeWipeCallback;

    invoke-interface {v1, v2}, Landroid/app/enterprise/IDataFadePolicy;->unregisterDatafadeWipeCallback(Landroid/app/enterprise/IDatafadeWipeCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 281
    :cond_b
    :goto_b
    return-void

    .line 277
    :catch_c
    move-exception v0

    .line 278
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
