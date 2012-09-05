.class public Ljcifs/dcerpc/msrpc/srvsvc;
.super Ljava/lang/Object;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/srvsvc$RemoteTOD;,
        Ljcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;,
        Ljcifs/dcerpc/msrpc/srvsvc$ServerInfo100;,
        Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;,
        Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;,
        Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo0;,
        Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo1;,
        Ljcifs/dcerpc/msrpc/srvsvc$ShareInfo502;,
        Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;,
        Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;,
        Ljcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr502;,
        Ljcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .registers 1

    .prologue
    .line 11
    const-string v0, "4b324fc8-1670-01d3-1278-5a47bf6ee188:3.0"

    return-object v0
.end method
