.class public Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "spoolss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/spoolss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "spoolss_DataBlob"
.end annotation


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 24
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 25
    .local v0, length:I
    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    .line 26
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->readOctetArray([BII)V

    .line 27
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 16
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 18
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    if-eqz v0, :cond_17

    .line 19
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->writeOctetArray([BII)V

    .line 21
    :cond_17
    return-void
.end method
