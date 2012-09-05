.class Lcom/google/googlenav/ui/wizard/fp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bw;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fj;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fj;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->onContentChanged()V

    :cond_d
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/bx;)V
    .registers 8

    const/16 v5, 0x347

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :try_start_12
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fj;->d(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aw;

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lbf/a;->a(Lcom/google/googlenav/ui/wizard/bx;IZ)Lah/f;

    move-result-object v0

    iget-object v3, p1, Lcom/google/googlenav/ui/wizard/bx;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/aw;-><init>(Lah/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/av;->a(Lcom/google/googlenav/aw;)Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_2b} :catch_3a

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v1, "PLACE_PAGE"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2b

    :catch_3a
    move-exception v0

    const-string v1, "PLACE_PAGE"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2b
.end method
