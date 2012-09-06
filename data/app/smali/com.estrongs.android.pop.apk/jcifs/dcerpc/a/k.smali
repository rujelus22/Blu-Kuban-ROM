.class public Ljcifs/dcerpc/a/k;
.super Ljcifs/dcerpc/f;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public l:Ljcifs/dcerpc/a/h;

.field public m:Ljcifs/dcerpc/ndr/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjcifs/dcerpc/a/h;Ljcifs/dcerpc/ndr/c;)V
    .registers 6

    invoke-direct {p0}, Ljcifs/dcerpc/f;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/a/k;->b:Ljava/lang/String;

    iput p2, p0, Ljcifs/dcerpc/a/k;->c:I

    iput p3, p0, Ljcifs/dcerpc/a/k;->d:I

    iput-object p4, p0, Ljcifs/dcerpc/a/k;->l:Ljcifs/dcerpc/a/h;

    iput-object p5, p0, Ljcifs/dcerpc/a/k;->m:Ljcifs/dcerpc/ndr/c;

    return-void
.end method


# virtual methods
.method public a(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Ljcifs/dcerpc/a/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/String;)V

    iget v0, p0, Ljcifs/dcerpc/a/k;->c:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget v0, p0, Ljcifs/dcerpc/a/k;->d:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/k;->l:Ljcifs/dcerpc/a/h;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/k;->l:Ljcifs/dcerpc/a/h;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljcifs/dcerpc/a/k;->l:Ljcifs/dcerpc/a/h;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/a/h;->e(Ljcifs/dcerpc/ndr/a;)V

    :cond_1e
    iget-object v0, p0, Ljcifs/dcerpc/a/k;->m:Ljcifs/dcerpc/ndr/c;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/k;->m:Ljcifs/dcerpc/ndr/c;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljcifs/dcerpc/a/k;->m:Ljcifs/dcerpc/ndr/c;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/c;->e(Ljcifs/dcerpc/ndr/a;)V

    :cond_2c
    return-void
.end method

.method public b()I
    .registers 2

    const/16 v0, 0x15

    return v0
.end method

.method public b(Ljcifs/dcerpc/ndr/a;)V
    .registers 3

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljcifs/dcerpc/a/k;->l:Ljcifs/dcerpc/a/h;

    if-nez v0, :cond_11

    new-instance v0, Ljcifs/dcerpc/a/h;

    invoke-direct {v0}, Ljcifs/dcerpc/a/h;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/a/k;->l:Ljcifs/dcerpc/a/h;

    :cond_11
    iget-object v0, p0, Ljcifs/dcerpc/a/k;->l:Ljcifs/dcerpc/a/h;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/a/h;->f(Ljcifs/dcerpc/ndr/a;)V

    :cond_16
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Ljcifs/dcerpc/a/k;->m:Ljcifs/dcerpc/ndr/c;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/c;->f(Ljcifs/dcerpc/ndr/a;)V

    :cond_21
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/a/k;->a:I

    return-void
.end method
