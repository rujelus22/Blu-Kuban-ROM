.class public Ljcifs/dcerpc/msrpc/LsaPolicyHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "LsaPolicyHandle.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .registers 8
    .parameter "handle"
    .parameter "server"
    .parameter "access"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 31
    if-nez p2, :cond_7

    .line 32
    const-string p2, "\\\\"

    .line 33
    :cond_7
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;

    invoke-direct {v0, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/LsaPolicyHandle;)V

    .line 34
    .local v0, rpc:Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 35
    iget v1, v0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->retval:I

    if-eqz v1, :cond_1c

    .line 36
    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, v0, Ljcifs/dcerpc/msrpc/MsrpcLsarOpenPolicy2;->retval:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v1

    .line 37
    :cond_1c
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
