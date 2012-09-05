.class public Ljcifs/dcerpc/msrpc/samr$SamrSamArray;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrSamArray"
.end annotation


# instance fields
.field public count:I

.field public entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 198
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
    .line 222
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 223
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    .line 224
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 226
    .local v1, _entriesp:I
    if-eqz v1, :cond_54

    .line 227
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 228
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 229
    .local v2, _entriess:I
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 230
    .local v0, _entriesi:I
    mul-int/lit8 v4, v2, 0xc

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 232
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    if-nez v4, :cond_34

    .line 233
    if-ltz v2, :cond_28

    const v4, 0xffff

    if-le v2, v4, :cond_30

    :cond_28
    new-instance v4, Ljcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_30
    new-array v4, v2, [Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    iput-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    .line 236
    :cond_34
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 237
    const/4 v3, 0x0

    .local v3, _i:I
    :goto_39
    if-ge v3, v2, :cond_54

    .line 238
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v4, v4, v3

    if-nez v4, :cond_4a

    .line 239
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    new-instance v5, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    invoke-direct {v5}, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;-><init>()V

    aput-object v5, v4, v3

    .line 241
    :cond_4a
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 244
    .end local v0           #_entriesi:I
    .end local v2           #_entriess:I
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
    .line 204
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 205
    iget v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 206
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 208
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    if-eqz v3, :cond_32

    .line 209
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 210
    iget v1, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    .line 211
    .local v1, _entriess:I
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 212
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 213
    .local v0, _entriesi:I
    mul-int/lit8 v3, v1, 0xc

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 215
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 216
    const/4 v2, 0x0

    .local v2, _i:I
    :goto_26
    if-ge v2, v1, :cond_32

    .line 217
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 220
    .end local v0           #_entriesi:I
    .end local v1           #_entriess:I
    .end local v2           #_i:I
    :cond_32
    return-void
.end method
