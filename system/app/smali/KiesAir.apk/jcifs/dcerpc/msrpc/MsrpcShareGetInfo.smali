.class public Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;
.source "MsrpcShareGetInfo.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "server"
    .parameter "sharename"

    .prologue
    .line 30
    const/16 v0, 0x1f6

    new-instance v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->ptype:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->flags:I

    .line 33
    return-void
.end method


# virtual methods
.method public getSecurity()[Ljcifs/smb/ACE;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->info:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;

    .line 37
    .local v0, info502:Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;
    iget-object v2, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    if-eqz v2, :cond_15

    .line 39
    new-instance v1, Ljcifs/smb/SecurityDescriptor;

    iget-object v2, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->security_descriptor:[B

    const/4 v3, 0x0

    iget v4, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;->sd_size:I

    invoke-direct {v1, v2, v3, v4}, Ljcifs/smb/SecurityDescriptor;-><init>([BII)V

    .line 40
    .local v1, sd:Ljcifs/smb/SecurityDescriptor;
    iget-object v2, v1, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 42
    .end local v1           #sd:Ljcifs/smb/SecurityDescriptor;
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method
