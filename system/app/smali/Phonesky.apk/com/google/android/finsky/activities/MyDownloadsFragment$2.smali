.class Lcom/google/android/finsky/activities/MyDownloadsFragment$2;
.super Ljava/lang/Object;
.source "MyDownloadsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MyDownloadsFragment;->attachAssetChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$2;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetAdded(Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 3
    .parameter "asset"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$2;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->asyncRefreshAdapter()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$100(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    .line 338
    return-void
.end method

.method public onAssetChanged(Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/local/AssetState;)V
    .registers 5
    .parameter "asset"
    .parameter "previousState"

    .prologue
    .line 325
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    .line 326
    .local v0, currState:Lcom/google/android/finsky/local/AssetState;
    if-ne v0, p2, :cond_7

    .line 333
    :goto_6
    return-void

    .line 332
    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$2;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->asyncRefreshAdapter()V
    invoke-static {v1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$100(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    goto :goto_6
.end method

.method public onAssetDeleted(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$2;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->asyncRefreshAdapter()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$100(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    .line 321
    return-void
.end method
