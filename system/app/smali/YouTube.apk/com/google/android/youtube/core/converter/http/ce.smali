.class final Lcom/google/android/youtube/core/converter/http/ce;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/cc;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/ce;->a:Lcom/google/android/youtube/core/converter/http/cc;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/youtube/core/model/n;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/n;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->offer(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/p;->poll()Ljava/lang/Object;

    .line 46
    return-void
.end method