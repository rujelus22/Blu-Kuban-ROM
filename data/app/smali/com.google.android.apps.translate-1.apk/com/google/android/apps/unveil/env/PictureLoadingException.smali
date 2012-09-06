.class public final Lcom/google/android/apps/unveil/env/PictureLoadingException;
.super Ljava/lang/Exception;
.source "PictureLoadingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method
