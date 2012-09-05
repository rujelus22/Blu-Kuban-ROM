.class public Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "spoolss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/spoolss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_spoolss_EnumPrinters"
.end annotation


# instance fields
.field public buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

.field public count:I

.field public flags:I

.field public info:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

.field public level:I

.field public needed:I

.field public offered:I

.field public retval:I

.field public server:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;ILjcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;II)V
    .registers 9
    .parameter "flags"
    .parameter "server"
    .parameter "level"
    .parameter "buffer"
    .parameter "offered"
    .parameter "info"
    .parameter "needed"
    .parameter "count"

    .prologue
    .line 51
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 52
    iput p1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->flags:I

    .line 53
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->server:Ljava/lang/String;

    .line 54
    iput p3, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->level:I

    .line 55
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    .line 56
    iput p5, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->offered:I

    .line 57
    iput-object p6, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->info:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    .line 58
    iput p7, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->needed:I

    .line 59
    iput p8, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->count:I

    .line 60
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
    .line 77
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 78
    .local v0, _infop:I
    if-eqz v0, :cond_12

    .line 79
    new-instance v1, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;-><init>()V

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->info:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    .line 80
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->info:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    invoke-virtual {v1, p1}, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 82
    :cond_12
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->needed:I

    .line 83
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->count:I

    .line 84
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
    const/4 v1, 0x1

    .line 63
    iget v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->flags:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 64
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->server:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 65
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->server:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 66
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 69
    :cond_14
    iget v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->level:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 70
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 71
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    if-eqz v0, :cond_27

    .line 72
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->buffer:Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 74
    :cond_27
    iget v0, p0, Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;->offered:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 75
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
