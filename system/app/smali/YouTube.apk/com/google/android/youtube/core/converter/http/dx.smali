.class final Lcom/google/android/youtube/core/converter/http/dx;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/dv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/dv;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/dx;->a:Lcom/google/android/youtube/core/converter/http/dv;

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
    .line 134
    const-class v0, Lcom/google/android/youtube/core/model/o;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/o;

    .line 135
    const-string v1, "id"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    :try_start_e
    const-string v2, "engagedView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 138
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->h(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    .line 154
    :cond_21
    :goto_21
    return-void

    .line 139
    :cond_22
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKIPPABLE_AD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 141
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/o;->a()Lcom/google/android/youtube/core/model/o;

    .line 143
    const-string v1, "(?i)SKIPPABLE_AD"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_21

    .line 145
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 147
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->f(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    :try_end_4f
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_4f} :catch_50

    goto :goto_21

    .line 152
    :catch_50
    move-exception v0

    const-string v0, "Badly formed custom click tracking uri - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_21
.end method
