.class final Lcom/google/android/youtube/core/converter/http/ci;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 109
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
    .line 112
    const-class v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    .line 113
    return-void
.end method
