.class public Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AlertFragmentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    }
.end annotation


# instance fields
.field private alertDialogListener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 33
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .registers 5
    .parameter "title"
    .parameter "message"
    .parameter "positiveButtonText"
    .parameter "negativeButtonText"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .registers 8
    .parameter "title"
    .parameter "message"
    .parameter "positiveButtonText"
    .parameter "negativeButtonText"
    .parameter "iconResId"

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, args:Landroid/os/Bundle;
    if-eqz p0, :cond_c

    .line 88
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_c
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz p2, :cond_18

    .line 93
    const-string v2, "positive"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_18
    if-eqz p3, :cond_1f

    .line 97
    const-string v2, "negative"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1f
    if-eqz p4, :cond_26

    .line 101
    const-string v2, "icon"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    :cond_26
    new-instance v1, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 105
    .local v1, frag:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .registers 5
    .parameter "title"
    .parameter "list"

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, args:Landroid/os/Bundle;
    if-eqz p0, :cond_c

    .line 120
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_c
    if-eqz p1, :cond_13

    .line 123
    const-string v2, "list"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    :cond_13
    new-instance v1, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 127
    .local v1, frag:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 128
    return-object v1
.end method


# virtual methods
.method public getDialogContext()Landroid/content/Context;
    .registers 4

    .prologue
    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_b

    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 154
    .local v0, context:Landroid/content/Context;
    :goto_a
    return-object v0

    .line 151
    .end local v0           #context:Landroid/content/Context;
    :cond_b
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x103000b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_a
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->alertDialogListener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;

    .line 225
    .local v0, listener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    if-nez v0, :cond_a

    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0           #listener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    check-cast v0, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;

    .line 228
    .restart local v0       #listener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    :cond_a
    if-eqz v0, :cond_17

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;->onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 231
    :cond_17
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->alertDialogListener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;

    .line 195
    .local v1, listener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;

    if-eqz v2, :cond_12

    .line 196
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .end local v1           #listener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    check-cast v1, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;

    .line 198
    .restart local v1       #listener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
    :cond_12
    if-eqz v1, :cond_2c

    .line 199
    packed-switch p2, :pswitch_data_46

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 212
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-ltz p2, :cond_2c

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v0, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;->onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 219
    .end local v0           #args:Landroid/os/Bundle;
    :cond_2c
    :goto_2c
    return-void

    .line 201
    :pswitch_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;->onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2c

    .line 206
    :pswitch_39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;->onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2c

    .line 199
    nop

    :pswitch_data_46
    .packed-switch -0x2
        :pswitch_39
        :pswitch_2d
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 166
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    :cond_1e
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 170
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    :cond_2f
    const-string v2, "positive"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 174
    const-string v2, "positive"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    :cond_40
    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 178
    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    :cond_51
    const-string v2, "icon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 182
    const-string v2, "icon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 185
    :cond_62
    const-string v2, "list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 186
    const-string v2, "list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    :cond_73
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setListener(Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->alertDialogListener:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;

    .line 139
    return-void
.end method
