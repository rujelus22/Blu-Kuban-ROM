.class public Ljcifs/dcerpc/msrpc/SamrPolicyHandle;
.super Ljcifs/dcerpc/rpc$policy_handle;
.source "SamrPolicyHandle.java"


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    .registers 9
    .parameter "handle"
    .parameter "server"
    .parameter "access"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$policy_handle;-><init>()V

    .line 28
    if-nez p2, :cond_7

    .line 29
    const-string p2, "\\\\"

    .line 30
    :cond_7
    new-instance v1, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;

    invoke-direct {v1, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    .line 32
    .local v1, rpc:Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;
    :try_start_c
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_f
    .catch Ljcifs/dcerpc/DcerpcException; {:try_start_c .. :try_end_f} :catch_10

    .line 40
    :goto_f
    return-void

    .line 33
    :catch_10
    move-exception v0

    .line 34
    .local v0, de:Ljcifs/dcerpc/DcerpcException;
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcException;->getErrorCode()I

    move-result v3

    const v4, 0x1c010002

    if-eq v3, v4, :cond_1b

    .line 35
    throw v0

    .line 37
    :cond_1b
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;

    invoke-direct {v2, p2, p3, p0}, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;-><init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V

    .line 38
    .local v2, rpc2:Ljcifs/dcerpc/msrpc/MsrpcSamrConnect2;
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    goto :goto_f
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
    .line 43
    return-void
.end method
