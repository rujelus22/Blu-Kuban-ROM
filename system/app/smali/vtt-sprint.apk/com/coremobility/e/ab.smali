.class public final Lcom/coremobility/e/ab;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/coremobility/e/au;

.field public b:[B

.field public c:I

.field public d:Z

.field public e:Lcom/coremobility/integration/h;

.field protected f:Lcom/coremobility/integration/file/a;

.field protected g:[Lcom/coremobility/e/au;

.field protected h:I

.field protected i:I

.field final synthetic j:Lcom/coremobility/e/y;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/y;[Lcom/coremobility/e/au;I)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/coremobility/e/ab;->j:Lcom/coremobility/e/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_35

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-lez p3, :cond_37

    :goto_f
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ab;->f:Lcom/coremobility/integration/file/a;

    iput-object p2, p0, Lcom/coremobility/e/ab;->g:[Lcom/coremobility/e/au;

    iput v2, p0, Lcom/coremobility/e/ab;->h:I

    iput p3, p0, Lcom/coremobility/e/ab;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/ab;->b:[B

    iput-boolean v2, p0, Lcom/coremobility/e/ab;->d:Z

    new-instance v0, Lcom/coremobility/integration/h;

    invoke-direct {v0}, Lcom/coremobility/integration/h;-><init>()V

    iput-object v0, p0, Lcom/coremobility/e/ab;->e:Lcom/coremobility/integration/h;

    iget-object v0, p0, Lcom/coremobility/e/ab;->g:[Lcom/coremobility/e/au;

    iget v1, p0, Lcom/coremobility/e/ab;->h:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iput v2, p0, Lcom/coremobility/e/ab;->c:I

    return-void

    :cond_35
    move v0, v2

    goto :goto_a

    :cond_37
    move v1, v2

    goto :goto_f
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/e/ab;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coremobility/e/ab;->c:I

    iget v0, p0, Lcom/coremobility/e/ab;->c:I

    iget-object v3, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget v3, v3, Lcom/coremobility/e/au;->b:I

    if-gt v0, v3, :cond_49

    move v0, v1

    :goto_10
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/ab;->c:I

    iget-object v3, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    iget v3, v3, Lcom/coremobility/e/au;->b:I

    if-ne v0, v3, :cond_48

    iput v2, p0, Lcom/coremobility/e/ab;->c:I

    iget v0, p0, Lcom/coremobility/e/ab;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/e/ab;->h:I

    iget v0, p0, Lcom/coremobility/e/ab;->h:I

    iget v3, p0, Lcom/coremobility/e/ab;->i:I

    if-gt v0, v3, :cond_4b

    move v0, v1

    :goto_2a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/e/ab;->h:I

    iget v3, p0, Lcom/coremobility/e/ab;->i:I

    if-ne v0, v3, :cond_4d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    :goto_36
    iget-boolean v0, p0, Lcom/coremobility/e/ab;->d:Z

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/e/ab;->e:Lcom/coremobility/integration/h;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-nez v0, :cond_56

    :goto_43
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-boolean v2, p0, Lcom/coremobility/e/ab;->d:Z

    :cond_48
    return-void

    :cond_49
    move v0, v2

    goto :goto_10

    :cond_4b
    move v0, v2

    goto :goto_2a

    :cond_4d
    iget-object v0, p0, Lcom/coremobility/e/ab;->g:[Lcom/coremobility/e/au;

    iget v3, p0, Lcom/coremobility/e/ab;->h:I

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/coremobility/e/ab;->a:Lcom/coremobility/e/au;

    goto :goto_36

    :cond_56
    move v1, v2

    goto :goto_43
.end method
