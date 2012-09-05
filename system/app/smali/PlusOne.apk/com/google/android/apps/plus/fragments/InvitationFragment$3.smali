.class Lcom/google/android/apps/plus/fragments/InvitationFragment$3;
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
    .line 186
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 189
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/InvitationFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/InvitationFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/InvitationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "block_person"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 191
    return-void
.end method
