.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarTransNameArray"
.end annotation


# instance fields
.field public count:I

.field public names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 708
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
    .line 732
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 733
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    .line 734
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 736
    .local v2, _namesp:I
    if-eqz v2, :cond_54

    .line 737
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 738
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 739
    .local v3, _namess:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 740
    .local v1, _namesi:I
    mul-int/lit8 v4, v3, 0x10

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 742
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    if-nez v4, :cond_34

    .line 743
    if-ltz v3, :cond_28

    const v4, 0xffff

    if-le v3, v4, :cond_30

    :cond_28
    new-instance v4, Ljcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 744
    :cond_30
    new-array v4, v3, [Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    iput-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    .line 746
    :cond_34
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 747
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_39
    if-ge v0, v3, :cond_54

    .line 748
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v4, v4, v0

    if-nez v4, :cond_4a

    .line 749
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    new-instance v5, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;-><init>()V

    aput-object v5, v4, v0

    .line 751
    :cond_4a
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 754
    .end local v0           #_i:I
    .end local v1           #_namesi:I
    .end local v3           #_namess:I
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
    .line 714
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 715
    iget v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 716
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 718
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    if-eqz v3, :cond_32

    .line 719
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 720
    iget v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->count:I

    .line 721
    .local v2, _namess:I
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 722
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 723
    .local v1, _namesi:I
    mul-int/lit8 v3, v2, 0x10

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 725
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 726
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_26
    if-ge v0, v2, :cond_32

    .line 727
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 730
    .end local v0           #_i:I
    .end local v1           #_namesi:I
    .end local v2           #_namess:I
    :cond_32
    return-void
.end method
