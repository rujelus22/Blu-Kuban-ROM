.class Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;
.super Ljava/lang/Object;
.source "EditAudienceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditAudienceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudienceFromList()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$500(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/AudienceUtils;->areEqual(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$600(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;)Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$EditAudienceAdapter;->notifyDataSetChanged()V

    .line 317
    :cond_26
    return-void
.end method
