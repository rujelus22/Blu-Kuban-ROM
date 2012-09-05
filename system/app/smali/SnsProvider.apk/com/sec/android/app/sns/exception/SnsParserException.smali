.class public Lcom/sec/android/app/sns/exception/SnsParserException;
.super Lcom/sec/android/app/sns/exception/SnsException;
.source "SnsParserException.java"


# static fields
.field private static final serialVersionUID:J = -0x55d83df430421553L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sec/android/app/sns/exception/SnsException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/exception/SnsException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sns/exception/SnsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/exception/SnsException;-><init>(Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method
