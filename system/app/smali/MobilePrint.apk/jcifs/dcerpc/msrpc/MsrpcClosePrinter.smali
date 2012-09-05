.class public Ljcifs/dcerpc/msrpc/MsrpcClosePrinter;
.super Ljcifs/dcerpc/msrpc/spoolss$_spoolss_ClosePrinter;
.source "MsrpcClosePrinter.java"


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 4
    invoke-direct {p0}, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_ClosePrinter;-><init>()V

    .line 5
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_ClosePrinter;->handler:[B

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 7
    return-void
.end method
