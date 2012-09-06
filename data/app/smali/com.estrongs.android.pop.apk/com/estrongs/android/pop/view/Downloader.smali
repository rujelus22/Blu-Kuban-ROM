.class public Lcom/estrongs/android/pop/view/Downloader;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Lcom/estrongs/android/pop/view/ba;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Downloader;->a:[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Downloader;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Downloader;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/Downloader;->e:I

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Downloader;->d:Lcom/estrongs/android/pop/view/ba;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->f:Landroid/widget/TextView;

    const v1, 0x7f0901bb

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/Downloader;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->g:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->h:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->i:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/Downloader;->e:I

    return-void
.end method

.method public b(I)V
    .registers 7

    if-nez p1, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->f:Landroid/widget/TextView;

    const v1, 0x7f0901ba

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/Downloader;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/estrongs/android/pop/view/Downloader;->e:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->j:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/android/pop/view/Downloader;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Integer;

    mul-int/lit8 v3, p1, 0x64

    iget v4, p0, Lcom/estrongs/android/pop/view/Downloader;->e:I

    div-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "data"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/Downloader;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Lcom/estrongs/android/pop/view/Downloader;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/Downloader;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/view/Downloader;->requestWindowFeature(I)Z

    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Downloader;->setContentView(I)V

    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Downloader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->f:Landroid/widget/TextView;

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    const v0, 0x7f070210

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Downloader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->j:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5, v7, v5, v7}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    const v0, 0x7f070211

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Downloader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->g:Landroid/widget/TextView;

    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Downloader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->h:Landroid/widget/TextView;

    const v0, 0x7f070213

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/Downloader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/Downloader;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Downloader;->a:[Ljava/lang/String;

    const-string v1, "savedir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/Downloader;->b:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->c:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/view/ba;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/view/ba;-><init>(Lcom/estrongs/android/pop/view/Downloader;Lcom/estrongs/android/pop/view/Downloader;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->d:Lcom/estrongs/android/pop/view/ba;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/Downloader;->d:Lcom/estrongs/android/pop/view/ba;

    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/Downloader;->a:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ba;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3f

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0901b9

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/Downloader;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const v2, 0x7f09005e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/Downloader;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/view/ay;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/ay;-><init>(Lcom/estrongs/android/pop/view/Downloader;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const v2, 0x7f090060

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/Downloader;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/view/az;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/az;-><init>(Lcom/estrongs/android/pop/view/Downloader;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3e
.end method
