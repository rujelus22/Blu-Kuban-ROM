.class public Lmyorg/bouncycastle/cms/CMSProcessableByteArray;
.super Ljava/lang/Object;
.source "CMSProcessableByteArray.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSProcessable;


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    .line 15
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "zOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 19
    return-void
.end method
