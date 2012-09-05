.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect2;
.source "MsrpcSamrConnect2.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .registers 5
    .parameter "server"
    .parameter "access"
    .parameter "policyHandle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/rpc$policy_handle;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;->ptype:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;->flags:I

    .line 27
    return-void
.end method
