.class final Lcom/google/android/youtube/core/converter/http/j;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/g;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/g;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/j;->a:Lcom/google/android/youtube/core/converter/http/g;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/core/model/b;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/b;-><init>()V

    const-string v1, "term"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/b;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/b;

    move-result-object v0

    const-string v1, "label"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/b;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const-class v0, Lcom/google/android/youtube/core/model/b;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/b;->a()Lcom/google/android/youtube/core/model/Category;

    move-result-object v1

    .line 59
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method
