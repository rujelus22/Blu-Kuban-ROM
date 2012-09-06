.class Lcom/google/android/apps/plus/fragments/ShareFragment$2;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
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
    .line 318
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 3
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 347
    return-void
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "circle"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->clearText()V

    .line 334
    return-void
.end method

.method public onDismissSuggestionAction(Ljava/lang/String;)V
    .registers 2
    .parameter "personId"

    .prologue
    .line 355
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->clearText()V

    .line 343
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 325
    return-void
.end method

.method public onUnblockPersonAction(Ljava/lang/String;Z)V
    .registers 3
    .parameter "personId"
    .parameter "isPlusPage"

    .prologue
    .line 351
    return-void
.end method
