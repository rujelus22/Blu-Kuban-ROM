.class Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;
.super Ljava/lang/Object;
.source "SelectRingtoneDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;Landroid/widget/ArrayAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 94
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, resId:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    .local v2, targetFragment:Landroid/app/Fragment;
    move-object v1, v2

    .line 97
    check-cast v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    .line 98
    .local v1, target:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    if-eqz v2, :cond_1b

    instance-of v3, v2, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    if-nez v3, :cond_1f

    .line 99
    :cond_1b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 124
    :cond_1e
    :goto_1e
    return-void

    .line 103
    :cond_1f
    packed-switch v0, :pswitch_data_5a

    .line 117
    :pswitch_22
    const-string v3, "SelectRingtoneDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_48
    if-eqz p1, :cond_1e

    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1e

    .line 105
    :pswitch_4e
    invoke-interface {v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onDefaultChosen()V

    goto :goto_48

    .line 109
    :pswitch_52
    invoke-interface {v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onPhoneRingtoneChosen()V

    goto :goto_48

    .line 113
    :pswitch_56
    invoke-interface {v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onGotoMyfilesChosen()V

    goto :goto_48

    .line 103
    :pswitch_data_5a
    .packed-switch 0x7f0a0223
        :pswitch_52
        :pswitch_4e
        :pswitch_22
        :pswitch_22
        :pswitch_56
    .end packed-switch
.end method
