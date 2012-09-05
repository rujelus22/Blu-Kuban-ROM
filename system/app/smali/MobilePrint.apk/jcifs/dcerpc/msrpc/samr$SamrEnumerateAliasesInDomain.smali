.class public Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;
.super Ljcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrEnumerateAliasesInDomain"
.end annotation


# instance fields
.field public acct_flags:I

.field public domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

.field public num_entries:I

.field public resume_handle:I

.field public retval:I

.field public sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/msrpc/samr$SamrSamArray;I)V
    .registers 6
    .parameter "domain_handle"
    .parameter "resume_handle"
    .parameter "acct_flags"
    .parameter "sam"
    .parameter "num_entries"

    .prologue
    .line 257
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 262
    iput-object p1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    .line 263
    iput p2, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 264
    iput p3, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->acct_flags:I

    .line 265
    iput-object p4, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 266
    iput p5, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->num_entries:I

    .line 267
    return-void
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 4
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 276
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 277
    .local v0, _samp:I
    if-eqz v0, :cond_1c

    .line 278
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    if-nez v1, :cond_17

    .line 279
    new-instance v1, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    iput-object v1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 281
    :cond_17
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-virtual {v1, p1}, Ljcifs/dcerpc/msrpc/samr$SamrSamArray;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 284
    :cond_1c
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->num_entries:I

    .line 285
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    .line 286
    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 3
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->domain_handle:Ljcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$policy_handle;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 271
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 272
    iget v0, p0, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->acct_flags:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 273
    return-void
.end method

.method public getOpnum()I
    .registers 2

    .prologue
    .line 248
    const/16 v0, 0xf

    return v0
.end method
