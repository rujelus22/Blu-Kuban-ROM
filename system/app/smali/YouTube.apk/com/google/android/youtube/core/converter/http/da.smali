.class final Lcom/google/android/youtube/core/converter/http/da;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/cv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/cv;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/da;->a:Lcom/google/android/youtube/core/converter/http/cv;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const-class v0, Lcom/google/android/youtube/core/model/p;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/p;

    .line 73
    const-string v1, "event"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    if-nez v1, :cond_16

    .line 75
    const-string v0, "Badly formed tracking event - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 102
    :cond_15
    :goto_15
    return-void

    .line 79
    :cond_16
    :try_start_16
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    const-string v3, "start"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 81
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->b(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_29} :catch_2a

    goto :goto_15

    .line 99
    :catch_2a
    move-exception v0

    .line 100
    const-string v0, "Badly formed tracking uri - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_15

    .line 82
    :cond_31
    :try_start_31
    const-string v3, "firstQuartile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 83
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->c(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    goto :goto_15

    .line 84
    :cond_3d
    const-string v3, "midpoint"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 85
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->d(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    goto :goto_15

    .line 86
    :cond_49
    const-string v3, "thirdQuartile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 87
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->e(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    goto :goto_15

    .line 88
    :cond_55
    const-string v3, "complete"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 89
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->h(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    goto :goto_15

    .line 90
    :cond_61
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 91
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->j(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    goto :goto_15

    .line 92
    :cond_6d
    const-string v3, "mute"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 93
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->k(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    goto :goto_15

    .line 94
    :cond_79
    const-string v3, "fullscreen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 95
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->l(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    goto :goto_15

    .line 96
    :cond_85
    const-string v3, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 97
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/p;->i(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    :try_end_90
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_90} :catch_2a

    goto :goto_15
.end method
