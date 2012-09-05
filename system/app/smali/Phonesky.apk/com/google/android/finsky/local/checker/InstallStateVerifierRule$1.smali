.class Lcom/google/android/finsky/local/checker/InstallStateVerifierRule$1;
.super Ljava/lang/Object;
.source "InstallStateVerifierRule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->run(Lcom/google/android/finsky/local/AssetStore;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule$1;->this$0:Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule$1;->this$0:Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;

    #getter for: Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->access$000(Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->forceReconstruct(Landroid/content/Context;)V

    .line 74
    return-void
.end method
