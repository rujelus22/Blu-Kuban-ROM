.class final Lcom/google/android/youtube/core/converter/http/d;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/b;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/b;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/d;->a:Lcom/google/android/youtube/core/converter/http/b;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Branding$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->offer(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/p;->poll()Ljava/lang/Object;

    .line 49
    return-void
.end method