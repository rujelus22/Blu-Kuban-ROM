.class public Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "EditTitleDialogFragment.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private a:LkU;

.field private a:Lor;

.field private c:Ljava/lang/String;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->v:Z

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static a(LkU;Ljava/lang/String;)Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "defaultTitle"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "kind"

    invoke-virtual {p0}, LkU;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->d(Landroid/os/Bundle;)V

    .line 48
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 149
    const-string v0, "defaultTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 150
    const-string v0, "defaultTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)LkU;
    .registers 3
    .parameter

    .prologue
    .line 154
    const-string v0, "kind"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 155
    const-string v0, "kind"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LkT;->a(Ljava/lang/String;)LkU;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)LkU;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:LkU;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lor;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lor;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->v:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lck;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lck;

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 70
    new-instance v1, Lox;

    invoke-direct {v1, p0, v0}, Lox;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V

    iput-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lor;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 85
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    const/16 v2, 0x4001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 90
    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 91
    sget v2, LcY;->document_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 94
    const v2, 0x104000a

    new-instance v3, Loy;

    invoke-direct {v3, p0, v0}, Loy;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    const/high16 v2, 0x104

    new-instance v3, Loz;

    invoke-direct {v3, p0, v0}, Loz;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    sget-object v2, Los;->a:Los;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    new-instance v3, LoA;

    invoke-direct {v3, p0, v0, v1}, LoA;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Lcom/google/android/apps/docs/app/CreateNewDocActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    return-object v1
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->c:Ljava/lang/String;

    .line 62
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Landroid/os/Bundle;)LkU;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:LkU;

    .line 63
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->f()V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->v:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 134
    iget-boolean v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->v:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lor;

    if-eqz v0, :cond_16

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a:Lor;

    invoke-interface {v0}, Lor;->a()V

    .line 137
    :cond_16
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 138
    return-void
.end method
