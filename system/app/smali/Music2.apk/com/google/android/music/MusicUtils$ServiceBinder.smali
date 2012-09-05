.class Lcom/google/android/music/MusicUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;

.field private mContextWrapper:Landroid/content/ContextWrapper;

.field private mOnServiceConnectedHasBeenCalled:Z

.field private mUnbindFromServiceAfterServiceConnectedHasBeenCalled:Z


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 271
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mOnServiceConnectedHasBeenCalled:Z

    .line 275
    invoke-static {p2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 276
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_12

    .line 277
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 279
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mContextWrapper:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1b

    .line 280
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mContextWrapper:Landroid/content/ContextWrapper;

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 282
    :cond_1b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 288
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 289
    return-void
.end method

.method public unbindFromServiceAfterServiceConnected(Landroid/content/ContextWrapper;)V
    .registers 4
    .parameter "cw"

    .prologue
    const/4 v1, 0x1

    .line 307
    iget-boolean v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mUnbindFromServiceAfterServiceConnectedHasBeenCalled:Z

    if-ne v0, v1, :cond_d

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unbindFromServiceAfterServiceConnected called more than once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mUnbindFromServiceAfterServiceConnectedHasBeenCalled:Z

    .line 312
    iget-boolean v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mOnServiceConnectedHasBeenCalled:Z

    if-eqz v0, :cond_17

    .line 313
    invoke-virtual {p1, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 320
    :goto_16
    return-void

    .line 317
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 318
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mContextWrapper:Landroid/content/ContextWrapper;

    goto :goto_16
.end method
