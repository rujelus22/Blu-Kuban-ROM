.class public Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;
.super Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;
.source "MsrpcEnumerateAliasesInDomain.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;ILjcifs/dcerpc/msrpc/samr$SamrSamArray;)V
    .registers 10
    .parameter "domainHandle"
    .parameter "acct_flags"
    .parameter "sam"

    .prologue
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;-><init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/msrpc/samr$SamrSamArray;I)V

    .line 30
    iput-object p3, p0, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->sam:Ljcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 31
    iput v2, p0, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->ptype:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;->flags:I

    .line 33
    return-void
.end method
