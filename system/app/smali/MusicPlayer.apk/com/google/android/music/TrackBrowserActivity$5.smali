.class Lcom/google/android/music/TrackBrowserActivity$5;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {p2}, Lcom/google/android/music/store/IStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/store/IStoreService;

    move-result-object v1

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$602(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 852
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->updateContainerOfflineStatus()V
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$1500(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 853
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$602(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 857
    return-void
.end method
