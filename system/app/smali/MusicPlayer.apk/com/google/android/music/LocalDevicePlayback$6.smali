.class Lcom/google/android/music/LocalDevicePlayback$6;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "LocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 980
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$6;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$6;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-static {p2}, Lcom/google/android/music/store/IStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/store/IStoreService;

    move-result-object v1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1102(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 983
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$6;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1102(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 987
    return-void
.end method
