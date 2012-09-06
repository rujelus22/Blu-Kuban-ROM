.class Lcom/google/android/music/MediaPlaybackActivity$1;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$1;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$1;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/google/android/music/store/IStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/store/IStoreService;

    move-result-object v1

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$002(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 226
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$1;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$002(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 230
    return-void
.end method
