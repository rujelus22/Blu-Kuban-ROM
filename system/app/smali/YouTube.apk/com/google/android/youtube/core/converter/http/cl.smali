.class final Lcom/google/android/youtube/core/converter/http/cl;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ci;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ci;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/cl;->a:Lcom/google/android/youtube/core/converter/http/ci;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/p;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isLightweight(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 96
    return-void
.end method
