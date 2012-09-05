.class Lcom/google/android/apps/plus/fragments/InvitationFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "InvitationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/InvitationFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/InvitationFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->access$000(Lcom/google/android/apps/plus/fragments/InvitationFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/InvitationFragment;->mInviterId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->access$100(Lcom/google/android/apps/plus/fragments/InvitationFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
