.class public Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;
.super Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;
.source "MsrpcDfsRootEnum.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .parameter "server"

    .prologue
    const/4 v6, 0x0

    .line 27
    const/16 v2, 0xc8

    const v3, 0xffff

    new-instance v4, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    invoke-direct {v4}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;-><init>()V

    new-instance v5, Ljcifs/dcerpc/ndr/NdrLong;

    invoke-direct {v5, v6}, Ljcifs/dcerpc/ndr/NdrLong;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;-><init>(Ljava/lang/String;IILjcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;Ljcifs/dcerpc/ndr/NdrLong;)V

    .line 28
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iget v1, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->level:I

    iput v1, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 29
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    new-instance v1, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    invoke-direct {v1}, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;-><init>()V

    iput-object v1, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    .line 30
    iput v6, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->ptype:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->flags:I

    .line 32
    return-void
.end method


# virtual methods
.method public getEntries()[Ljcifs/smb/FileEntry;
    .registers 8

    .prologue
    .line 35
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->info:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;

    iget-object v0, v3, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Ljcifs/dcerpc/ndr/NdrObject;

    check-cast v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;

    .line 36
    .local v0, a200:Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;
    iget v3, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    new-array v1, v3, [Ljcifs/smb/SmbShareInfo;

    .line 37
    .local v1, entries:[Ljcifs/smb/SmbShareInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    iget v3, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->count:I

    if-ge v2, v3, :cond_21

    .line 38
    new-instance v3, Ljcifs/smb/SmbShareInfo;

    iget-object v4, v0, Ljcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;->s:[Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;

    aget-object v4, v4, v2

    iget-object v4, v4, Ljcifs/dcerpc/msrpc/netdfs$DfsInfo200;->dfs_name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljcifs/smb/SmbShareInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 40
    :cond_21
    return-object v1
.end method
