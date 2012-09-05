.class public Ljcifs/dcerpc/msrpc/MsrpcGetPrinter;
.super Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;
.source "MsrpcGetPrinter.java"


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 6
    invoke-direct {p0}, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;-><init>()V

    .line 7
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->handler:[B

    .line 8
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->level:I

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 10
    return-void
.end method

.method public constructor <init>([BLjcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;)V
    .registers 4
    .parameter "handler"
    .parameter "buffer"

    .prologue
    .line 12
    invoke-direct {p0}, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;-><init>()V

    .line 13
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->handler:[B

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->level:I

    .line 15
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    .line 16
    iget-object v0, p2, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->data:[B

    array-length v0, v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->offered:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 18
    return-void
.end method
