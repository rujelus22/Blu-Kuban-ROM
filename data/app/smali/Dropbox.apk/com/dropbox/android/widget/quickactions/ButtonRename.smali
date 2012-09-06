.class public Lcom/dropbox/android/widget/quickactions/ButtonRename;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# instance fields
.field private final f:Lcom/dropbox/android/filemanager/LocalEntry;

.field private g:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonRename;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/dropbox/android/widget/quickactions/e;

    invoke-direct {v0, p0, p2, p1}, Lcom/dropbox/android/widget/quickactions/e;-><init>(Lcom/dropbox/android/widget/quickactions/ButtonRename;Landroid/widget/EditText;Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/widget/quickactions/ButtonRename;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonRename;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/widget/quickactions/ButtonRename;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonRename;->g:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 104
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonRename;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_8f

    const v0, 0x7f09009a

    .line 108
    :goto_f
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 112
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 114
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 116
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonRename;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->q(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const/4 v4, 0x0

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 121
    const v0, 0x80001

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 122
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 124
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonRename;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_94

    const v0, 0x7f09009b

    .line 125
    :goto_62
    invoke-direct {p0, p1, v2}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->a(Landroid/content/Context;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    const v0, 0x7f09000d

    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->e()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonRename;->g:Landroid/app/AlertDialog;

    .line 131
    new-instance v0, Lcom/dropbox/android/widget/quickactions/h;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/quickactions/h;-><init>(Lcom/dropbox/android/widget/quickactions/ButtonRename;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    new-instance v0, Lcom/dropbox/android/widget/quickactions/i;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/quickactions/i;-><init>(Lcom/dropbox/android/widget/quickactions/ButtonRename;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonRename;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 167
    return-void

    .line 106
    :cond_8f
    const v0, 0x7f090097

    goto/16 :goto_f

    .line 124
    :cond_94
    const v0, 0x7f090098

    goto :goto_62
.end method

.method private e()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/android/widget/quickactions/g;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/quickactions/g;-><init>(Lcom/dropbox/android/widget/quickactions/ButtonRename;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 88
    const v0, 0x7f03002e

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/widget/quickactions/ButtonRename;->b(Landroid/app/Activity;Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 99
    const v0, 0x7f09015d

    return v0
.end method
