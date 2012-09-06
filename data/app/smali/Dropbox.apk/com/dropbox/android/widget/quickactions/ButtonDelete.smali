.class public Lcom/dropbox/android/widget/quickactions/ButtonDelete;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# instance fields
.field private final f:Lcom/dropbox/android/filemanager/LocalEntry;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonDelete;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/quickactions/ButtonDelete;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonDelete;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/dropbox/android/widget/quickactions/c;

    invoke-direct {v0, p0, p2}, Lcom/dropbox/android/widget/quickactions/c;-><init>(Lcom/dropbox/android/widget/quickactions/ButtonDelete;Landroid/content/Context;)V

    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const v2, 0x7f09008a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    const v0, 0x7f09000d

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonDelete;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_32

    const v0, 0x7f09008d

    .line 64
    :goto_20
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonDelete;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    return-void

    .line 63
    :cond_32
    const v0, 0x7f090089

    goto :goto_20
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 27
    const v0, 0x7f03002a

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/widget/quickactions/ButtonDelete;->b(Landroid/app/Activity;Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 32
    const v0, 0x7f09015e

    return v0
.end method
