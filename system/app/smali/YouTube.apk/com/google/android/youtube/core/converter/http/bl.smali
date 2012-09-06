.class final Lcom/google/android/youtube/core/converter/http/bl;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 107
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
    .line 110
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    :try_start_4
    const-class v0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    .line 113
    invoke-static {v1}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/LiveEvent$Status;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->status(Lcom/google/android/youtube/core/model/LiveEvent$Status;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_13} :catch_14

    .line 117
    :goto_13
    return-void

    .line 114
    :catch_14
    move-exception v0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected status "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_13
.end method
