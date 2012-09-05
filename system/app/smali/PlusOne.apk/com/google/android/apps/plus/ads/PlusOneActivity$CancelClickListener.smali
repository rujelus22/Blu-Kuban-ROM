.class Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;
.super Ljava/lang/Object;
.source "PlusOneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/ads/PlusOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/android/apps/plus/ads/PlusOneActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;-><init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #calls: Lcom/google/android/apps/plus/ads/PlusOneActivity;->maybeRecordFriendsShown()V
    invoke-static {v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$400(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V

    .line 417
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ADS_CANCEL_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/ads/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$500(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.circles.platform.result.extra.CONFIRMATION"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v1, "com.google.circles.platform.result.extra.ACTION"

    iget-object v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$600(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->setResult(ILandroid/content/Intent;)V

    .line 423
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->finish()V

    .line 424
    return-void
.end method
