.class Lcom/estrongs/android/pop/app/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ca;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ca;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cb;)Lcom/estrongs/android/pop/app/ca;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/ca;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    new-instance v1, Lcom/estrongs/android/pop/app/ce;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ca;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/ce;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/ca;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/ca;->g:Lcom/estrongs/android/pop/app/ce;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ca;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/ca;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->h:Landroid/widget/CheckBox;

    const v1, 0x7f0902df

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->g:Lcom/estrongs/android/pop/app/ce;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ca;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ce;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->g:Lcom/estrongs/android/pop/app/ce;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ce;->setIcon(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->g:Lcom/estrongs/android/pop/app/ce;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ca;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ca;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ce;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->g:Lcom/estrongs/android/pop/app/ce;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ca;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ce;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->g:Lcom/estrongs/android/pop/app/ce;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ca;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f09005f

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/cc;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/cc;-><init>(Lcom/estrongs/android/pop/app/cb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/ce;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->g:Lcom/estrongs/android/pop/app/ce;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ca;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/cd;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/cd;-><init>(Lcom/estrongs/android/pop/app/cb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/ce;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cb;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->g:Lcom/estrongs/android/pop/app/ce;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ce;->show()V

    return-void
.end method
