.class public Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrRidWithAttributeArray"
.end annotation


# instance fields
.field public count:I

.field public rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 365
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
    .line 389
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 390
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->count:I

    .line 391
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 393
    .local v2, _ridsp:I
    if-eqz v2, :cond_54

    .line 394
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 395
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 396
    .local v3, _ridss:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 397
    .local v1, _ridsi:I
    mul-int/lit8 v4, v3, 0x8

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 399
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    if-nez v4, :cond_34

    .line 400
    if-ltz v3, :cond_28

    const v4, 0xffff

    if-le v3, v4, :cond_30

    :cond_28
    new-instance v4, Ljcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    :cond_30
    new-array v4, v3, [Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    iput-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    .line 403
    :cond_34
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 404
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_39
    if-ge v0, v3, :cond_54

    .line 405
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    aget-object v4, v4, v0

    if-nez v4, :cond_4a

    .line 406
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    new-instance v5, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;-><init>()V

    aput-object v5, v4, v0

    .line 408
    :cond_4a
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 411
    .end local v0           #_i:I
    .end local v1           #_ridsi:I
    .end local v3           #_ridss:I
    :cond_54
    return-void
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
    .line 371
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 372
    iget v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->count:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 373
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 375
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    if-eqz v3, :cond_32

    .line 376
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 377
    iget v2, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->count:I

    .line 378
    .local v2, _ridss:I
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 379
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 380
    .local v1, _ridsi:I
    mul-int/lit8 v3, v2, 0x8

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 382
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 383
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_26
    if-ge v0, v2, :cond_32

    .line 384
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttributeArray;->rids:[Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljcifs/dcerpc/msrpc/samr$SamrRidWithAttribute;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 387
    .end local v0           #_i:I
    .end local v1           #_ridsi:I
    .end local v2           #_ridss:I
    :cond_32
    return-void
.end method
