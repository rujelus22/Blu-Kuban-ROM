.class public final Lcom/coremobility/f/e;
.super Lcom/coremobility/f/i;


# instance fields
.field a:Lcom/coremobility/f/d;

.field final synthetic b:Lcom/coremobility/f/d;


# direct methods
.method public constructor <init>(Lcom/coremobility/f/d;Lcom/coremobility/f/d;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/f/e;->b:Lcom/coremobility/f/d;

    invoke-direct {p0, p1}, Lcom/coremobility/f/i;-><init>(Lcom/coremobility/f/g;)V

    iput-object p2, p0, Lcom/coremobility/f/e;->a:Lcom/coremobility/f/d;

    invoke-virtual {p0}, Lcom/coremobility/f/e;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/f/e;->b:Lcom/coremobility/f/d;

    iget-object v0, v0, Lcom/coremobility/f/d;->c:Lcom/coremobility/integration/e/b;

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v4, :cond_57

    move v0, v1

    :goto_c
    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/coremobility/f/e;->b:Lcom/coremobility/f/d;

    iget-object v0, v0, Lcom/coremobility/f/d;->d:Lcom/coremobility/integration/e/j;

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v4, :cond_59

    move v0, v1

    :goto_17
    if-nez v0, :cond_63

    move v0, v1

    :goto_1a
    iget-object v3, p0, Lcom/coremobility/f/e;->b:Lcom/coremobility/f/d;

    iget-object v3, v3, Lcom/coremobility/f/d;->b:Lcom/coremobility/integration/e/a;

    iget v3, v3, Lcom/coremobility/integration/x;->b:I

    if-eq v3, v4, :cond_5b

    move v3, v1

    :goto_23
    if-nez v3, :cond_27

    or-int/lit8 v0, v0, 0x2

    :cond_27
    iget-object v3, p0, Lcom/coremobility/f/e;->b:Lcom/coremobility/f/d;

    iget-object v3, v3, Lcom/coremobility/f/d;->g:Lcom/coremobility/integration/e/l;

    iget v3, v3, Lcom/coremobility/integration/x;->b:I

    if-eq v3, v4, :cond_5d

    move v3, v1

    :goto_30
    if-nez v3, :cond_49

    iget-object v3, p0, Lcom/coremobility/f/e;->b:Lcom/coremobility/f/d;

    iget-object v3, v3, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    iget v3, v3, Lcom/coremobility/integration/x;->b:I

    if-eq v3, v4, :cond_5f

    move v3, v1

    :goto_3b
    if-nez v3, :cond_49

    iget-object v3, p0, Lcom/coremobility/f/e;->b:Lcom/coremobility/f/d;

    iget-object v3, v3, Lcom/coremobility/f/d;->f:Lcom/coremobility/integration/e/c;

    iget v3, v3, Lcom/coremobility/integration/x;->b:I

    if-eq v3, v4, :cond_61

    :goto_45
    if-nez v1, :cond_49

    or-int/lit8 v0, v0, 0x4

    :cond_49
    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    move-result-object v1

    iget-object v3, p0, Lcom/coremobility/f/e;->a:Lcom/coremobility/f/d;

    invoke-virtual {v1, v0, v3}, Lcom/coremobility/integration/e/e;->b(ILcom/coremobility/integration/app/f;)V

    iget-object v0, p0, Lcom/coremobility/f/e;->a:Lcom/coremobility/f/d;

    iput-boolean v2, v0, Lcom/coremobility/f/d;->l:Z

    return-void

    :cond_57
    move v0, v2

    goto :goto_c

    :cond_59
    move v0, v2

    goto :goto_17

    :cond_5b
    move v3, v2

    goto :goto_23

    :cond_5d
    move v3, v2

    goto :goto_30

    :cond_5f
    move v3, v2

    goto :goto_3b

    :cond_61
    move v1, v2

    goto :goto_45

    :cond_63
    move v0, v2

    goto :goto_1a
.end method
