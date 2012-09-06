.class public Lr/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/X;


# instance fields
.field private a:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lr/u;->a:Ljava/io/RandomAccessFile;

    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lr/u;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 21
    return-void
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lr/u;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 31
    return-void
.end method

.method public a([B)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lr/u;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 36
    return-void
.end method

.method public a([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lr/u;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 41
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lr/u;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 26
    return-void
.end method

.method public b([B)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lr/u;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 46
    return-void
.end method

.method public b([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lr/u;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 51
    return-void
.end method
