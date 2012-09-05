.class public Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "spoolss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/spoolss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_spoolss_OpenPrinter"
.end annotation


# instance fields
.field public handler:[B

.field public printerName:Ljava/lang/String;

.field public returnCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 5
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 105
    new-array v0, v2, [B

    iput-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->handler:[B

    .line 106
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->handler:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->readOctetArray([BII)V

    .line 107
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->returnCode:I

    .line 108
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    const/high16 v0, 0x2

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 98
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;->printerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 100
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 101
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 102
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 103
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method
