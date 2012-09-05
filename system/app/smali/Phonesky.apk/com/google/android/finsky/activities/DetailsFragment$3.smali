.class Lcom/google/android/finsky/activities/DetailsFragment$3;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment;->attachAssetChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;

.field final synthetic val$docPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$3;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsFragment$3;->val$docPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private syncContent(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 738
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/activities/DetailsFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/activities/DetailsFragment$3$1;-><init>(Lcom/google/android/finsky/activities/DetailsFragment$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 750
    return-void
.end method


# virtual methods
.method public onAssetAdded(Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 3
    .parameter "asset"

    .prologue
    .line 732
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsFragment$3;->syncContent(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public onAssetChanged(Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/local/AssetState;)V
    .registers 5
    .parameter "asset"
    .parameter "previousState"

    .prologue
    .line 720
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    .line 721
    .local v0, currState:Lcom/google/android/finsky/local/AssetState;
    if-ne v0, p2, :cond_7

    .line 728
    :goto_6
    return-void

    .line 727
    :cond_7
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DetailsFragment$3;->syncContent(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onAssetDeleted(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsFragment$3;->syncContent(Ljava/lang/String;)V

    .line 716
    return-void
.end method
