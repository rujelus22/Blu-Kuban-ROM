.class Lcom/google/googlenav/ui/wizard/hi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cb;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hg;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hg;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hi;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hi;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hg;->b(Lcom/google/googlenav/ui/wizard/hg;)LaF/c;

    move-result-object v0

    invoke-virtual {v0}, LaF/c;->i()V

    .line 278
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cc;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x403

    const/4 v4, 0x0

    .line 254
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 257
    :try_start_12
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hi;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ay;

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, LaT/a;->a(Lcom/google/googlenav/ui/wizard/cc;IZ)LS/f;

    move-result-object v0

    iget-object v3, p1, Lcom/google/googlenav/ui/wizard/cc;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/ay;-><init>(LS/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ax;->a(Lcom/google/googlenav/ay;)Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_2b} :catch_35

    .line 273
    :goto_2b
    return-void

    .line 261
    :catch_2c
    move-exception v0

    .line 262
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2b

    .line 264
    :catch_35
    move-exception v0

    .line 265
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2b
.end method
