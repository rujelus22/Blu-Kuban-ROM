.class final Lcom/google/android/youtube/core/converter/http/do;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/x;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 136
    return-void
.end method
