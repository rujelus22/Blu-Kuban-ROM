.class Lcom/android/contacts/detail/ContactDetailFragment$9;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->addRingtone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$9;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$9;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1233
    :goto_8
    return-void

    .line 1232
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$9;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$9;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_8
.end method
