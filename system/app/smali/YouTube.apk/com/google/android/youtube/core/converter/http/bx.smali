.class final Lcom/google/android/youtube/core/converter/http/bx;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/bu;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/bu;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/bx;->a:Lcom/google/android/youtube/core/converter/http/bu;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    const-class v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 78
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 79
    return-void
.end method
