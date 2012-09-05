.class public final Lcom/google/android/youtube/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/core/utils/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/i;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    .line 33
    const-string v0, "networkStatus cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/i;

    iput-object v0, p0, Lcom/google/android/youtube/core/e;->b:Lcom/google/android/youtube/core/utils/i;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 124
    return-void
.end method

.method public static a(Ljava/lang/Throwable;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_e

    check-cast p0, Lorg/apache/http/client/HttpResponseException;

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


# virtual methods
.method public final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f0a0004

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    .line 55
    :cond_6
    const-class v4, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v0, v2

    :goto_16
    if-eqz v0, :cond_29

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_21
    return-object v0

    .line 55
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_9

    :cond_27
    move v0, v3

    goto :goto_16

    .line 58
    :cond_29
    instance-of v0, v1, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-eqz v0, :cond_37

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 60
    :cond_37
    instance-of v0, v1, Landroid/accounts/AuthenticatorException;

    if-eqz v0, :cond_45

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 63
    :cond_45
    instance-of v0, v1, Ljava/net/SocketException;

    if-eqz v0, :cond_62

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->b:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->a()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 68
    :cond_5b
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 70
    :cond_62
    instance-of v0, v1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_a8

    .line 71
    instance-of v0, v1, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_7d

    move-object v0, v1

    .line 72
    check-cast v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsYouTubeSignupRequiredError()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 79
    :cond_7d
    check-cast v1, Lorg/apache/http/client/HttpResponseException;

    .line 80
    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v4, 0x193

    if-ne v0, v4, :cond_91

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 83
    :cond_91
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v4, 0x7f0a000a

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 84
    :cond_a8
    instance-of v0, v1, Lcom/google/android/youtube/core/converter/InvalidFormatException;

    if-eqz v0, :cond_b7

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 86
    :cond_b7
    instance-of v0, v1, Lcom/google/android/youtube/core/converter/ConverterException;

    if-eqz v0, :cond_c6

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 89
    :cond_c6
    instance-of v0, v1, Ljava/io/IOException;

    if-eqz v0, :cond_e5

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->b:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->a()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 94
    :cond_dd
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 98
    :cond_e5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 99
    if-nez v1, :cond_6

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/e;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 3
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/e;->a(Ljava/lang/String;)V

    .line 110
    return-void
.end method
