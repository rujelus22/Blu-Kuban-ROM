.class public Lcom/google/android/finsky/api/DfeUtils;
.super Ljava/lang/Object;
.source "DfeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .registers 2
    .parameter "error"

    .prologue
    .line 15
    instance-of v0, p0, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_7

    .line 16
    const-string v0, "SERVER"

    .line 26
    :goto_6
    return-object v0

    .line 17
    :cond_7
    instance-of v0, p0, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_e

    .line 18
    const-string v0, "AUTH"

    goto :goto_6

    .line 19
    :cond_e
    instance-of v0, p0, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_15

    .line 20
    const-string v0, "NETWORK"

    goto :goto_6

    .line 21
    :cond_15
    instance-of v0, p0, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_1c

    .line 22
    const-string v0, "TIMEOUT"

    goto :goto_6

    .line 23
    :cond_1c
    instance-of v0, p0, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_23

    .line 24
    const-string v0, "SERVER"

    goto :goto_6

    .line 26
    :cond_23
    const-string v0, "SERVER"

    goto :goto_6
.end method
