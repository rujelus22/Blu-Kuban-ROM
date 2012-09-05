.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarDomainInfo"
.end annotation


# instance fields
.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
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

    .line 136
    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 137
    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 138
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    if-nez v6, :cond_12

    .line 139
    new-instance v6, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v6}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 141
    :cond_12
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 142
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 143
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 144
    .local v3, _name_bufferp:I
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    .line 146
    .local v5, _sidp:I
    if-eqz v3, :cond_64

    .line 147
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 148
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 149
    .local v4, _name_buffers:I
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 150
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 151
    .local v2, _name_bufferl:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 152
    .local v1, _name_bufferi:I
    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 154
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v6, v6, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-nez v6, :cond_5d

    .line 155
    if-ltz v4, :cond_4f

    const v6, 0xffff

    if-le v4, v6, :cond_57

    :cond_4f
    new-instance v6, Ljcifs/dcerpc/ndr/NdrException;

    const-string v7, "invalid array conformance"

    invoke-direct {v6, v7}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 156
    :cond_57
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    new-array v7, v4, [S

    iput-object v7, v6, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 158
    :cond_5d
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 159
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_62
    if-lt v0, v2, :cond_79

    .line 163
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v4           #_name_buffers:I
    :cond_64
    if-eqz v5, :cond_78

    .line 164
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-nez v6, :cond_71

    .line 165
    new-instance v6, Ljcifs/dcerpc/rpc$sid_t;

    invoke-direct {v6}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    iput-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 167
    :cond_71
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 168
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v6, p1}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 171
    :cond_78
    return-void

    .line 160
    .restart local v0       #_i:I
    .restart local v1       #_name_bufferi:I
    .restart local v2       #_name_bufferl:I
    .restart local v4       #_name_buffers:I
    :cond_79
    iget-object v6, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v6, v6, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v6, v0

    .line 159
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

    .line 108
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 109
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 110
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 111
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    invoke-virtual {p1, v4, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 112
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {p1, v4, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 114
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v4, :cond_4b

    .line 115
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 116
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v2, v4, 0x2

    .line 117
    .local v2, _name_bufferl:I
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v3, v4, 0x2

    .line 118
    .local v3, _name_buffers:I
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 119
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 120
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 121
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 122
    .local v1, _name_bufferi:I
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 124
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 125
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_49
    if-lt v0, v2, :cond_57

    .line 129
    .end local v0           #_i:I
    .end local v1           #_name_bufferi:I
    .end local v2           #_name_bufferl:I
    .end local v3           #_name_buffers:I
    :cond_4b
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-eqz v4, :cond_56

    .line 130
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 131
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v4, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 134
    :cond_56
    return-void

    .line 126
    .restart local v0       #_i:I
    .restart local v1       #_name_bufferi:I
    .restart local v2       #_name_bufferl:I
    .restart local v3       #_name_buffers:I
    :cond_57
    iget-object v4, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v4, v4, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v4, v4, v0

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_49
.end method
