.class Lcom/google/android/finsky/activities/MyDownloadsFragment$6;
.super Ljava/lang/Object;
.source "MyDownloadsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MyDownloadsFragment;->showAssetDetails(Lcom/google/android/vending/model/Asset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

.field final synthetic val$asset:Lcom/google/android/vending/model/Asset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/vending/model/Asset;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->val$asset:Lcom/google/android/vending/model/Asset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public install()V
    .registers 4

    .prologue
    .line 504
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->val$asset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 506
    .local v0, launchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1a

    .line 507
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->startActivity(Landroid/content/Intent;)V

    .line 512
    :goto_19
    return-void

    .line 510
    :cond_1a
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->val$asset:Lcom/google/android/vending/model/Asset;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->goToPurchase(Lcom/google/android/vending/model/Asset;)V
    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$300(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/vending/model/Asset;)V

    goto :goto_19
.end method

.method public launch()V
    .registers 4

    .prologue
    .line 495
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->val$asset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 497
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 498
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->startActivity(Landroid/content/Intent;)V

    .line 499
    return-void
.end method

.method public refund()V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->val$asset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->refundAsset(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$500(Lcom/google/android/finsky/activities/MyDownloadsFragment;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public uninstall()V
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->val$asset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/AssetSupport;->showUninstallConfirmationDialog(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 491
    return-void
.end method

.method public update()V
    .registers 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->val$asset:Lcom/google/android/vending/model/Asset;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->goToPurchase(Lcom/google/android/vending/model/Asset;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$300(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/vending/model/Asset;)V

    .line 485
    return-void
.end method

.method public viewDetails()V
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;->val$asset:Lcom/google/android/vending/model/Asset;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->goToAssetDetails(Lcom/google/android/vending/model/Asset;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$400(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/vending/model/Asset;)V

    .line 517
    return-void
.end method
