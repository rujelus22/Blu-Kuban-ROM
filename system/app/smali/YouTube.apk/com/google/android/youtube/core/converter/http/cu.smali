.class final Lcom/google/android/youtube/core/converter/http/cu;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/cs;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/cs;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/cu;->a:Lcom/google/android/youtube/core/converter/http/cs;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/youtube/core/model/h;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->offer(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method
