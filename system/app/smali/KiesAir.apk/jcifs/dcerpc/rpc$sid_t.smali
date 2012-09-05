.class public Ljcifs/dcerpc/rpc$sid_t;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sid_t"
.end annotation


# instance fields
.field public identifier_authority:[B

.field public revision:B

.field public sub_authority:[I

.field public sub_authority_count:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 155
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
    const v7, 0xffff

    .line 184
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 185
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 186
    .local v4, _sub_authoritys:I
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    .line 187
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 188
    const/4 v2, 0x6

    .line 189
    .local v2, _identifier_authoritys:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 190
    .local v1, _identifier_authorityi:I
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 191
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 192
    .local v3, _sub_authorityi:I
    mul-int/lit8 v5, v4, 0x4

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 194
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    if-nez v5, :cond_3b

    .line 195
    if-ltz v2, :cond_2f

    if-le v2, v7, :cond_37

    :cond_2f
    new-instance v5, Ljcifs/dcerpc/ndr/NdrException;

    const-string v6, "invalid array conformance"

    invoke-direct {v5, v6}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :cond_37
    new-array v5, v2, [B

    iput-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 198
    :cond_3b
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 199
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_40
    if-ge v0, v2, :cond_4e

    .line 200
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 202
    :cond_4e
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    if-nez v5, :cond_62

    .line 203
    if-ltz v4, :cond_56

    if-le v4, v7, :cond_5e

    :cond_56
    new-instance v5, Ljcifs/dcerpc/ndr/NdrException;

    const-string v6, "invalid array conformance"

    invoke-direct {v5, v6}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_5e
    new-array v5, v4, [I

    iput-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 206
    :cond_62
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 207
    const/4 v0, 0x0

    :goto_67
    if-ge v0, v4, :cond_74

    .line 208
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v6

    aput v6, v5, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 210
    :cond_74
    return-void
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
    .line 163
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 164
    iget-byte v4, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 165
    .local v4, _sub_authoritys:I
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 166
    iget-byte v5, p0, Ljcifs/dcerpc/rpc$sid_t;->revision:B

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 167
    iget-byte v5, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 168
    const/4 v2, 0x6

    .line 169
    .local v2, _identifier_authoritys:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 170
    .local v1, _identifier_authorityi:I
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 171
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 172
    .local v3, _sub_authorityi:I
    mul-int/lit8 v5, v4, 0x4

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 174
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 175
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_26
    if-ge v0, v2, :cond_32

    .line 176
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v5, v5, v0

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 178
    :cond_32
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 179
    const/4 v0, 0x0

    :goto_37
    if-ge v0, v4, :cond_43

    .line 180
    iget-object v5, p0, Ljcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v5, v5, v0

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 182
    :cond_43
    return-void
.end method
