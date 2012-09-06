.class public Lcom/google/android/finsky/utils/ErrorStrings;
.super Ljava/lang/Object;
.source "ErrorStrings.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "error"

    .prologue
    const v3, 0x7f0700f7

    .line 20
    instance-of v0, p1, Lcom/google/android/volley/DisplayMessageError;

    if-eqz v0, :cond_e

    .line 21
    check-cast p1, Lcom/google/android/volley/DisplayMessageError;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/volley/DisplayMessageError;->getDisplayErrorHtml()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_d
    return-object v0

    .line 22
    .restart local p1
    :cond_e
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1a

    .line 23
    const v0, 0x7f0700ff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 24
    :cond_1a
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_26

    .line 25
    const v0, 0x7f0700fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 26
    :cond_26
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_32

    .line 27
    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 28
    :cond_32
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_3b

    .line 29
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 31
    :cond_3b
    const-string v0, "No specific error message for: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method
