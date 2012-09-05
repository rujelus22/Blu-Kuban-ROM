.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTransSidArray"
.end annotation


# instance fields
.field public count:I

.field public sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 477
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 8
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 502
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    .line 503
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 505
    .local v2, _sidsp:I
    if-eqz v2, :cond_3b

    .line 506
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 507
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 508
    .local v3, _sidss:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 509
    .local v1, _sidsi:I
    mul-int/lit8 v4, v3, 0xc

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 511
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    if-nez v4, :cond_34

    .line 512
    if-ltz v3, :cond_28

    const v4, 0xffff

    if-le v3, v4, :cond_30

    :cond_28
    new-instance v4, Ljcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 513
    :cond_30
    new-array v4, v3, [Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    iput-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    .line 515
    :cond_34
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 516
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_39
    if-lt v0, v3, :cond_3c

    .line 523
    .end local v0           #_i:I
    .end local v1           #_sidsi:I
    .end local v3           #_sidss:I
    :cond_3b
    return-void

    .line 517
    .restart local v0       #_i:I
    .restart local v1       #_sidsi:I
    .restart local v3       #_sidss:I
    :cond_3c
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v4, v4, v0

    if-nez v4, :cond_4b

    .line 518
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    new-instance v5, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;-><init>()V

    aput-object v5, v4, v0

    .line 520
    :cond_4b
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_39
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 7
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 484
    iget v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 485
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 487
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    if-eqz v3, :cond_28

    .line 488
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 489
    iget v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->count:I

    .line 490
    .local v2, _sidss:I
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 491
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 492
    .local v1, _sidsi:I
    mul-int/lit8 v3, v2, 0xc

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 494
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 495
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_26
    if-lt v0, v2, :cond_29

    .line 499
    .end local v0           #_i:I
    .end local v1           #_sidsi:I
    .end local v2           #_sidss:I
    :cond_28
    return-void

    .line 496
    .restart local v0       #_i:I
    .restart local v1       #_sidsi:I
    .restart local v2       #_sidss:I
    :cond_29
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransSidArray;->sids:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedSid;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method
