.class public final Lcom/coremobility/l/t;
.super Ljava/util/Vector;


# instance fields
.field final synthetic a:Lcom/coremobility/l/s;


# direct methods
.method protected constructor <init>(Lcom/coremobility/l/s;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/l/t;->a:Lcom/coremobility/l/s;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/coremobility/l/u;
    .registers 4

    new-instance v0, Lcom/coremobility/l/u;

    iget-object v1, p0, Lcom/coremobility/l/t;->a:Lcom/coremobility/l/s;

    invoke-direct {v0, v1}, Lcom/coremobility/l/u;-><init>(Lcom/coremobility/l/s;)V

    iput p1, v0, Lcom/coremobility/l/u;->a:I

    invoke-virtual {p0, v0}, Lcom/coremobility/l/t;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final b(I)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/coremobility/l/t;->size()I

    move-result v3

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_18

    invoke-virtual {p0, v2}, Lcom/coremobility/l/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/u;

    iget v0, v0, Lcom/coremobility/l/u;->a:I

    if-ne v0, p1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_18
    move v0, v1

    goto :goto_13
.end method

.method public final c(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/coremobility/l/t;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_1d

    invoke-virtual {p0, v2}, Lcom/coremobility/l/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/u;

    iget v0, v0, Lcom/coremobility/l/u;->a:I

    if-ne v0, p1, :cond_1e

    invoke-virtual {p0, v2}, Lcom/coremobility/l/t;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v2

    :goto_19
    add-int/lit8 v2, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1d
    return-void

    :cond_1e
    move v0, v1

    move v1, v2

    goto :goto_19
.end method
