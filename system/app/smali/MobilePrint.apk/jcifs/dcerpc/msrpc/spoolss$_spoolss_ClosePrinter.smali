.class public Ljcifs/dcerpc/msrpc/spoolss$_spoolss_ClosePrinter;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "spoolss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/spoolss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_spoolss_ClosePrinter"
.end annotation


# instance fields
.field public handler:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 2
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 121
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_ClosePrinter;->handler:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_ClosePrinter;->handler:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->writeOctetArray([BII)V

    .line 119
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 113
    const/16 v0, 0x1d

    return v0
.end method
