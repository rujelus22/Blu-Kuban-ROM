.class public abstract Lcom/google/common/flags/FlagException;
.super Ljava/lang/Exception;
.source "FlagException.java"


# static fields
.field private static final serialVersionUID:J = 0x5db0365L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
