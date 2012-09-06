.class public Ljcifs/dcerpc/a;
.super Ljcifs/dcerpc/f;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field b:Ljcifs/dcerpc/b;

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/dcerpc/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/dcerpc/f;-><init>()V

    return-void
.end method

.method constructor <init>(Ljcifs/dcerpc/b;Ljcifs/dcerpc/e;)V
    .registers 4

    invoke-direct {p0}, Ljcifs/dcerpc/f;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/a;->b:Ljcifs/dcerpc/b;

    iget v0, p2, Ljcifs/dcerpc/e;->b:I

    iput v0, p0, Ljcifs/dcerpc/a;->c:I

    iget v0, p2, Ljcifs/dcerpc/e;->c:I

    iput v0, p0, Ljcifs/dcerpc/a;->d:I

    const/16 v0, 0xb

    iput v0, p0, Ljcifs/dcerpc/a;->f:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/a;->g:I

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x4

    if-ge p0, v2, :cond_8

    sget-object v0, Ljcifs/dcerpc/a;->a:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v2}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public a()Ljcifs/dcerpc/DcerpcException;
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/a;->k:I

    if-eqz v0, :cond_10

    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    iget v1, p0, Ljcifs/dcerpc/a;->k:I

    invoke-static {v1}, Ljcifs/dcerpc/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(Ljcifs/dcerpc/ndr/a;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/dcerpc/a;->c:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->g(I)V

    iget v0, p0, Ljcifs/dcerpc/a;->d:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->g(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->h(I)V

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/a;->f(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->f(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->g(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->g(I)V

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/a;->f(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->f(I)V

    iget-object v0, p0, Ljcifs/dcerpc/a;->b:Ljcifs/dcerpc/b;

    iget-object v0, v0, Ljcifs/dcerpc/b;->e:Ljcifs/dcerpc/i;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/i;->e(Ljcifs/dcerpc/ndr/a;)V

    iget-object v0, p0, Ljcifs/dcerpc/a;->b:Ljcifs/dcerpc/b;

    iget v0, v0, Ljcifs/dcerpc/b;->f:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->g(I)V

    iget-object v0, p0, Ljcifs/dcerpc/a;->b:Ljcifs/dcerpc/b;

    iget v0, v0, Ljcifs/dcerpc/b;->g:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->g(I)V

    sget-object v0, Ljcifs/dcerpc/a;->e:Ljcifs/dcerpc/i;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/i;->e(Ljcifs/dcerpc/ndr/a;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->d(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->e(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->d()I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/a;->e(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/a;->k:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return-void
.end method
