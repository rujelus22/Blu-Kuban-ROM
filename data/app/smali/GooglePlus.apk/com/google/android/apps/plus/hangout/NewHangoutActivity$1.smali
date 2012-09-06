.class Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;
.super Ljava/lang/Object;
.source "NewHangoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "button"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$000(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mRingHangoutToggleWidget:Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$100(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->getRingInvitees()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->mAudienceFragment:Lcom/google/android/apps/plus/fragments/AudienceFragment;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->access$200(Lcom/google/android/apps/plus/hangout/NewHangoutActivity;)Lcom/google/android/apps/plus/fragments/AudienceFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getNewHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/NewHangoutActivity$1;->this$0:Lcom/google/android/apps/plus/hangout/NewHangoutActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/NewHangoutActivity;->finish()V

    .line 77
    return-void
.end method
