.class final Lcom/google/android/youtube/core/converter/http/dj;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/x;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 84
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 85
    return-void
.end method
