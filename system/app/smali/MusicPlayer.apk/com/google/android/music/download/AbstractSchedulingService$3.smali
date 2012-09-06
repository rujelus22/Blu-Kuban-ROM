.class Lcom/google/android/music/download/AbstractSchedulingService$3;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "AbstractSchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/AbstractSchedulingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/download/AbstractSchedulingService;


# direct methods
.method constructor <init>(Lcom/google/android/music/download/AbstractSchedulingService;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService$3;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$3;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    invoke-static {p2}, Lcom/google/android/music/download/cache/ICacheManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/download/cache/ICacheManager;

    move-result-object v1

    #setter for: Lcom/google/android/music/download/AbstractSchedulingService;->mCacheManager:Lcom/google/android/music/download/cache/ICacheManager;
    invoke-static {v0, v1}, Lcom/google/android/music/download/AbstractSchedulingService;->access$302(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/download/cache/ICacheManager;)Lcom/google/android/music/download/cache/ICacheManager;

    .line 83
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$3;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    #calls: Lcom/google/android/music/download/AbstractSchedulingService;->updateServiceState()V
    invoke-static {v0}, Lcom/google/android/music/download/AbstractSchedulingService;->access$100(Lcom/google/android/music/download/AbstractSchedulingService;)V

    .line 84
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$3;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/download/AbstractSchedulingService;->mCacheManager:Lcom/google/android/music/download/cache/ICacheManager;
    invoke-static {v0, v1}, Lcom/google/android/music/download/AbstractSchedulingService;->access$302(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/download/cache/ICacheManager;)Lcom/google/android/music/download/cache/ICacheManager;

    .line 88
    return-void
.end method
