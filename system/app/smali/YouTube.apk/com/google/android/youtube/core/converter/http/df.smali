.class final Lcom/google/android/youtube/core/converter/http/df;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v1

    .line 58
    const-class v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Page$Builder;

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->addEntry(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 60
    return-void
.end method
