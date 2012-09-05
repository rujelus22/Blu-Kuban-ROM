.class public Ljcifs/dcerpc/rpc$uuid_t;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "uuid_t"
.end annotation


# instance fields
.field public clock_seq_hi_and_reserved:B

.field public clock_seq_low:B

.field public node:[B

.field public time_hi_and_version:S

.field public time_low:I

.field public time_mid:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
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
    .line 34
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 35
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    iput v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 36
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 37
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 38
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 39
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 40
    const/4 v2, 0x6

    .line 41
    .local v2, _nodes:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 42
    .local v1, _nodei:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 44
    iget-object v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v3, :cond_44

    .line 45
    if-ltz v2, :cond_38

    const v3, 0xffff

    if-le v2, v3, :cond_40

    :cond_38
    new-instance v3, Ljcifs/dcerpc/ndr/NdrException;

    const-string v4, "invalid array conformance"

    invoke-direct {v3, v4}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_40
    new-array v3, v2, [B

    iput-object v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 48
    :cond_44
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 49
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_49
    if-lt v0, v2, :cond_4c

    .line 52
    return-void

    .line 50
    :cond_4c
    iget-object v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_49
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
    .line 18
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 19
    iget v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 20
    iget-short v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 21
    iget-short v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 22
    iget-byte v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 23
    iget-byte v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 24
    const/4 v2, 0x6

    .line 25
    .local v2, _nodes:I
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 26
    .local v1, _nodei:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 28
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_29
    if-lt v0, v2, :cond_2c

    .line 32
    return-void

    .line 30
    :cond_2c
    iget-object v3, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v3, v3, v0

    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_29
.end method
