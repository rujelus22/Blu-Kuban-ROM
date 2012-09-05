.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTrustInformation"
.end annotation


# instance fields
.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 525
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 10
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 559
    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 560
    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 561
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v6, :cond_12

    .line 562
    new-instance v6, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v6}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 564
    :cond_12
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 565
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 566
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 567
    .local v3, _name_bufferp:I
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    .line 569
    .local v5, _sidp:I
    if-eqz v3, :cond_64

    .line 570
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 571
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 572
    .local v4, _name_buffers:I
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 573
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 574
    .local v2, _name_bufferl:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 575
    .local v1, _name_bufferi:I
    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 577
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v6, v6, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v6, :cond_5d

    .line 578
    if-ltz v4, :cond_4f

    const v6, 0xffff

    if-le v4, v6, :cond_57

    :cond_4f
    new-instance v6, Ljcifs/dcerpc/ndr/NdrException;

    const-string v7, "invalid array conformance"

    invoke-direct {v6, v7}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 579
    :cond_57
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    new-array v7, v4, [S

    iput-object v7, v6, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 581
    :cond_5d
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 582
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_62
    if-lt v0, v2, :cond_79

    .line 586
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v4           #_name_buffers:I
    :cond_64
    if-eqz v5, :cond_78

    .line 587
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-nez v6, :cond_71

    .line 588
    new-instance v6, Ljcifs/dcerpc/rpc$sid_t;

    invoke-direct {v6}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 590
    :cond_71
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 591
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v6, p1}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 594
    :cond_78
    return-void

    .line 583
    .restart local v0       #_i:I
    .restart local v1       #_name_bufferi:I
    .restart local v2       #_name_bufferl:I
    .restart local v4       #_name_buffers:I
    :cond_79
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v6, v6, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v6, v0

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_62
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 8
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 531
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 532
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 533
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 534
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1, v4, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 535
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {p1, v4, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 537
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v4, :cond_4b

    .line 538
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 539
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v2, v4, 0x2

    .line 540
    .local v2, _name_bufferl:I
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v3, v4, 0x2

    .line 541
    .local v3, _name_buffers:I
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 542
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 543
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 544
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 545
    .local v1, _name_bufferi:I
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 547
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 548
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_49
    if-lt v0, v2, :cond_57

    .line 552
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v3           #_name_buffers:I
    :cond_4b
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-eqz v4, :cond_56

    .line 553
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 554
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 557
    :cond_56
    return-void

    .line 549
    .restart local v0       #_i:I
    .restart local v1       #_name_bufferi:I
    .restart local v2       #_name_bufferl:I
    .restart local v3       #_name_buffers:I
    :cond_57
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v4, v4, v0

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_49
.end method
