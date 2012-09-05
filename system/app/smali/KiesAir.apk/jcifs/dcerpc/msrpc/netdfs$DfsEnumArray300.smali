.class public Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray300"
.end annotation


# instance fields
.field public count:I

.field public s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 357
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
    .line 381
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 382
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    .line 383
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 385
    .local v2, _sp:I
    if-eqz v2, :cond_54

    .line 386
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 387
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 388
    .local v3, _ss:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 389
    .local v1, _si:I
    mul-int/lit8 v4, v3, 0x8

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 391
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    if-nez v4, :cond_34

    .line 392
    if-ltz v3, :cond_28

    const v4, 0xffff

    if-le v3, v4, :cond_30

    :cond_28
    new-instance v4, Ljcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :cond_30
    new-array v4, v3, [Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    iput-object v4, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    .line 395
    :cond_34
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 396
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_39
    if-ge v0, v3, :cond_54

    .line 397
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v4, v4, v0

    if-nez v4, :cond_4a

    .line 398
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    new-instance v5, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;-><init>()V

    aput-object v5, v4, v0

    .line 400
    :cond_4a
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 403
    .end local v0           #_i:I
    .end local v1           #_si:I
    .end local v3           #_ss:I
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
    .line 363
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 364
    iget v3, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 365
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 367
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    if-eqz v3, :cond_32

    .line 368
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 369
    iget v2, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    .line 370
    .local v2, _ss:I
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 371
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 372
    .local v1, _si:I
    mul-int/lit8 v3, v2, 0x8

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 374
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 375
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_26
    if-ge v0, v2, :cond_32

    .line 376
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo300;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 379
    .end local v0           #_i:I
    .end local v1           #_si:I
    .end local v2           #_ss:I
    :cond_32
    return-void
.end method
