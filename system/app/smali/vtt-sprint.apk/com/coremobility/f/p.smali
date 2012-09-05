.class public final Lcom/coremobility/f/p;
.super Lcom/coremobility/f/i;


# instance fields
.field a:Lcom/coremobility/f/o;

.field final synthetic b:Lcom/coremobility/f/o;


# direct methods
.method public constructor <init>(Lcom/coremobility/f/o;Lcom/coremobility/f/o;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/f/p;->b:Lcom/coremobility/f/o;

    invoke-direct {p0, p1}, Lcom/coremobility/f/i;-><init>(Lcom/coremobility/f/g;)V

    iput-object p2, p0, Lcom/coremobility/f/p;->a:Lcom/coremobility/f/o;

    invoke-virtual {p0}, Lcom/coremobility/f/p;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/f/p;->b:Lcom/coremobility/f/o;

    iget-object v0, v0, Lcom/coremobility/f/o;->c:Lcom/coremobility/integration/e/j;

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v4, :cond_36

    move v0, v1

    :goto_c
    if-nez v0, :cond_3c

    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/coremobility/f/p;->b:Lcom/coremobility/f/o;

    iget-object v3, v3, Lcom/coremobility/f/o;->b:Lcom/coremobility/integration/e/a;

    iget v3, v3, Lcom/coremobility/integration/x;->b:I

    if-eq v3, v4, :cond_38

    move v3, v1

    :goto_18
    if-nez v3, :cond_1c

    or-int/lit8 v0, v0, 0x2

    :cond_1c
    iget-object v3, p0, Lcom/coremobility/f/p;->b:Lcom/coremobility/f/o;

    iget-object v3, v3, Lcom/coremobility/f/o;->e:Lcom/coremobility/integration/e/c;

    iget v3, v3, Lcom/coremobility/integration/x;->b:I

    if-eq v3, v4, :cond_3a

    :goto_24
    if-nez v1, :cond_28

    or-int/lit8 v0, v0, 0x4

    :cond_28
    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    move-result-object v1

    iget-object v3, p0, Lcom/coremobility/f/p;->a:Lcom/coremobility/f/o;

    invoke-virtual {v1, v0, v3}, Lcom/coremobility/integration/e/e;->b(ILcom/coremobility/integration/app/f;)V

    iget-object v0, p0, Lcom/coremobility/f/p;->a:Lcom/coremobility/f/o;

    iput-boolean v2, v0, Lcom/coremobility/f/o;->i:Z

    return-void

    :cond_36
    move v0, v2

    goto :goto_c

    :cond_38
    move v3, v2

    goto :goto_18

    :cond_3a
    move v1, v2

    goto :goto_24

    :cond_3c
    move v0, v2

    goto :goto_f
.end method
