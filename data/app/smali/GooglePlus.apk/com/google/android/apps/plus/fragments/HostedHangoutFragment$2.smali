.class Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;
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
    .line 532
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "button"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRingBeforeDisable:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getNewHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->startActivity(Landroid/content/Intent;)V

    .line 539
    return-void
.end method
