.class public Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "spoolss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/spoolss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_spoolss_GetPrinter"
.end annotation


# instance fields
.field public buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

.field public handler:[B

.field public info:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

.field public level:I

.field public needed:I

.field public offered:I

.field public returnCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 147
    .local v0, _infop:I
    if-eqz v0, :cond_12

    .line 148
    new-instance v1, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;-><init>()V

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->info:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    .line 149
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->info:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    invoke-virtual {v1, p1}, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 151
    :cond_12
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->needed:I

    .line 152
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->returnCode:I

    .line 153
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
    .line 137
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->handler:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->handler:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->writeOctetArray([BII)V

    .line 138
    iget v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->level:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 139
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 140
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    if-eqz v0, :cond_1d

    .line 141
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 143
    :cond_1d
    iget v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;->offered:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 144
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 126
    const/16 v0, 0x8

    return v0
.end method
