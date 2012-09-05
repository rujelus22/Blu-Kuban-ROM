.class Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "LiveWallpaperPreview.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mConnected:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mIntent:Landroid/content/Intent;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter "intent"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 233
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 3
    .parameter "engine"

    .prologue
    .line 294
    monitor-enter p0

    .line 295
    :try_start_1
    iget-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_d

    .line 296
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13

    .line 298
    const/4 v0, 0x1

    :try_start_8
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_16

    .line 309
    :goto_b
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_13

    .line 310
    return-void

    .line 304
    :cond_d
    :try_start_d
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_b

    .line 305
    :catch_11
    move-exception v0

    goto :goto_b

    .line 309
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0

    .line 299
    :catch_16
    move-exception v0

    goto :goto_b
.end method

.method public connect()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 236
    monitor-enter p0

    .line 237
    :try_start_2
    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 238
    const/4 v0, 0x0

    monitor-exit p0

    .line 242
    :goto_f
    return v0

    .line 241
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    .line 242
    monitor-exit p0

    goto :goto_f

    .line 243
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    .line 249
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_1e

    if-eqz v0, :cond_10

    .line 251
    :try_start_8
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_23

    .line 255
    :goto_d
    const/4 v0, 0x0

    :try_start_e
    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1e

    .line 259
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v0, :cond_19

    .line 260
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-virtual {v0, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_19} :catch_21

    .line 266
    :cond_19
    :goto_19
    const/4 v0, 0x0

    :try_start_1a
    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 267
    monitor-exit p0

    .line 268
    return-void

    .line 267
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v0

    .line 262
    :catch_21
    move-exception v0

    goto :goto_19

    .line 252
    :catch_23
    move-exception v0

    goto :goto_d
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13
    .parameter "name"
    .parameter "service"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_2d

    .line 272
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 274
    :try_start_e
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Landroid/view/View;

    move-result-object v9

    .line 275
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 276
    .local v8, root:Landroid/view/View;
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2d} :catch_2e

    .line 283
    .end local v8           #root:Landroid/view/View;
    .end local v9           #view:Landroid/view/View;
    :cond_2d
    :goto_2d
    return-void

    .line 279
    :catch_2e
    move-exception v7

    .line 280
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "LiveWallpaperPreview"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 287
    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 288
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->mWallpaperConnection:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_25

    .line 289
    const-string v0, "LiveWallpaperPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_25
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .parameter "name"

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method
