.class Lcom/google/android/apps/plus/ads/PlusOneActivity$2;
.super Ljava/lang/Object;
.source "PlusOneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/ads/PlusOneActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ADS_ABUSE_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/ads/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$500(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 463
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$700(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$1000(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyInstallerPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->access$1100(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->reportAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.circles.platform.result.extra.CONFIRMATION"

    const-string v2, "abuse"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->setResult(ILandroid/content/Intent;)V

    .line 471
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;->this$0:Lcom/google/android/apps/plus/ads/PlusOneActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->finish()V

    .line 472
    return-void
.end method
