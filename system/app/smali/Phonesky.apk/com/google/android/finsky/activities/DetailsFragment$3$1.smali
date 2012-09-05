.class Lcom/google/android/finsky/activities/DetailsFragment$3$1;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment$3;->syncContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/DetailsFragment$3;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment$3;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$3$1;->this$1:Lcom/google/android/finsky/activities/DetailsFragment$3;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsFragment$3$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$3$1;->this$1:Lcom/google/android/finsky/activities/DetailsFragment$3;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment$3;->val$docPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment$3$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 742
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$3$1;->this$1:Lcom/google/android/finsky/activities/DetailsFragment$3;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment$3;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 743
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$3$1;->this$1:Lcom/google/android/finsky/activities/DetailsFragment$3;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment$3;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    #getter for: Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsFragment;->access$000(Lcom/google/android/finsky/activities/DetailsFragment;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->refresh()V

    .line 745
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$3$1;->this$1:Lcom/google/android/finsky/activities/DetailsFragment$3;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment$3;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #calls: Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/DetailsFragment;->access$100(Lcom/google/android/finsky/activities/DetailsFragment;Landroid/os/Bundle;)V

    .line 748
    :cond_2d
    return-void
.end method
