.class Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;
.super Ljava/lang/Object;
.source "CreateInstantMixActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->onFailure(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

.field final synthetic val$statusCode:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iput-object p2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->val$statusCode:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 352
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z
    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->access$500(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 353
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Lcom/google/android/music/CreateInstantMixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, errorMessage:Ljava/lang/CharSequence;
    :goto_13
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$300(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mLoadingProgressBar:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$600(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity;->mCancelButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$700(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 363
    return-void

    .line 354
    .end local v0           #errorMessage:Ljava/lang/CharSequence;
    :cond_3a
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->val$statusCode:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->INSUFFICIENT_RESULTS:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    if-ne v1, v2, :cond_58

    .line 355
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    const v2, 0x7f0d0146

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    #getter for: Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->access$200(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/CreateInstantMixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #errorMessage:Ljava/lang/CharSequence;
    goto :goto_13

    .line 358
    .end local v0           #errorMessage:Ljava/lang/CharSequence;
    :cond_58
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;->this$1:Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;

    iget-object v1, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    const v2, 0x7f0d0145

    invoke-virtual {v1, v2}, Lcom/google/android/music/CreateInstantMixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #errorMessage:Ljava/lang/CharSequence;
    goto :goto_13
.end method
