.class public Lt/z;
.super Lt/af;


# instance fields
.field private final d:Lt/y;


# direct methods
.method public constructor <init>(IIILt/y;)V
    .registers 6

    invoke-virtual {p4}, Lt/y;->a()Lt/r;

    move-result-object v0

    invoke-virtual {v0}, Lt/r;->a()Lt/m;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lt/af;-><init>(IIILt/m;)V

    iput-object p4, p0, Lt/z;->d:Lt/y;

    return-void
.end method

.method public constructor <init>(Lt/af;Lt/y;)V
    .registers 6

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    invoke-virtual {p1}, Lt/af;->c()I

    move-result v1

    invoke-virtual {p1}, Lt/af;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lt/z;-><init>(IIILt/y;)V

    return-void
.end method


# virtual methods
.method public a()Lt/y;
    .registers 2

    iget-object v0, p0, Lt/z;->d:Lt/y;

    return-object v0
.end method

.method public a(III)Lt/z;
    .registers 6

    new-instance v0, Lt/z;

    iget-object v1, p0, Lt/z;->d:Lt/y;

    invoke-direct {v0, p1, p2, p3, v1}, Lt/z;-><init>(IIILt/y;)V

    return-object v0
.end method

.method public synthetic b(III)Lt/af;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lt/z;->a(III)Lt/z;

    move-result-object v0

    return-object v0
.end method
