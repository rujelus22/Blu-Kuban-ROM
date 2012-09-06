.class public Laev;
.super Ljava/io/FilterOutputStream;
.source "LoggingOutputStream.java"


# instance fields
.field private final a:Laet;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    new-instance v0, Laet;

    invoke-direct {v0, p2, p3, p4}, Laet;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object v0, p0, Laev;->a:Laet;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Laet;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Laev;->a:Laet;

    return-object v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Laev;->a:Laet;

    invoke-virtual {v0}, Laet;->close()V

    .line 64
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 65
    return-void
.end method

.method public write(I)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Laev;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 52
    iget-object v0, p0, Laev;->a:Laet;

    invoke-virtual {v0, p1}, Laet;->write(I)V

    .line 53
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Laev;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    iget-object v0, p0, Laev;->a:Laet;

    invoke-virtual {v0, p1, p2, p3}, Laet;->write([BII)V

    .line 59
    return-void
.end method
