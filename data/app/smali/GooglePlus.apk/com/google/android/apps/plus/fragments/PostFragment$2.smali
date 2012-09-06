.class Lcom/google/android/apps/plus/fragments/PostFragment$2;
.super Ljava/lang/Object;
.source "PostFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1700(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/AudienceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$1800(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$800(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    .line 584
    return-void
.end method
