.class final Lcom/google/android/youtube/core/converter/http/ai;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ag;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/ai;->a:Lcom/google/android/youtube/core/converter/http/ag;

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
    .line 93
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Event$Builder;->target(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 94
    return-void
.end method
