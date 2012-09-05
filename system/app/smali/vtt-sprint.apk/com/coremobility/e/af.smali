.class public final Lcom/coremobility/e/af;
.super Ljava/util/Vector;


# instance fields
.field final synthetic a:Lcom/coremobility/e/y;


# direct methods
.method protected constructor <init>(Lcom/coremobility/e/y;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/e/af;->a:Lcom/coremobility/e/y;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/coremobility/e/af;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "empty"

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coremobility/e/af;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget-object v1, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f

    iget-object v0, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    goto :goto_8

    :cond_1f
    iget-object v1, v0, Lcom/coremobility/e/ae;->e:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v0, v0, Lcom/coremobility/e/ae;->e:Ljava/lang/String;

    goto :goto_8

    :cond_26
    const-string v0, "null"

    goto :goto_8
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p0}, Lcom/coremobility/e/af;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_21

    invoke-virtual {p0, v1}, Lcom/coremobility/e/af;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/e/ae;

    iget v3, v0, Lcom/coremobility/e/ae;->i:I

    if-ne v3, p2, :cond_22

    iget-object v3, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v0, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v1}, Lcom/coremobility/e/af;->remove(I)Ljava/lang/Object;

    :cond_21
    return-void

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public final a(Ljava/lang/String;ILcom/coremobility/f/b;)V
    .registers 6

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/ae;

    iget-object v1, p0, Lcom/coremobility/e/af;->a:Lcom/coremobility/e/y;

    invoke-direct {v0, v1}, Lcom/coremobility/e/ae;-><init>(Lcom/coremobility/e/y;)V

    iput-object p1, v0, Lcom/coremobility/e/ae;->a:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, v0, Lcom/coremobility/e/ae;->h:I

    iput p2, v0, Lcom/coremobility/e/ae;->i:I

    iput-object p3, v0, Lcom/coremobility/e/ae;->j:Lcom/coremobility/f/b;

    invoke-virtual {p0, v0}, Lcom/coremobility/e/af;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final a([BIILjava/lang/String;[Lcom/coremobility/e/au;IIILcom/coremobility/f/b;)V
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3a

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p2, :cond_3c

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p3, :cond_3e

    move v0, v1

    :goto_11
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/e/ae;

    iget-object v3, p0, Lcom/coremobility/e/af;->a:Lcom/coremobility/e/y;

    invoke-direct {v0, v3}, Lcom/coremobility/e/ae;-><init>(Lcom/coremobility/e/y;)V

    iput-object p1, v0, Lcom/coremobility/e/ae;->b:[B

    iput p2, v0, Lcom/coremobility/e/ae;->c:I

    iput p3, v0, Lcom/coremobility/e/ae;->d:I

    if-eqz p4, :cond_25

    iput-object p4, v0, Lcom/coremobility/e/ae;->e:Ljava/lang/String;

    :cond_25
    if-eqz p5, :cond_30

    if-eqz p6, :cond_40

    :goto_29
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object p5, v0, Lcom/coremobility/e/ae;->f:[Lcom/coremobility/e/au;

    iput p6, v0, Lcom/coremobility/e/ae;->g:I

    :cond_30
    iput p7, v0, Lcom/coremobility/e/ae;->h:I

    iput p8, v0, Lcom/coremobility/e/ae;->i:I

    iput-object p9, v0, Lcom/coremobility/e/ae;->j:Lcom/coremobility/f/b;

    invoke-virtual {p0, v0}, Lcom/coremobility/e/af;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3a
    move v0, v2

    goto :goto_5

    :cond_3c
    move v0, v2

    goto :goto_b

    :cond_3e
    move v0, v2

    goto :goto_11

    :cond_40
    move v1, v2

    goto :goto_29
.end method
