.class final Lcom/google/android/youtube/core/converter/http/aa;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/v;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/aa;->a:Lcom/google/android/youtube/core/converter/http/v;

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
    .line 50
    const-class v0, Lcom/google/android/youtube/core/model/e;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/e;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;

    .line 51
    return-void
.end method
