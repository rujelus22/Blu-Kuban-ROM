.class Lcom/google/android/apps/plus/hangout/HermesActivity$7;
.super Ljava/lang/Object;
.source "HermesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$7;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$7;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAwaitingVideoResponse:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3002(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)Z

    .line 750
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$7;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    .line 752
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$7;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mUpgradeToHangoutMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$2800(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$7;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const v1, 0x7f0702d8

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 755
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$7;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const v1, 0x7f060001

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->playSound(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$3100(Lcom/google/android/apps/plus/hangout/HermesActivity;I)V

    .line 756
    return-void
.end method
