.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarRefDomainList"
.end annotation


# instance fields
.field public count:I

.field public domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

.field public max_count:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 596
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
    .line 622
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 623
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    .line 624
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 625
    .local v1, _domainsp:I
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->max_count:I

    .line 627
    if-eqz v1, :cond_41

    .line 628
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 629
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 630
    .local v2, _domainss:I
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 631
    .local v0, _domainsi:I
    mul-int/lit8 v4, v2, 0xc

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 633
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    if-nez v4, :cond_3a

    .line 634
    if-ltz v2, :cond_2e

    const v4, 0xffff

    if-le v2, v4, :cond_36

    :cond_2e
    new-instance v4, Ljcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 635
    :cond_36
    new-array v4, v2, [Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    iput-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    .line 637
    :cond_3a
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 638
    const/4 v3, 0x0

    .local v3, _i:I
    :goto_3f
    if-lt v3, v2, :cond_42

    .line 645
    .end local v0           #_domainsi:I
    .end local v2           #_domainss:I
    .end local v3           #_i:I
    :cond_41
    return-void

    .line 639
    .restart local v0       #_domainsi:I
    .restart local v2       #_domainss:I
    .restart local v3       #_i:I
    :cond_42
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v4, v4, v3

    if-nez v4, :cond_51

    .line 640
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    new-instance v5, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;-><init>()V

    aput-object v5, v4, v3

    .line 642
    :cond_51
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f
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
    .line 603
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 604
    iget v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 605
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 606
    iget v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->max_count:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 608
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    if-eqz v3, :cond_2d

    .line 609
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 610
    iget v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->count:I

    .line 611
    .local v1, _domainss:I
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 612
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 613
    .local v0, _domainsi:I
    mul-int/lit8 v3, v1, 0xc

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 615
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 616
    const/4 v2, 0x0

    .local v2, _i:I
    :goto_2b
    if-lt v2, v1, :cond_2e

    .line 620
    .end local v0           #_domainsi:I
    .end local v1           #_domainss:I
    .end local v2           #_i:I
    :cond_2d
    return-void

    .line 617
    .restart local v0       #_domainsi:I
    .restart local v1       #_domainss:I
    .restart local v2       #_i:I
    :cond_2e
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 616
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b
.end method
