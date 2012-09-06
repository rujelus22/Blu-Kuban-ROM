.class public Lcom/google/android/apps/googlevoice/core/TranscriptException;
.super Ljava/lang/Exception;
.source "TranscriptException.java"


# static fields
.field private static final serialVersionUID:J = -0x7bcef227118ed980L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method
