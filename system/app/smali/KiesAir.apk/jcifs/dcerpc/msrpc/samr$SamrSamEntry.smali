.class public Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrSamEntry"
.end annotation


# instance fields
.field public idx:I

.field public name:Ljcifs/dcerpc/rpc$unicode_string;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 9
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 169
    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 170
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    iput v5, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    .line 171
    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 172
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v5, :cond_18

    .line 173
    new-instance v5, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v5}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v5, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 175
    :cond_18
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 176
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v5, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 177
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 179
    .local v3, _name_bufferp:I
    if-eqz v3, :cond_74

    .line 180
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 181
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 182
    .local v4, _name_buffers:I
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 183
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 184
    .local v2, _name_bufferl:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 185
    .local v1, _name_bufferi:I
    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 187
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v5, :cond_5f

    .line 188
    if-ltz v4, :cond_51

    const v5, 0xffff

    if-le v4, v5, :cond_59

    :cond_51
    new-instance v5, Ljcifs/dcerpc/ndr/NdrException;

    const-string v6, "invalid array conformance"

    invoke-direct {v5, v6}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    :cond_59
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    new-array v6, v4, [S

    iput-object v6, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 191
    :cond_5f
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 192
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_64
    if-ge v0, v2, :cond_74

    .line 193
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v5, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 196
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v4           #_name_buffers:I
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
    .line 146
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 147
    iget v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 148
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 149
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 150
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 152
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v4, :cond_57

    .line 153
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 154
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v2, v4, 0x2

    .line 155
    .local v2, _name_bufferl:I
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v3, v4, 0x2

    .line 156
    .local v3, _name_buffers:I
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 157
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 158
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 159
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 160
    .local v1, _name_bufferi:I
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 162
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 163
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_49
    if-ge v0, v2, :cond_57

    .line 164
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v4, v4, v0

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 167
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v3           #_name_buffers:I
    :cond_57
    return-void
.end method
