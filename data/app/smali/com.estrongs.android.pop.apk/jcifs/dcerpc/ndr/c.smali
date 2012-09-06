.class public Ljcifs/dcerpc/ndr/c;
.super Ljcifs/dcerpc/ndr/d;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljcifs/dcerpc/ndr/d;-><init>()V

    iput p1, p0, Ljcifs/dcerpc/ndr/c;->a:I

    return-void
.end method


# virtual methods
.method public e(Ljcifs/dcerpc/ndr/a;)V
    .registers 3

    iget v0, p0, Ljcifs/dcerpc/ndr/c;->a:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    return-void
.end method

.method public f(Ljcifs/dcerpc/ndr/a;)V
    .registers 3

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/a;->f()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/ndr/c;->a:I

    return-void
.end method
