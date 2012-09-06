.class public Ljcifs/dcerpc/a/n;
.super Ljcifs/dcerpc/f;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljcifs/dcerpc/ndr/d;

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/d;III)V
    .registers 7

    invoke-direct {p0}, Ljcifs/dcerpc/f;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/a/n;->b:Ljava/lang/String;

    iput p2, p0, Ljcifs/dcerpc/a/n;->c:I

    iput-object p3, p0, Ljcifs/dcerpc/a/n;->d:Ljcifs/dcerpc/ndr/d;

    iput p4, p0, Ljcifs/dcerpc/a/n;->l:I

    iput p5, p0, Ljcifs/dcerpc/a/n;->m:I

    iput p6, p0, Ljcifs/dcerpc/a/n;->n:I

    return-void
.end method


# virtual methods
.method public a(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Ljcifs/dcerpc/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljcifs/dcerpc/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/String;)V

    :cond_f
    iget v0, p0, Ljcifs/dcerpc/a/n;->c:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget v0, p0, Ljcifs/dcerpc/a/n;->c:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/n;->d:Ljcifs/dcerpc/ndr/d;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/n;->d:Ljcifs/dcerpc/ndr/d;

    if-eqz v0, :cond_29

    iget-object p1, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget-object v0, p0, Ljcifs/dcerpc/a/n;->d:Ljcifs/dcerpc/ndr/d;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/d;->e(Ljcifs/dcerpc/ndr/a;)V

    :cond_29
    iget v0, p0, Ljcifs/dcerpc/a/n;->l:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget v0, p0, Ljcifs/dcerpc/a/n;->n:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    return-void
.end method

.method public b()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public b(Ljcifs/dcerpc/ndr/a;)V
    .registers 3

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/a/n;->c:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Ljcifs/dcerpc/a/n;->d:Ljcifs/dcerpc/ndr/d;

    if-nez v0, :cond_1a

    new-instance v0, Ljcifs/dcerpc/a/q;

    invoke-direct {v0}, Ljcifs/dcerpc/a/q;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/a/n;->d:Ljcifs/dcerpc/ndr/d;

    :cond_1a
    iget-object p1, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget-object v0, p0, Ljcifs/dcerpc/a/n;->d:Ljcifs/dcerpc/ndr/d;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/ndr/d;->f(Ljcifs/dcerpc/ndr/a;)V

    :cond_21
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/a/n;->m:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/a/n;->n:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/a/n;->a:I

    return-void
.end method
