.class public Ljcifs/dcerpc/msrpc/MsrpcPrinterEnum;
.super Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;
.source "MsrpcPrinterEnum.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .parameter "server"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    const/16 v1, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object v0, p0

    move-object v6, v4

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;-><init>(ILjava/lang/String;ILjcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;ILjcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;II)V

    .line 8
    iput v5, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;)V
    .registers 12
    .parameter "server"
    .parameter "buffer"

    .prologue
    const/4 v7, 0x0

    .line 12
    const/16 v1, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v0, p2, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    array-length v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;-><init>(ILjava/lang/String;ILjcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;ILjcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;II)V

    .line 13
    iput v7, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 14
    return-void
.end method
