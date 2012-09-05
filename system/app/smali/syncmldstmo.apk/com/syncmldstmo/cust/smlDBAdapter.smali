.class public Lcom/syncmldstmo/cust/smlDBAdapter;
.super Ljava/lang/Object;
.source "smlDBAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlGetAlertNextMessage()Z
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public static smlGetClientSupportFieldLevel(I)Z
    .registers 2
    .parameter "dbid"

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public static smlGetDSVersion()I
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public static smlGetErrorStatusHandle()Z
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public static smlGetObexServerMode()Z
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public static smlGetServerSupportFieldLevel(I)Z
    .registers 2
    .parameter "dbid"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public static smlGetSupportCachedMap()Z
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public static smlGetSupportLargeObject()Z
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public static smlGetSupportMultipleItems()Z
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public static smlGetSupportSuspendResume()Z
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
