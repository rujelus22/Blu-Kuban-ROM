.class final Ldbxyzptlk/g/d;
.super Ljava/io/OutputStream;
.source "panda.py"


# instance fields
.field private final a:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 442
    iput-object p1, p0, Ldbxyzptlk/g/d;->a:Ljava/io/OutputStream;

    .line 443
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 448
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Ldbxyzptlk/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final flush()V
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Ldbxyzptlk/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 458
    return-void
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Ldbxyzptlk/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Ldbxyzptlk/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .registers 3
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Ldbxyzptlk/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 484
    return-void
.end method

.method public final write([B)V
    .registers 3
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Ldbxyzptlk/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 479
    return-void
.end method

.method public final write([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Ldbxyzptlk/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 474
    return-void
.end method
