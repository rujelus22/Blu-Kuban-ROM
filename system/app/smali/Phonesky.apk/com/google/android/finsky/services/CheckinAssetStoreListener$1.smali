.class Lcom/google/android/finsky/services/CheckinAssetStoreListener$1;
.super Landroid/os/Handler;
.source "CheckinAssetStoreListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/CheckinAssetStoreListener;-><init>(Landroid/content/Context;Lcom/google/android/finsky/services/ContentSyncService$Facade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/CheckinAssetStoreListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/CheckinAssetStoreListener;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener$1;->this$0:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener$1;->this$0:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    #getter for: Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSyncService:Lcom/google/android/finsky/services/ContentSyncService$Facade;
    invoke-static {v0}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->access$100(Lcom/google/android/finsky/services/CheckinAssetStoreListener;)Lcom/google/android/finsky/services/ContentSyncService$Facade;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener$1;->this$0:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    #getter for: Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->access$000(Lcom/google/android/finsky/services/CheckinAssetStoreListener;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/services/ContentSyncService$Facade;->sync(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener$1;->this$0:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mDirty:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->access$202(Lcom/google/android/finsky/services/CheckinAssetStoreListener;Z)Z

    .line 60
    return-void
.end method
