.class public Ljcifs/dcerpc/a/g;
.super Ljcifs/dcerpc/ndr/d;


# instance fields
.field public a:I

.field public b:[Ljcifs/dcerpc/a/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljcifs/dcerpc/ndr/a;)V
    .registers 6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget v0, p0, Ljcifs/dcerpc/a/g;->a:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    if-eqz v0, :cond_32

    iget-object v0, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget v1, p0, Ljcifs/dcerpc/a/g;->a:I

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget v2, v0, Ljcifs/dcerpc/ndr/a;->e:I

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, Ljcifs/dcerpc/ndr/a;->d(I)V

    invoke-virtual {v0, v2}, Ljcifs/dcerpc/ndr/a;->a(I)Ljcifs/dcerpc/ndr/a;

    move-result-object v2

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v1, :cond_32

    iget-object v3, p0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljcifs/dcerpc/a/j;->e(Ljcifs/dcerpc/ndr/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_32
    return-void
.end method

.method public f(Ljcifs/dcerpc/ndr/a;)V
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/a/g;->a:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    invoke-virtual {v0}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v1

    iget v2, v0, Ljcifs/dcerpc/ndr/a;->e:I

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, Ljcifs/dcerpc/ndr/a;->d(I)V

    iget-object v3, p0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    if-nez v3, :cond_34

    if-ltz v1, :cond_28

    const v3, 0xffff

    if-le v1, v3, :cond_30

    :cond_28
    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    const-string v1, "invalid array conformance"

    invoke-direct {v0, v1}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-array v3, v1, [Ljcifs/dcerpc/a/j;

    iput-object v3, p0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    :cond_34
    invoke-virtual {v0, v2}, Ljcifs/dcerpc/ndr/a;->a(I)Ljcifs/dcerpc/ndr/a;

    move-result-object v2

    const/4 v0, 0x0

    :goto_39
    if-ge v0, v1, :cond_54

    iget-object v3, p0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    aget-object v3, v3, v0

    if-nez v3, :cond_4a

    iget-object v3, p0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    new-instance v4, Ljcifs/dcerpc/a/j;

    invoke-direct {v4}, Ljcifs/dcerpc/a/j;-><init>()V

    aput-object v4, v3, v0

    :cond_4a
    iget-object v3, p0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljcifs/dcerpc/a/j;->f(Ljcifs/dcerpc/ndr/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_54
    return-void
.end method
