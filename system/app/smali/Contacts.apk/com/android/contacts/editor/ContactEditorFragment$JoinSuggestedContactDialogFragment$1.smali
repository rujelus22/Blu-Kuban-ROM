.class Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1892
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1894
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ContactEditorFragment;

    .line 1896
    .local v1, targetFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "rawContactIds"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 1898
    .local v0, rawContactIds:[J
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doJoinSuggestedContact([J)V

    .line 1899
    return-void
.end method
