.class public Ljcifs/dcerpc/msrpc/MsrpcSamrOpenAlias;
.super Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;
.source "MsrpcSamrOpenAlias.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/SamrDomainHandle;IILjcifs/dcerpc/msrpc/SamrAliasHandle;)V
    .registers 6
    .parameter "handle"
    .parameter "access"
    .parameter "rid"
    .parameter "aliasHandle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Ljcifs/dcerpc/msrpc/samr$SamrOpenAlias;-><init>(Ljcifs/dcerpc/rpc$policy_handle;IILjcifs/dcerpc/rpc$policy_handle;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 32
    return-void
.end method
