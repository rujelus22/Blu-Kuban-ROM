.class public Lcom/samsung/swift/service/telephony/TelephonyPlugin$TooManyConcurrentCallsException;
.super Lcom/samsung/swift/exception/SwiftException;
.source "TelephonyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/telephony/TelephonyPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TooManyConcurrentCallsException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x665852a47c1556eeL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/samsung/swift/exception/SwiftException;-><init>()V

    .line 185
    return-void
.end method
