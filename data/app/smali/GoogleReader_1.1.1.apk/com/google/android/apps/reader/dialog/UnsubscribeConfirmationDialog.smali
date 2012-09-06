.class public Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "UnsubscribeConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$1;,
        Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$QueryHandler;
    }
.end annotation


# static fields
.field private static final ARG_TITLE:Ljava/lang/String; = "reader:title"

.field private static final ARG_URI:Ljava/lang/String; = "reader:uri"


# instance fields
.field private mQueryHandler:Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$QueryHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "uri"
    .parameter "label"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "reader:uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    const-string v1, "reader:title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method private unsubscribe()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 93
    .local v6, args:Landroid/os/Bundle;
    const-string v0, "reader:uri"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 94
    .local v3, uri:Landroid/net/Uri;
    const-string v0, "reader:title"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 95
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;->mQueryHandler:Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$QueryHandler;

    const/4 v1, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 84
    packed-switch p2, :pswitch_data_8

    .line 89
    :goto_3
    return-void

    .line 86
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;->unsubscribe()V

    goto :goto_3

    .line 84
    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$QueryHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$QueryHandler;-><init>(Landroid/content/Context;Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$1;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;->mQueryHandler:Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog$QueryHandler;

    .line 66
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "reader:title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    const v3, 0x7f0d005c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 74
    const v3, 0x7f0d005b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    const v0, 0x7f0d005d

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    const v0, 0x7f0d005e

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
