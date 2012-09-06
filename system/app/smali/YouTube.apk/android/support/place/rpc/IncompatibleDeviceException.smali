.class public Landroid/support/place/rpc/IncompatibleDeviceException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final FAILURE_REASON_BT_SOCKET_CLASS_NOT_FOUND:I = 0x2

.field public static final FAILURE_REASON_NO_BLUETOOTH:I = 0x0

.field public static final FAILURE_REASON_UNKNOWN:I = -0x1

.field public static final FAILURE_REASON_UNSUPPORTED_CIPHER:I = 0x1


# instance fields
.field public mReason:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/place/rpc/IncompatibleDeviceException;->mReason:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/place/rpc/IncompatibleDeviceException;->mReason:I

    .line 19
    iput p2, p0, Landroid/support/place/rpc/IncompatibleDeviceException;->mReason:I

    .line 20
    return-void
.end method
