.class public Lcom/samsung/swift/service/telephony/TelephonyPlugin$NoNetworkConnectivityException;
.super Lcom/samsung/swift/exception/SwiftException;
.source "TelephonyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/telephony/TelephonyPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoNetworkConnectivityException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5cb64d718f166c8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/samsung/swift/exception/SwiftException;-><init>()V

    .line 192
    return-void
.end method
