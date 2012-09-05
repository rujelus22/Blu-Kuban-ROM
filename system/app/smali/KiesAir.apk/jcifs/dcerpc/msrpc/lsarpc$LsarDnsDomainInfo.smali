.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarDnsDomainInfo"
.end annotation


# instance fields
.field public dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

.field public dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

.field public domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 22
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 258
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 259
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    if-nez v18, :cond_25

    .line 261
    new-instance v18, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct/range {v18 .. v18}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 263
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 265
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v15

    .line 266
    .local v15, _name_bufferp:I
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    if-nez v18, :cond_6f

    .line 268
    new-instance v18, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct/range {v18 .. v18}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 270
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 272
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    .line 273
    .local v4, _dns_domain_bufferp:I
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    if-nez v18, :cond_b9

    .line 275
    new-instance v18, Ljcifs/dcerpc/rpc$unicode_string;

    invoke-direct/range {v18 .. v18}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 277
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 279
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v8

    .line 280
    .local v8, _dns_forest_bufferp:I
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    if-nez v18, :cond_103

    .line 282
    new-instance v18, Ljcifs/dcerpc/rpc$uuid_t;

    invoke-direct/range {v18 .. v18}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 284
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-byte v0, v1, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 289
    const/4 v11, 0x6

    .line 290
    .local v11, _domain_guid_nodes:I
    move-object/from16 v0, p1

    iget v10, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 291
    .local v10, _domain_guid_nodei:I
    const/16 v18, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 292
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v17

    .line 294
    .local v17, _sidp:I
    if-eqz v15, :cond_1ef

    .line 295
    move-object/from16 v0, p1

    iget-object v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    move-object/from16 p1, v0

    .line 296
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v16

    .line 297
    .local v16, _name_buffers:I
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 298
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v14

    .line 299
    .local v14, _name_bufferl:I
    move-object/from16 v0, p1

    iget v13, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 300
    .local v13, _name_bufferi:I
    mul-int/lit8 v18, v14, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    move-object/from16 v18, v0

    if-nez v18, :cond_1cc

    .line 303
    if-ltz v16, :cond_1b2

    const v18, 0xffff

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_1ba

    :cond_1b2
    new-instance v18, Ljcifs/dcerpc/ndr/NdrException;

    const-string v19, "invalid array conformance"

    invoke-direct/range {v18 .. v19}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 304
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    move/from16 v0, v16

    new-array v0, v0, [S

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 306
    :cond_1cc
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 307
    const/4 v12, 0x0

    .local v12, _i:I
    :goto_1d3
    if-ge v12, v14, :cond_1ef

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v18, v12

    .line 307
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d3

    .line 311
    .end local v12           #_i:I
    .end local v13           #_name_bufferi:I
    .end local v14           #_name_bufferl:I
    .end local v16           #_name_buffers:I
    :cond_1ef
    if-eqz v4, :cond_261

    .line 312
    move-object/from16 v0, p1

    iget-object v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    move-object/from16 p1, v0

    .line 313
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v5

    .line 314
    .local v5, _dns_domain_buffers:I
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 315
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 316
    .local v3, _dns_domain_bufferl:I
    move-object/from16 v0, p1

    iget v2, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 317
    .local v2, _dns_domain_bufferi:I
    mul-int/lit8 v18, v3, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    move-object/from16 v18, v0

    if-nez v18, :cond_23e

    .line 320
    if-ltz v5, :cond_226

    const v18, 0xffff

    move/from16 v0, v18

    if-le v5, v0, :cond_22e

    :cond_226
    new-instance v18, Ljcifs/dcerpc/ndr/NdrException;

    const-string v19, "invalid array conformance"

    invoke-direct/range {v18 .. v19}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 321
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    new-array v0, v5, [S

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 323
    :cond_23e
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 324
    const/4 v12, 0x0

    .restart local v12       #_i:I
    :goto_245
    if-ge v12, v3, :cond_261

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v18, v12

    .line 324
    add-int/lit8 v12, v12, 0x1

    goto :goto_245

    .line 328
    .end local v2           #_dns_domain_bufferi:I
    .end local v3           #_dns_domain_bufferl:I
    .end local v5           #_dns_domain_buffers:I
    .end local v12           #_i:I
    :cond_261
    if-eqz v8, :cond_2d3

    .line 329
    move-object/from16 v0, p1

    iget-object v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    move-object/from16 p1, v0

    .line 330
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v9

    .line 331
    .local v9, _dns_forest_buffers:I
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 332
    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v7

    .line 333
    .local v7, _dns_forest_bufferl:I
    move-object/from16 v0, p1

    iget v6, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 334
    .local v6, _dns_forest_bufferi:I
    mul-int/lit8 v18, v7, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    move-object/from16 v18, v0

    if-nez v18, :cond_2b0

    .line 337
    if-ltz v9, :cond_298

    const v18, 0xffff

    move/from16 v0, v18

    if-le v9, v0, :cond_2a0

    :cond_298
    new-instance v18, Ljcifs/dcerpc/ndr/NdrException;

    const-string v19, "invalid array conformance"

    invoke-direct/range {v18 .. v19}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 338
    :cond_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    new-array v0, v9, [S

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 340
    :cond_2b0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 341
    const/4 v12, 0x0

    .restart local v12       #_i:I
    :goto_2b7
    if-ge v12, v7, :cond_2d3

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v18, v12

    .line 341
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b7

    .line 345
    .end local v6           #_dns_forest_bufferi:I
    .end local v7           #_dns_forest_bufferl:I
    .end local v9           #_dns_forest_buffers:I
    .end local v12           #_i:I
    :cond_2d3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    move-object/from16 v18, v0

    if-nez v18, :cond_302

    .line 346
    if-ltz v11, :cond_2ea

    const v18, 0xffff

    move/from16 v0, v18

    if-le v11, v0, :cond_2f2

    :cond_2ea
    new-instance v18, Ljcifs/dcerpc/ndr/NdrException;

    const-string v19, "invalid array conformance"

    invoke-direct/range {v18 .. v19}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 347
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    new-array v0, v11, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 349
    :cond_302
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 350
    const/4 v12, 0x0

    .restart local v12       #_i:I
    :goto_309
    if-ge v12, v11, :cond_325

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v18, v12

    .line 350
    add-int/lit8 v12, v12, 0x1

    goto :goto_309

    .line 353
    :cond_325
    if-eqz v17, :cond_34d

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    move-object/from16 v18, v0

    if-nez v18, :cond_33a

    .line 355
    new-instance v18, Ljcifs/dcerpc/rpc$sid_t;

    invoke-direct/range {v18 .. v18}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 357
    :cond_33a
    move-object/from16 v0, p1

    iget-object v0, v0, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    move-object/from16 p1, v0

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 361
    :cond_34d
    return-void
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 16
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 183
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 184
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 185
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v13, 0x1

    invoke-virtual {p1, v12, v13}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 186
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 187
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 188
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v13, 0x1

    invoke-virtual {p1, v12, v13}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 189
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 190
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 191
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    const/4 v13, 0x1

    invoke-virtual {p1, v12, v13}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 192
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget v12, v12, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 193
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 194
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 195
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v12, v12, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 196
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-byte v12, v12, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 197
    const/4 v7, 0x6

    .line 198
    .local v7, _domain_guid_nodes:I
    iget v6, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 199
    .local v6, _domain_guid_nodei:I
    const/4 v12, 0x6

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 200
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    const/4 v13, 0x1

    invoke-virtual {p1, v12, v13}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 202
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v12, :cond_ae

    .line 203
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 204
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v10, v12, 0x2

    .line 205
    .local v10, _name_bufferl:I
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v11, v12, 0x2

    .line 206
    .local v11, _name_buffers:I
    invoke-virtual {p1, v11}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 207
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 208
    invoke-virtual {p1, v10}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 209
    iget v9, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 210
    .local v9, _name_bufferi:I
    mul-int/lit8 v12, v10, 0x2

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 212
    invoke-virtual {p1, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 213
    const/4 v8, 0x0

    .local v8, _i:I
    :goto_a0
    if-ge v8, v10, :cond_ae

    .line 214
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v12, v12, v8

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 213
    add-int/lit8 v8, v8, 0x1

    goto :goto_a0

    .line 217
    .end local v8           #_i:I
    .end local v9           #_name_bufferi:I
    .end local v10           #_name_bufferl:I
    .end local v11           #_name_buffers:I
    :cond_ae
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v12, :cond_e6

    .line 218
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 219
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v1, v12, 0x2

    .line 220
    .local v1, _dns_domain_bufferl:I
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v2, v12, 0x2

    .line 221
    .local v2, _dns_domain_buffers:I
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 222
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 223
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 224
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 225
    .local v0, _dns_domain_bufferi:I
    mul-int/lit8 v12, v1, 0x2

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 227
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 228
    const/4 v8, 0x0

    .restart local v8       #_i:I
    :goto_d8
    if-ge v8, v1, :cond_e6

    .line 229
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v12, v12, v8

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 228
    add-int/lit8 v8, v8, 0x1

    goto :goto_d8

    .line 232
    .end local v0           #_dns_domain_bufferi:I
    .end local v1           #_dns_domain_bufferl:I
    .end local v2           #_dns_domain_buffers:I
    .end local v8           #_i:I
    :cond_e6
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    if-eqz v12, :cond_11e

    .line 233
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 234
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    div-int/lit8 v4, v12, 0x2

    .line 235
    .local v4, _dns_forest_bufferl:I
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-short v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    div-int/lit8 v5, v12, 0x2

    .line 236
    .local v5, _dns_forest_buffers:I
    invoke-virtual {p1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 237
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 238
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 239
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 240
    .local v3, _dns_forest_bufferi:I
    mul-int/lit8 v12, v4, 0x2

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 242
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 243
    const/4 v8, 0x0

    .restart local v8       #_i:I
    :goto_110
    if-ge v8, v4, :cond_11e

    .line 244
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    aget-short v12, v12, v8

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 243
    add-int/lit8 v8, v8, 0x1

    goto :goto_110

    .line 247
    .end local v3           #_dns_forest_bufferi:I
    .end local v4           #_dns_forest_bufferl:I
    .end local v5           #_dns_forest_buffers:I
    .end local v8           #_i:I
    :cond_11e
    invoke-virtual {p1, v6}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 248
    const/4 v8, 0x0

    .restart local v8       #_i:I
    :goto_123
    if-ge v8, v7, :cond_131

    .line 249
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    iget-object v12, v12, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v12, v12, v8

    invoke-virtual {p1, v12}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 248
    add-int/lit8 v8, v8, 0x1

    goto :goto_123

    .line 251
    :cond_131
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    if-eqz v12, :cond_13c

    .line 252
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 253
    iget-object v12, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v12, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 256
    :cond_13c
    return-void
.end method
