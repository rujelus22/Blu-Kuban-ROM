.class Lcom/estrongs/android/pop/view/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f09013e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090093

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f09015c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090162

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f09016d

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/view/ca;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/ca;-><init>(Lcom/estrongs/android/pop/view/bz;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/cb;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/cb;-><init>(Lcom/estrongs/android/pop/view/bz;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090155

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setPressed(Z)V

    return v5
.end method
