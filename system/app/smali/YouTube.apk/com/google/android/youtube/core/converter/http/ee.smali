.class final Lcom/google/android/youtube/core/converter/http/ee;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 584
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
    .line 587
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 590
    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "yyy-MM-dd"

    aput-object v3, v1, v2

    invoke-static {p3, v1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    :try_end_17
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_9 .. :try_end_17} :catch_18

    .line 595
    :goto_17
    return-void

    .line 591
    :catch_18
    move-exception v0

    .line 593
    const-string v1, "Unable to parse <yt:firstReleased> tag"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method
