.class public Ljcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;
.source "MsrpcQueryInformationPolicy.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;SLjcifs/dcerpc/ndr/NdrObject;)V
    .registers 5
    .parameter "policyHandle"
    .parameter "level"
    .parameter "info"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;-><init>(Ljcifs/dcerpc/rpc$policy_handle;SLjcifs/dcerpc/ndr/NdrObject;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 33
    return-void
.end method
