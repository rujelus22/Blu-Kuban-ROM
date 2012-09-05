.class public Ljcifs/dcerpc/msrpc/MsrpcShareEnum;
.super Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;
.source "MsrpcShareEnum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .parameter "server"

    .prologue
    const/4 v5, 0x0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;-><init>()V

    const/4 v4, -0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;-><init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/NdrObject;III)V

    .line 38
    iput v5, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->ptype:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->flags:I

    .line 40
    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .registers 6

    .prologue
    .line 47
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->info:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;

    .line 48
    .local v0, ctr:Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;
    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    new-array v1, v3, [Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    .line 49
    .local v1, entries:[Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->count:I

    if-ge v2, v3, :cond_1b

    .line 50
    new-instance v3, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;

    iget-object v4, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;->array:[Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;

    aget-object v4, v4, v2

    invoke-direct {v3, p0, v4}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum$MsrpcShareInfo1;-><init>(Ljcifs/dcerpc/msrpc/MsrpcShareEnum;Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;)V

    aput-object v3, v1, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 52
    :cond_1b
    return-object v1
.end method
