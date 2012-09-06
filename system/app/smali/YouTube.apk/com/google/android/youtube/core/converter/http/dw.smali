.class final Lcom/google/android/youtube/core/converter/http/dw;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/dv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/dv;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/dw;->a:Lcom/google/android/youtube/core/converter/http/dv;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    const-class v0, Lcom/google/android/youtube/core/model/o;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/o;

    .line 160
    const-string v1, "event"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    if-nez v1, :cond_16

    .line 162
    const-string v0, "Custom tracking tag missing event attribute - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 178
    :cond_15
    :goto_15
    return-void

    .line 166
    :cond_16
    :try_start_16
    const-string v2, "skip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 167
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->f(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_29} :catch_2a

    goto :goto_15

    .line 176
    :catch_2a
    move-exception v0

    const-string v0, "Badly formed custom tracking uri - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_15

    .line 168
    :cond_31
    :try_start_31
    const-string v2, "engagedView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 169
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->h(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 170
    :cond_45
    const-string v2, "skipShown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 171
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->g(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    goto :goto_15

    .line 172
    :cond_59
    const-string v2, "videoTitleClicked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 173
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    :try_end_6c
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_6c} :catch_2a

    goto :goto_15
.end method
