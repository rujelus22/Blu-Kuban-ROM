.class public Ljcifs/dcerpc/a/p;
.super Ljcifs/dcerpc/ndr/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget-object v0, p0, Ljcifs/dcerpc/a/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;I)V

    iget v0, p0, Ljcifs/dcerpc/a/p;->b:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Ljcifs/dcerpc/a/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object p1, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget-object v0, p0, Ljcifs/dcerpc/a/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Ljcifs/dcerpc/a/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget-object v1, p0, Ljcifs/dcerpc/a/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public f(Ljcifs/dcerpc/ndr/a;)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/a/p;->b:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v1

    if-eqz v0, :cond_1c

    iget-object p1, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/a/p;->a:Ljava/lang/String;

    :cond_1c
    if-eqz v1, :cond_26

    iget-object v0, p1, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    invoke-virtual {v0}, Ljcifs/dcerpc/ndr/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/a/p;->c:Ljava/lang/String;

    :cond_26
    return-void
.end method
