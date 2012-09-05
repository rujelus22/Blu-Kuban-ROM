.class public Ljcifs/dcerpc/msrpc/SamrDomainHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SamrDomainHandle.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;)V
    .registers 9
    .parameter "handle"
    .parameter "policyHandle"
    .parameter "access"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 33
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;

    invoke-direct {v0, p2, p3, p4, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;-><init>(Ljcifs/dcerpc/msrpc/SamrPolicyHandle;ILjcifs/dcerpc/rpc$sid_t;Ljcifs/dcerpc/msrpc/SamrDomainHandle;)V

    .line 34
    .local v0, rpc:Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 35
    iget v1, v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;->retval:I

    if-eqz v1, :cond_18

    .line 36
    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, v0, Ljcifs/dcerpc/msrpc/MsrpcSamrOpenDomain;->retval:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v1

    .line 37
    :cond_18
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method
