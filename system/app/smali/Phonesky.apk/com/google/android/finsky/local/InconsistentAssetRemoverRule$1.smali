.class Lcom/google/android/finsky/local/InconsistentAssetRemoverRule$1;
.super Ljava/lang/Object;
.source "InconsistentAssetRemoverRule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->run(Lcom/google/android/finsky/local/AssetStore;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule$1;->this$0:Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule$1;->this$0:Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;

    #getter for: Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->access$000(Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->forceReconstruct(Landroid/content/Context;)V

    .line 60
    return-void
.end method
