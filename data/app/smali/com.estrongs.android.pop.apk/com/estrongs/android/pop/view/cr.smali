.class Lcom/estrongs/android/pop/view/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f09019f

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_19
    return v4

    :cond_1a
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f09009c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090152

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0901e5

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cr;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    new-instance v3, Lcom/estrongs/android/pop/view/cs;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/cs;-><init>(Lcom/estrongs/android/pop/view/cr;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/ct;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/ct;-><init>(Lcom/estrongs/android/pop/view/cr;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090153

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_19
.end method
