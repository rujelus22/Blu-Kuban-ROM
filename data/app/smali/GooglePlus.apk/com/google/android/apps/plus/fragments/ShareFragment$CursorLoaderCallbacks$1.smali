.class Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks$1;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->handlePreviewResult(Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;)V
    .registers 2
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updateViews(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2400(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V

    .line 854
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updateBottomActionBar()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2500(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    .line 855
    return-void
.end method
