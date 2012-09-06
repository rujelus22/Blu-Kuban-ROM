.class Lcom/google/android/music/widgets/TrackListView$9;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/TrackListView;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$9;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$9;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-static {p2}, Lcom/google/android/music/store/IStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/store/IStoreService;

    move-result-object v1

    #setter for: Lcom/google/android/music/widgets/TrackListView;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/widgets/TrackListView;->access$2802(Lcom/google/android/music/widgets/TrackListView;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 1143
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$9;->this$0:Lcom/google/android/music/widgets/TrackListView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/widgets/TrackListView;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/widgets/TrackListView;->access$2802(Lcom/google/android/music/widgets/TrackListView;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 1147
    return-void
.end method
