.class public Lbv/c;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/f;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbv/c;->a:[B

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a_()I
    .registers 2

    iget-object v0, p0, Lbv/c;->a:[B

    array-length v0, v0

    return v0
.end method

.method public b_()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lbv/c;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
