.class Lcom/estrongs/android/pop/view/bj;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/estrongs/android/util/a/c;

.field protected b:Lcom/estrongs/android/util/a/c;

.field protected c:Lcom/estrongs/android/util/a/a;

.field final synthetic d:Lcom/estrongs/android/pop/view/bd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bd;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/bj;->a:Lcom/estrongs/android/util/a/c;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/util/a/c;

    new-instance v0, Lcom/estrongs/android/pop/view/bk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/bk;-><init>(Lcom/estrongs/android/pop/view/bj;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/bj;->c:Lcom/estrongs/android/util/a/a;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/bj;)Lcom/estrongs/android/pop/view/bd;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/estrongs/android/util/a/c;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/estrongs/android/util/a/d;

    invoke-direct {v0, p1}, Lcom/estrongs/android/util/a/d;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/bj;->a(Ljava/lang/String;)Lcom/estrongs/android/util/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/bj;->a:Lcom/estrongs/android/util/a/c;

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->n:Ljava/lang/String;

    if-nez v0, :cond_30

    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/bj;->a(Ljava/lang/String;)Lcom/estrongs/android/util/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/util/a/c;

    :cond_30
    new-instance v0, Lcom/estrongs/android/pop/view/bl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/bl;-><init>(Lcom/estrongs/android/pop/view/bj;)V

    :try_start_35
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/bd;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bj;->c:Lcom/estrongs/android/util/a/a;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/util/a/b;->a(Ljava/lang/String;Lcom/estrongs/android/util/a/a;Lcom/estrongs/android/util/a/c;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_5c

    :goto_3e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->a:Lcom/estrongs/android/util/a/c;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bj;->a:Lcom/estrongs/android/util/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    :cond_4c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/util/a/c;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bj;->b:Lcom/estrongs/android/util/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/bd;->n:Ljava/lang/String;

    :cond_5a
    const/4 v0, 0x0

    return-object v0

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_19
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->n:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/bd;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_31
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/bj;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/bj;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    const v2, 0x7f090215

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_29
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->n:Ljava/lang/String;

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bj;->d:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_40
    return-void
.end method
