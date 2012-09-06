.class Lcom/estrongs/android/pop/view/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/z;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/aa;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/aa;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/aa;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/aa;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/android/pop/view/aa;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/estrongs/android/pop/view/aa;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/aa;)Lcom/estrongs/android/pop/view/z;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->g(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)I

    move-result v0

    if-ne v0, v2, :cond_d2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/aa;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/aa;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/pop/view/aa;->f:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_24
    if-nez v0, :cond_c0

    if-ne v3, v7, :cond_aa

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_37
    iget-object v1, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/view/ab;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/ab;-><init>(Lcom/estrongs/android/pop/view/aa;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    :goto_4c
    return-void

    :cond_4d
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const-string v4, "kanbox"

    iget-object v5, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    new-array v0, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/aa;->g:Ljava/lang/String;

    aput-object v4, v0, v2

    :cond_74
    :goto_74
    iget-object v4, p0, Lcom/estrongs/android/pop/view/aa;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/aa;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/pop/view/aa;->d:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0}, Lcom/estrongs/android/pop/fs/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_a8

    move v0, v2

    :goto_81
    move v3, v4

    goto :goto_24

    :cond_83
    const-string v4, "kuaipan"

    iget-object v5, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    new-array v0, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/aa;->g:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->i(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_74

    :cond_a8
    move v0, v3

    goto :goto_81

    :cond_aa
    if-ne v3, v2, :cond_bd

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    const v1, 0x7f09020b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_37

    :cond_bd
    move-object v0, v1

    goto/16 :goto_37

    :cond_c0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/estrongs/android/pop/view/ac;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/ac;-><init>(Lcom/estrongs/android/pop/view/aa;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/aa;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->j(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/ad;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ad;-><init>(Lcom/estrongs/android/pop/view/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    goto/16 :goto_4c

    :cond_f7
    const-string v0, "s3"

    iget-object v3, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e0

    const-string v0, "s3"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/fs/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3"

    const-string v3, "fake"

    iget-object v5, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->m(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v3, v5}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_121
    iget-object v3, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->n(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1dd

    if-eqz v4, :cond_1a4

    :goto_13f
    iget-object v3, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->o(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Z

    move-result v3

    if-nez v3, :cond_15b

    iget-object v3, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v5

    if-eqz v4, :cond_1b7

    move-object v3, v1

    :goto_158
    invoke-virtual {v5, v3, v0}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15b
    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const-string v5, "net://"

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Z)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->o(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "path"

    if-eqz v4, :cond_1ba

    :goto_17f
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->setResult(ILandroid/content/Intent;)V

    :cond_199
    :goto_199
    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->finish()V

    goto/16 :goto_4c

    :cond_1a4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13f

    :cond_1b7
    iget-object v3, p0, Lcom/estrongs/android/pop/view/aa;->b:Ljava/lang/String;

    goto :goto_158

    :cond_1ba
    iget-object v1, p0, Lcom/estrongs/android/pop/view/aa;->b:Ljava/lang/String;

    goto :goto_17f

    :cond_1bd
    const-string v0, "dropbox"

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/z;->a(Lcom/estrongs/android/pop/view/z;)Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->f(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_199

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/t;->c(Ljava/lang/String;)V

    goto :goto_199

    :cond_1dd
    move-object v0, v3

    goto/16 :goto_13f

    :cond_1e0
    move-object v0, v1

    goto/16 :goto_121
.end method
