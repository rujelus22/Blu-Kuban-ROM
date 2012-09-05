.class public Ljcifs/dcerpc/msrpc/MsrpcOpenPrinter;
.super Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;
.source "MsrpcOpenPrinter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "printerName"

    .prologue
    .line 4
    invoke-direct {p0}, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;-><init>()V

    .line 5
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->printerName:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 7
    return-void
.end method
