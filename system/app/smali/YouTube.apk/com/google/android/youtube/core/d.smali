.class public final Lcom/google/android/youtube/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/core/utils/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/k;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    .line 37
    const-string v0, "networkStatus cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/d;->b:Lcom/google/android/youtube/core/utils/k;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 146
    return-void
.end method

.method public static a(Ljava/lang/Throwable;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
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

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    instance-of v0, p0, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/android/youtube/core/async/GDataResponseException;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f0b0008

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    .line 74
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

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_21
    return-object v0

    .line 74
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_9

    :cond_27
    move v0, v3

    goto :goto_16

    .line 77
    :cond_29
    instance-of v0, v1, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-eqz v0, :cond_37

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 79
    :cond_37
    instance-of v0, v1, Landroid/accounts/AuthenticatorException;

    if-eqz v0, :cond_45

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 82
    :cond_45
    instance-of v0, v1, Ljava/net/SocketException;

    if-eqz v0, :cond_62

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->b:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->a()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 87
    :cond_5b
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 89
    :cond_62
    instance-of v0, v1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_b8

    .line 90
    instance-of v0, v1, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_8d

    move-object v0, v1

    .line 91
    check-cast v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    .line 94
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsDisabledInMaintenanceModeError()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 96
    :cond_7d
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsYouTubeSignupRequiredError()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 101
    :cond_8d
    check-cast v1, Lorg/apache/http/client/HttpResponseException;

    .line 102
    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v4, 0x193

    if-ne v0, v4, :cond_a1

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 105
    :cond_a1
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v4, 0x7f0b000e

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 106
    :cond_b8
    instance-of v0, v1, Lcom/google/android/youtube/core/converter/InvalidFormatException;

    if-eqz v0, :cond_c7

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 108
    :cond_c7
    instance-of v0, v1, Lcom/google/android/youtube/core/converter/ConverterException;

    if-eqz v0, :cond_d6

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 111
    :cond_d6
    instance-of v0, v1, Ljava/io/IOException;

    if-eqz v0, :cond_f5

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->b:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->a()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 116
    :cond_ed
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 120
    :cond_f5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 121
    if-nez v1, :cond_6

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/d;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/d;->a(Ljava/lang/String;)V

    .line 132
    return-void
.end method
