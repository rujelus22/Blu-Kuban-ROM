.class final Lcom/google/android/youtube/core/converter/http/dk;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/x;->poll()Ljava/lang/Object;

    .line 74
    return-void
.end method
