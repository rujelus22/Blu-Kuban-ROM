.class final enum LaC/F;
.super LaC/D;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, LaC/D;-><init>(Ljava/lang/String;IIIILaC/C;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 188
    sget-boolean v0, LaC/B;->c:Z

    if-eqz v0, :cond_8

    .line 189
    const/16 v0, 0x3b2

    iput v0, p0, LaC/F;->f:I

    .line 191
    :cond_8
    iget v0, p0, LaC/F;->f:I

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 179
    sget-boolean v0, LaC/B;->c:Z

    if-eqz v0, :cond_a

    .line 180
    sget-object v0, LaC/B;->a:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->W_()V

    .line 184
    :goto_9
    return-void

    .line 182
    :cond_a
    sget-object v0, LaC/B;->a:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->q()V

    goto :goto_9
.end method
