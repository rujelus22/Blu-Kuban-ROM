.class final Lcom/google/android/youtube/core/converter/http/ea;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/dv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/dv;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/ea;->a:Lcom/google/android/youtube/core/converter/http/dv;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const-class v0, Lcom/google/android/youtube/core/model/o;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/o;

    .line 73
    const-string v1, "event"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    if-nez v1, :cond_16

    .line 75
    const-string v0, "Badly formed tracking event - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 107
    :cond_15
    :goto_15
    return-void

    .line 79
    :cond_16
    :try_start_16
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    const-string v3, "start"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 81
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->b(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_29} :catch_2a

    goto :goto_15

    .line 104
    :catch_2a
    move-exception v0

    .line 105
    const-string v0, "Badly formed tracking uri - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_15

    .line 82
    :cond_31
    :try_start_31
    const-string v3, "creativeView"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->b(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 85
    :cond_3d
    const-string v3, "firstQuartile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 86
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->c(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 87
    :cond_49
    const-string v3, "midpoint"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 88
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->d(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 89
    :cond_55
    const-string v3, "thirdQuartile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 90
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->e(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 91
    :cond_61
    const-string v3, "complete"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 92
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->i(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 93
    :cond_6d
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 94
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->k(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 95
    :cond_79
    const-string v3, "resume"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 96
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->l(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 97
    :cond_85
    const-string v3, "mute"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 98
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->m(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 99
    :cond_91
    const-string v3, "fullscreen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 100
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->n(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto/16 :goto_15

    .line 101
    :cond_9e
    const-string v3, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 102
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/o;->j(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    :try_end_a9
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_a9} :catch_2a

    goto/16 :goto_15
.end method
