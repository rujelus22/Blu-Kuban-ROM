.class public Ljcifs/dcerpc/a/h;
.super Ljcifs/dcerpc/ndr/d;


# instance fields
.field public a:I

.field public b:Ljcifs/dcerpc/ndr/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget v0, p0, Ljcifs/dcerpc/a/h;->a:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget v0, p0, Ljcifs/dcerpc/a/h;->a:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/h;->b:Ljcifs/dcerpc/ndr/d;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/h;->b:Ljcifs/dcerpc/ndr/d;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget-object v1, p0, Ljcifs/dcerpc/a/h;->b:Ljcifs/dcerpc/ndr/d;

    invoke-virtual {v1, v0}, Ljcifs/dcerpc/ndr/d;->e(Ljcifs/dcerpc/ndr/a;)V

    :cond_1f
    return-void
.end method

.method public f(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/a/h;->a:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Ljcifs/dcerpc/a/h;->b:Ljcifs/dcerpc/ndr/d;

    if-nez v0, :cond_1e

    new-instance v0, Ljcifs/dcerpc/a/f;

    invoke-direct {v0}, Ljcifs/dcerpc/a/f;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/a/h;->b:Ljcifs/dcerpc/ndr/d;

    :cond_1e
    iget-object v0, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget-object v1, p0, Ljcifs/dcerpc/a/h;->b:Ljcifs/dcerpc/ndr/d;

    invoke-virtual {v1, v0}, Ljcifs/dcerpc/ndr/d;->f(Ljcifs/dcerpc/ndr/a;)V

    :cond_25
    return-void
.end method
