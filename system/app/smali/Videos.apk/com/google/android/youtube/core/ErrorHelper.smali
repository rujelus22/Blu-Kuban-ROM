.class public Lcom/google/android/youtube/core/ErrorHelper;
.super Ljava/lang/Object;
.source "ErrorHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .registers 3
    .parameter "t"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :goto_0
    if-eqz p0, :cond_13

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 116
    const/4 v0, 0x1

    .line 120
    :goto_d
    return v0

    .line 118
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 120
    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0b0019

    .line 50
    const-class v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/ErrorHelper;->causedBy(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_12
    return-object v0

    .line 53
    :cond_13
    instance-of v0, p1, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-eqz v0, :cond_1f

    .line 54
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 55
    :cond_1f
    instance-of v0, p1, Landroid/accounts/AuthenticatorException;

    if-eqz v0, :cond_2b

    .line 57
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 58
    :cond_2b
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_42

    .line 60
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 61
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 63
    :cond_3d
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 65
    :cond_42
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/ErrorHelper;->isHttpException(Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 66
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 67
    :cond_52
    instance-of v0, p1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_6e

    .line 68
    const v0, 0x7f0b001f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast p1, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {p1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 69
    :cond_6e
    instance-of v0, p1, Lcom/google/android/youtube/core/converter/InvalidFormatException;

    if-eqz v0, :cond_7a

    .line 70
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 71
    :cond_7a
    instance-of v0, p1, Lcom/google/android/youtube/core/converter/ConverterException;

    if-eqz v0, :cond_86

    .line 73
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 74
    :cond_86
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_9f

    .line 76
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 77
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 79
    :cond_99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 81
    :cond_9f
    instance-of v0, p1, Lcom/google/android/youtube/core/async/UserAuthorizer$NoLinkedYouTubeAccountException;

    if-eqz v0, :cond_ac

    .line 82
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 85
    :cond_ac
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 86
    if-nez v0, :cond_bb

    .line 87
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 89
    :cond_bb
    invoke-static {p0, v0}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12
.end method

.method public static isHttpException(Ljava/lang/Throwable;I)Z
    .registers 3
    .parameter "t"
    .parameter "statusCode"

    .prologue
    .line 36
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_e

    check-cast p0, Lorg/apache/http/client/HttpResponseException;

    .end local p0
    invoke-virtual {p0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static showToast(Landroid/content/Context;I)V
    .registers 3
    .parameter "c"
    .parameter "stringId"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "c"
    .parameter "string"

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "c"
    .parameter "t"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method
