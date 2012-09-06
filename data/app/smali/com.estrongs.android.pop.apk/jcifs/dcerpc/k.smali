.class public Ljcifs/dcerpc/k;
.super Ljcifs/dcerpc/ndr/d;


# instance fields
.field public b:I

.field public c:S

.field public d:S

.field public e:B

.field public f:B

.field public g:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljcifs/dcerpc/ndr/a;)V
    .registers 6

    const/4 v3, 0x6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget v0, p0, Ljcifs/dcerpc/k;->b:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget-short v0, p0, Ljcifs/dcerpc/k;->c:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->g(I)V

    iget-short v0, p0, Ljcifs/dcerpc/k;->d:S

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->g(I)V

    iget-byte v0, p0, Ljcifs/dcerpc/k;->e:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->f(I)V

    iget-byte v0, p0, Ljcifs/dcerpc/k;->f:B

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->f(I)V

    iget v0, p1, Ljcifs/dcerpc/ndr/a;->e:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/a;->d(I)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->a(I)Ljcifs/dcerpc/ndr/a;

    move-result-object v1

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v3, :cond_34

    iget-object v2, p0, Ljcifs/dcerpc/k;->g:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/a;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_34
    return-void
.end method

.method public f(Ljcifs/dcerpc/ndr/a;)V
    .registers 7

    const/4 v4, 0x6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/k;->b:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Ljcifs/dcerpc/k;->c:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->e()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Ljcifs/dcerpc/k;->d:S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->d()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/dcerpc/k;->e:B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->d()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljcifs/dcerpc/k;->f:B

    iget v0, p1, Ljcifs/dcerpc/ndr/a;->e:I

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/a;->d(I)V

    iget-object v1, p0, Ljcifs/dcerpc/k;->g:[B

    if-nez v1, :cond_34

    new-array v1, v4, [B

    iput-object v1, p0, Ljcifs/dcerpc/k;->g:[B

    :cond_34
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->a(I)Ljcifs/dcerpc/ndr/a;

    move-result-object v1

    const/4 v0, 0x0

    :goto_39
    if-ge v0, v4, :cond_47

    iget-object v2, p0, Ljcifs/dcerpc/k;->g:[B

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/a;->d()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_47
    return-void
.end method
