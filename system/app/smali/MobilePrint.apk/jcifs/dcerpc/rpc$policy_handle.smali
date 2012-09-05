.class public Ljcifs/dcerpc/rpc$policy_handle;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "policy_handle"
.end annotation


# instance fields
.field public type:I

.field public uuid:Ljcifs/dcerpc/rpc$uuid_t;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 7
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 77
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 78
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    iput v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->type:I

    .line 79
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 80
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    if-nez v3, :cond_18

    .line 81
    new-instance v3, Ljcifs/dcerpc/rpc$uuid_t;

    invoke-direct {v3}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    iput-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 83
    :cond_18
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, v3, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 84
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 85
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 86
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 87
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 88
    const/4 v2, 0x6

    .line 89
    .local v2, _uuid_nodes:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 90
    .local v1, _uuid_nodei:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 92
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v3, v3, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v3, :cond_66

    .line 93
    if-ltz v2, :cond_58

    const v3, 0xffff

    if-le v2, v3, :cond_60

    :cond_58
    new-instance v3, Ljcifs/dcerpc/ndr/NdrException;

    const-string v4, "invalid array conformance"

    invoke-direct {v3, v4}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_60
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    new-array v4, v2, [B

    iput-object v4, v3, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 96
    :cond_66
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 97
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_6b
    if-lt v0, v2, :cond_6e

    .line 100
    return-void

    .line 98
    :cond_6e
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v3, v3, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 6
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 61
    iget v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->type:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 62
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget v3, v3, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 63
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v3, v3, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 64
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v3, v3, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 65
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v3, v3, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 66
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v3, v3, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 67
    const/4 v2, 0x6

    .line 68
    .local v2, _uuid_nodes:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 69
    .local v1, _uuid_nodei:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 71
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 72
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_38
    if-lt v0, v2, :cond_3b

    .line 75
    return-void

    .line 73
    :cond_3b
    iget-object v3, p0, Ljcifs/dcerpc/rpc$policy_handle;->uuid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v3, v3, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v3, v3, v0

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_38
.end method
