.class public Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareInfoCtr0"
.end annotation


# instance fields
.field public array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

.field public count:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
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
    .line 63
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 64
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->count:I

    .line 65
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 67
    .local v1, _arrayp:I
    if-eqz v1, :cond_54

    .line 68
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 69
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 70
    .local v2, _arrays:I
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 71
    .local v0, _arrayi:I
    mul-int/lit8 v4, v2, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 73
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    if-nez v4, :cond_34

    .line 74
    if-ltz v2, :cond_28

    const v4, 0xffff

    if-le v2, v4, :cond_30

    :cond_28
    new-instance v4, Ljcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_30
    new-array v4, v2, [Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    iput-object v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    .line 77
    :cond_34
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 78
    const/4 v3, 0x0

    .local v3, _i:I
    :goto_39
    if-ge v3, v2, :cond_54

    .line 79
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    aget-object v4, v4, v3

    if-nez v4, :cond_4a

    .line 80
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    new-instance v5, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;-><init>()V

    aput-object v5, v4, v3

    .line 82
    :cond_4a
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 85
    .end local v0           #_arrayi:I
    .end local v2           #_arrays:I
    .end local v3           #_i:I
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
    .line 45
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 46
    iget v3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->count:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 47
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 49
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    if-eqz v3, :cond_32

    .line 50
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 51
    iget v1, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->count:I

    .line 52
    .local v1, _arrays:I
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 53
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 54
    .local v0, _arrayi:I
    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 56
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 57
    const/4 v2, 0x0

    .local v2, _i:I
    :goto_26
    if-ge v2, v1, :cond_32

    .line 58
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 61
    .end local v0           #_arrayi:I
    .end local v1           #_arrays:I
    .end local v2           #_i:I
    :cond_32
    return-void
.end method
