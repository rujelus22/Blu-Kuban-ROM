.class Lcom/google/android/apps/plus/fragments/ShareFragment$5;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$2200(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 902
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1500(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V

    .line 903
    return-void
.end method
