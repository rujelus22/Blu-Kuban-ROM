.class Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$3;
.super Ljava/lang/Object;
.source "HostedHangoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "button"

    .prologue
    .line 546
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 547
    .local v0, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 548
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommService;->getNotificationIntent()Landroid/content/Intent;

    move-result-object v1

    .line 549
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1f

    .line 550
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->startActivity(Landroid/content/Intent;)V

    .line 553
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1f
    return-void
.end method
