.class public Ljcifs/dcerpc/msrpc/MsrpcLookupSids;
.super Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;
.source "MsrpcLookupSids.java"


# instance fields
.field sids:[Ljcifs/smb/SID;


# direct methods
.method public constructor <init>(Ljcifs/dcerpc/msrpc/LsaPolicyHandle;[Ljcifs/smb/SID;)V
    .registers 10
    .parameter "policyHandle"
    .parameter "sids"

    .prologue
    .line 31
    .line 32
    new-instance v2, Ljcifs/dcerpc/msrpc/LsarSidArrayX;

    invoke-direct {v2, p2}, Ljcifs/dcerpc/msrpc/LsarSidArrayX;-><init>([Ljcifs/smb/SID;)V

    .line 33
    new-instance v3, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    invoke-direct {v3}, Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;-><init>()V

    .line 34
    new-instance v4, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    invoke-direct {v4}, Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;-><init>()V

    .line 35
    const/4 v5, 0x1

    .line 36
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;-><init>(Ljcifs/dcerpc/rpc$policy_handle;Ljcifs/dcerpc/msrpc/lsarpc$LsarSidArray;Ljcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;Ljcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;SI)V

    .line 37
    iput-object p2, p0, Ljcifs/dcerpc/msrpc/MsrpcLookupSids;->sids:[Ljcifs/smb/SID;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 40
    return-void
.end method
