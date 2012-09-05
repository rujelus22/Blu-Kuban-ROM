.class public Lcom/syncmldstmo/database/smlDbNetworkProfile;
.super Ljava/lang/Object;
.source "smlDbNetworkProfile.java"


# instance fields
.field public DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iput-object v0, p0, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    .line 13
    return-void
.end method
