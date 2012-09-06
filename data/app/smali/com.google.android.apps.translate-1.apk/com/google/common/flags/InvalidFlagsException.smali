.class public Lcom/google/common/flags/InvalidFlagsException;
.super Ljava/lang/IllegalArgumentException;
.source "InvalidFlagsException.java"


# static fields
.field private static final serialVersionUID:J = 0x5db0365L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
