.class Lcom/google/common/flags/MalformedFlagDescriptionException;
.super Ljava/lang/RuntimeException;
.source "MalformedFlagDescriptionException.java"


# static fields
.field private static final serialVersionUID:J = 0x2c1ca16d72L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "reason"
    .parameter "cause"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method
