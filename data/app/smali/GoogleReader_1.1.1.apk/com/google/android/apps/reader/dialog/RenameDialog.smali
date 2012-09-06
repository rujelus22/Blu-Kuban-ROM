.class abstract Lcom/google/android/apps/reader/dialog/RenameDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "RenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/dialog/RenameDialog$1;,
        Lcom/google/android/apps/reader/dialog/RenameDialog$QueryHandler;
    }
.end annotation


# static fields
.field private static final ARG_INITIAL_VALUE:Ljava/lang/String; = "reader:initial_value"

.field private static final ARG_MESSAGE:Ljava/lang/String; = "reader:message"

.field private static final ARG_TITLE:Ljava/lang/String; = "reader:title"

.field private static final ARG_URI:Ljava/lang/String; = "reader:uri"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/reader/dialog/RenameDialog;->mResultCode:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;IILjava/lang/CharSequence;)V
    .registers 7
    .parameter "uri"
    .parameter "title"
    .parameter "message"
    .parameter "initialValue"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/reader/dialog/RenameDialog;->mResultCode:I

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "reader:uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    const-string v1, "reader:title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v1, "reader:message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v1, "reader:initial_value"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method private getContext(Landroid/app/AlertDialog$Builder;)Landroid/content/Context;
    .registers 4
    .parameter "builder"

    .prologue
    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private rename()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 109
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reader:uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 110
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v7, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, type:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/reader/dialog/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, title:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 114
    const-string v0, "label"

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_39
    new-instance v0, Lcom/google/android/apps/reader/dialog/RenameDialog$QueryHandler;

    invoke-direct {v0, v7, v2}, Lcom/google/android/apps/reader/dialog/RenameDialog$QueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/google/android/apps/reader/dialog/RenameDialog$1;)V

    const/4 v1, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/reader/dialog/RenameDialog$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    return-void

    .line 115
    :cond_45
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 116
    const-string v0, "title"

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 118
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    packed-switch p2, :pswitch_data_c

    .line 105
    :goto_3
    return-void

    .line 101
    :pswitch_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->setResult(I)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->rename()V

    goto :goto_3

    .line 99
    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    const-string v2, "reader:title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    const-string v3, "reader:message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 79
    const-string v4, "reader:initial_value"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 80
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0, v4}, Lcom/google/android/apps/reader/dialog/RenameDialog;->getContext(Landroid/app/AlertDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    const v5, 0x7f03002e

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 83
    const v0, 0x7f0b005a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/reader/dialog/RenameDialog;->mEditText:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/reader/dialog/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/reader/dialog/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 86
    const v0, 0x7f0b0059

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 90
    const v0, 0x7f0d007d

    invoke-virtual {v4, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v0, 0x7f0d007c

    invoke-virtual {v4, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 131
    .local v1, target:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_13

    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;->getTargetRequestCode()I

    move-result v0

    .line 133
    .local v0, requestCode:I
    iget v2, p0, Lcom/google/android/apps/reader/dialog/RenameDialog;->mResultCode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    .end local v0           #requestCode:I
    :cond_13
    return-void
.end method

.method public setResult(I)V
    .registers 2
    .parameter "resultCode"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/apps/reader/dialog/RenameDialog;->mResultCode:I

    .line 125
    return-void
.end method
