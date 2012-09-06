.class public Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;
.super Lcom/dropbox/android/util/DialogFragmentBase;
.source "panda.py"


# static fields
.field private static X:Ljava/lang/String;


# instance fields
.field private W:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "root"

    sput-object v0, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dropbox/android/util/DialogFragmentBase;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->W:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;Ljava/lang/String;)Lcom/dropbox/android/activity/delegate/F;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a(Ljava/lang/String;)Lcom/dropbox/android/activity/delegate/F;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/dropbox/android/activity/delegate/F;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-static {p1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    new-instance v0, Lcom/dropbox/android/activity/delegate/F;

    sget-object v1, Lcom/dropbox/android/activity/delegate/G;->c:Lcom/dropbox/android/activity/delegate/G;

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/delegate/F;-><init>(Lcom/dropbox/android/activity/delegate/G;Landroid/net/Uri;)V

    .line 134
    :goto_e
    return-object v0

    .line 126
    :cond_f
    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 127
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/dropbox/android/provider/FileSystemProvider;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 129
    new-instance v0, Lcom/dropbox/android/activity/delegate/F;

    sget-object v1, Lcom/dropbox/android/activity/delegate/G;->b:Lcom/dropbox/android/activity/delegate/G;

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/delegate/F;-><init>(Lcom/dropbox/android/activity/delegate/G;Landroid/net/Uri;)V

    goto :goto_e

    .line 130
    :cond_32
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 132
    new-instance v0, Lcom/dropbox/android/activity/delegate/F;

    sget-object v2, Lcom/dropbox/android/activity/delegate/G;->a:Lcom/dropbox/android/activity/delegate/G;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/android/activity/delegate/F;-><init>(Lcom/dropbox/android/activity/delegate/G;Landroid/net/Uri;)V

    goto :goto_e

    .line 134
    :cond_4c
    new-instance v0, Lcom/dropbox/android/activity/delegate/F;

    sget-object v1, Lcom/dropbox/android/activity/delegate/G;->c:Lcom/dropbox/android/activity/delegate/G;

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/delegate/F;-><init>(Lcom/dropbox/android/activity/delegate/G;Landroid/net/Uri;)V

    goto :goto_e
.end method

.method public static a(Landroid/net/Uri;)Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;
    .registers 4
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    sget-object v2, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->X:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->f(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->V:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 47
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    const v0, 0x7f090090

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 49
    const v0, 0x7f090091

    new-instance v2, Lcom/dropbox/android/activity/delegate/D;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/delegate/D;-><init>(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v0, 0x7f09000d

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030022

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    const v0, 0x7f0d00a2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->W:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0d00a3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const v0, 0x7f0d00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->W:Landroid/widget/EditText;

    new-instance v2, Lcom/dropbox/android/activity/delegate/E;

    invoke-direct {v2, p0, v0}, Lcom/dropbox/android/activity/delegate/E;-><init>(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    return-object v0
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/dropbox/android/util/DialogFragmentBase;->c()V

    .line 98
    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 99
    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->W:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_37

    const/4 v0, 0x1

    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    :cond_36
    return-void

    .line 99
    :cond_37
    const/4 v0, 0x0

    goto :goto_33
.end method
