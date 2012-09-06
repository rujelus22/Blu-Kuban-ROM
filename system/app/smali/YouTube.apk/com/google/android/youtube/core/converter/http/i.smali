.class final Lcom/google/android/youtube/core/converter/http/i;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/g;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/g;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/i;->a:Lcom/google/android/youtube/core/converter/http/g;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/google/android/youtube/core/model/b;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/b;

    const-string v1, "regions"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/b;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/b;

    .line 67
    return-void
.end method
