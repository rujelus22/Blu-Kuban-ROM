.class Lab/b;
.super LY/d;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:I

.field final synthetic f:Ljava/lang/CharSequence;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Lcom/google/googlenav/ui/view/n;

.field final synthetic l:Lcom/google/googlenav/ui/view/o;

.field final synthetic m:I

.field final synthetic n:Lab/a;


# direct methods
.method constructor <init>(Lab/a;LY/c;ILjava/lang/CharSequence;IIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;I)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lab/b;->n:Lab/a;

    iput p3, p0, Lab/b;->b:I

    iput-object p4, p0, Lab/b;->f:Ljava/lang/CharSequence;

    iput p5, p0, Lab/b;->g:I

    iput p6, p0, Lab/b;->h:I

    iput p7, p0, Lab/b;->i:I

    iput p8, p0, Lab/b;->j:I

    iput-object p9, p0, Lab/b;->k:Lcom/google/googlenav/ui/view/n;

    iput-object p10, p0, Lab/b;->l:Lcom/google/googlenav/ui/view/o;

    iput p11, p0, Lab/b;->m:I

    invoke-direct {p0, p2}, LY/d;-><init>(LY/c;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lab/b;->a:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 11

    .prologue
    .line 100
    iget-boolean v0, p0, Lab/b;->a:Z

    if-nez v0, :cond_25

    .line 101
    iget-object v0, p0, Lab/b;->n:Lab/a;

    iget v1, p0, Lab/b;->b:I

    iget-object v2, p0, Lab/b;->f:Ljava/lang/CharSequence;

    iget v3, p0, Lab/b;->g:I

    iget v4, p0, Lab/b;->h:I

    iget v5, p0, Lab/b;->i:I

    iget v6, p0, Lab/b;->j:I

    iget-object v7, p0, Lab/b;->k:Lcom/google/googlenav/ui/view/n;

    iget-object v8, p0, Lab/b;->l:Lcom/google/googlenav/ui/view/o;

    iget v9, p0, Lab/b;->m:I

    invoke-virtual/range {v0 .. v9}, Lab/a;->a(ILjava/lang/CharSequence;IIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;I)Z

    move-result v0

    iput-boolean v0, p0, Lab/b;->a:Z

    .line 104
    iget-boolean v0, p0, Lab/b;->a:Z

    if-eqz v0, :cond_25

    .line 105
    invoke-virtual {p0}, Lab/b;->c()I

    .line 108
    :cond_25
    return-void
.end method
