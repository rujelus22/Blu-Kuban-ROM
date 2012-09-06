.class final Lcom/google/android/youtube/core/converter/http/cp;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/core/converter/http/cq;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/converter/http/cq;-><init>(Lcom/google/android/youtube/core/converter/http/cp;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
