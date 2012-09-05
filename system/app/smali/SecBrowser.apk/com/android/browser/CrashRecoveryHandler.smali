.class public Lcom/android/browser/CrashRecoveryHandler;
.super Ljava/lang/Object;
.source "CrashRecoveryHandler.java"


# static fields
.field private static sInstance:Lcom/android/browser/CrashRecoveryHandler;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mCreateState:Ljava/lang/Runnable;

.field private mDidPreload:Z

.field private mForegroundHandler:Landroid/os/Handler;

.field private mIsPreloading:Z

.field private mRecoveryState:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lcom/android/browser/Controller;)V
    .registers 4
    .parameter "controller"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 140
    new-instance v0, Lcom/android/browser/CrashRecoveryHandler$2;

    invoke-direct {v0, p0}, Lcom/android/browser/CrashRecoveryHandler$2;-><init>(Lcom/android/browser/CrashRecoveryHandler;)V

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    .line 80
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/browser/CrashRecoveryHandler$1;

    invoke-static {}, Lcom/android/browser/BackgroundHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/browser/CrashRecoveryHandler$1;-><init>(Lcom/android/browser/CrashRecoveryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/CrashRecoveryHandler;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/CrashRecoveryHandler;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/browser/CrashRecoveryHandler;->loadCrashState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/CrashRecoveryHandler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/browser/CrashRecoveryHandler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/browser/CrashRecoveryHandler;)Lcom/android/browser/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/CrashRecoveryHandler;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static initialize(Lcom/android/browser/Controller;)Lcom/android/browser/CrashRecoveryHandler;
    .registers 2
    .parameter "controller"

    .prologue
    .line 66
    sget-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    if-nez v0, :cond_e

    .line 67
    new-instance v0, Lcom/android/browser/CrashRecoveryHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/CrashRecoveryHandler;-><init>(Lcom/android/browser/Controller;)V

    sput-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    .line 71
    :goto_b
    sget-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    return-object v0

    .line 69
    :cond_e
    sget-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    iput-object p0, v0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    goto :goto_b
.end method

.method private loadCrashState()Landroid/os/Bundle;
    .registers 14

    .prologue
    const/4 v10, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/browser/CrashRecoveryHandler;->shouldRestore()Z

    move-result v11

    if-nez v11, :cond_9

    move-object v8, v10

    .line 220
    :cond_8
    :goto_8
    return-object v8

    .line 187
    :cond_9
    const/4 v8, 0x0

    .line 188
    .local v8, state:Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 189
    .local v6, parcel:Landroid/os/Parcel;
    const/4 v4, 0x0

    .line 191
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_f
    new-instance v9, Ljava/io/File;

    iget-object v11, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "browser_state.parcel"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v9, stateFile:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_21} :catch_90
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_21} :catch_68

    .line 193
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v5, fin:Ljava/io/FileInputStream;
    :try_start_21
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v2, dataStream:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 196
    .local v0, buffer:[B
    :goto_2a
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-lez v7, :cond_4a

    .line 197
    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_34} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_34} :catch_8d

    goto :goto_2a

    .line 203
    .end local v0           #buffer:[B
    .end local v2           #dataStream:Ljava/io/ByteArrayOutputStream;
    .end local v7           #read:I
    :catch_35
    move-exception v3

    move-object v4, v5

    .line 205
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v9           #stateFile:Ljava/io/File;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :goto_37
    const/4 v8, 0x0

    .line 210
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 211
    if-eqz v4, :cond_40

    .line 213
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_86

    .line 217
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_40
    :goto_40
    if-eqz v8, :cond_48

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_48
    move-object v8, v10

    .line 220
    goto :goto_8

    .line 199
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #dataStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v7       #read:I
    .restart local v9       #stateFile:Ljava/io/File;
    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 200
    .local v1, data:[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-virtual {v6, v1, v11, v12}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 201
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 202
    invoke-virtual {v6}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_5a} :catch_35
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_5a} :catch_8d

    move-result-object v8

    .line 210
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 211
    if-eqz v5, :cond_92

    .line 213
    :try_start_60
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_65

    move-object v4, v5

    .line 214
    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_40

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_65
    move-exception v11

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_40

    .line 206
    .end local v0           #buffer:[B
    .end local v1           #data:[B
    .end local v2           #dataStream:Ljava/io/ByteArrayOutputStream;
    .end local v7           #read:I
    .end local v9           #stateFile:Ljava/io/File;
    :catch_68
    move-exception v3

    .line 207
    .local v3, e:Ljava/lang/Throwable;
    :goto_69
    :try_start_69
    const-string v11, "BrowserCrashRecovery"

    const-string v12, "Failed to recover state!"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_7c

    .line 208
    const/4 v8, 0x0

    .line 210
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 211
    if-eqz v4, :cond_40

    .line 213
    :try_start_76
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_40

    .line 214
    :catch_7a
    move-exception v11

    goto :goto_40

    .line 210
    .end local v3           #e:Ljava/lang/Throwable;
    :catchall_7c
    move-exception v10

    :goto_7d
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 211
    if-eqz v4, :cond_85

    .line 213
    :try_start_82
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_88

    .line 214
    :cond_85
    :goto_85
    throw v10

    .local v3, e:Ljava/io/FileNotFoundException;
    :catch_86
    move-exception v11

    goto :goto_40

    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_88
    move-exception v11

    goto :goto_85

    .line 210
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v9       #stateFile:Ljava/io/File;
    :catchall_8a
    move-exception v10

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_7d

    .line 206
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_8d
    move-exception v3

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_69

    .line 203
    .end local v9           #stateFile:Ljava/io/File;
    :catch_90
    move-exception v3

    goto :goto_37

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #data:[B
    .restart local v2       #dataStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v7       #read:I
    .restart local v9       #stateFile:Ljava/io/File;
    :cond_92
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_40
.end method

.method private shouldRestore()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    const-string v7, "browser_recovery_prefs"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 167
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "last_recovered"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 168
    .local v0, lastRecovered:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v0

    .line 169
    .local v3, timeSinceLastRecover:J
    const-wide/32 v6, 0x493e0

    cmp-long v6, v3, v6

    if-lez v6, :cond_1f

    .line 170
    const/4 v5, 0x1

    .line 172
    :cond_1f
    return v5
.end method

.method private updateLastRecovered(J)V
    .registers 7
    .parameter "time"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    const-string v2, "browser_recovery_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_recovered"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-void
.end method


# virtual methods
.method public backupState()V
    .registers 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method

.method public clearState()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/CrashRecoveryHandler;->updateLastRecovered(J)V

    .line 162
    return-void
.end method

.method public preloadCrashState()V
    .registers 3

    .prologue
    .line 241
    monitor-enter p0

    .line 242
    :try_start_1
    iget-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    if-eqz v0, :cond_7

    .line 243
    monitor-exit p0

    .line 248
    :goto_6
    return-void

    .line 245
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    .line 246
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    .line 247
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 246
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public startRecovery(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-eqz v0, :cond_b

    .line 227
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 228
    :catch_9
    move-exception v0

    goto :goto_1

    .line 230
    :cond_b
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_2c

    .line 231
    iget-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    if-nez v0, :cond_16

    .line 232
    invoke-direct {p0}, Lcom/android/browser/CrashRecoveryHandler;->loadCrashState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 234
    :cond_16
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    if-eqz v0, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1e
    invoke-direct {p0, v0, v1}, Lcom/android/browser/CrashRecoveryHandler;->updateLastRecovered(J)V

    .line 236
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/android/browser/Controller;->doStart(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 238
    return-void

    .line 230
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    .line 234
    :cond_2f
    const-wide/16 v0, 0x0

    goto :goto_1e
.end method
