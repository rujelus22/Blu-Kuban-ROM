.class public Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "CreateDocumentDialogFragment.java"


# instance fields
.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Loa;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->v:Z

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;
    .registers 3
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-static {v1, p0}, Lop;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->d(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Loa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v1, Lob;

    sget-object v2, LkU;->a:LkU;

    sget v3, LcY;->create_new_kix_doc:I

    sget v4, LcY;->default_new_kix_title:I

    invoke-direct {v1, p0, v2, v3, v4}, Lob;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;LkU;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Lob;

    sget-object v2, LkU;->d:LkU;

    sget v3, LcY;->create_new_trix_doc:I

    sget v4, LcY;->default_new_trix_title:I

    invoke-direct {v1, p0, v2, v3, v4}, Lob;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;LkU;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Lx;

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 202
    new-instance v2, LnY;

    invoke-direct {v2, p0, v1}, LnY;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Landroid/support/v4/app/FragmentActivity;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v2, LnZ;

    invoke-direct {v2, p0, v1}, LnZ;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Landroid/support/v4/app/FragmentActivity;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->p()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->v:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a:Lck;

    return-object v0
.end method

.method private p()V
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->e()V

    .line 186
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a:Lck;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/os/Bundle;

    .line 127
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a:Ljava/util/List;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    .line 134
    invoke-interface {v0, v1}, Loa;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 135
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 138
    :cond_33
    new-instance v3, LnW;

    invoke-direct {v3, p0, v1, v2}, LnW;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;)V

    .line 147
    invoke-static {v1}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 149
    sget v0, LcY;->create_new_doc_title:I

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/content/res/Resources;

    move-result-object v5

    .line 151
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    .line 153
    invoke-interface {v0}, Loa;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 156
    :cond_6a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    const/high16 v0, 0x104

    new-instance v2, LnX;

    invoke-direct {v2, p0, v1}, LnX;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    sget-object v0, Los;->a:Los;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lop;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->c:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Lx;

    move-result-object v0

    .line 175
    iget-boolean v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->v:Z

    if-nez v1, :cond_1e

    if-eqz v0, :cond_1e

    const-string v1, "editTitleDialog"

    invoke-virtual {v0, v1}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 178
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->p()V

    .line 181
    :cond_1e
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 182
    return-void
.end method
