.class Lcom/google/android/apps/plus/fragments/InvitationFragment$2;
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
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/InvitationFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->access$000(Lcom/google/android/apps/plus/fragments/InvitationFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method
