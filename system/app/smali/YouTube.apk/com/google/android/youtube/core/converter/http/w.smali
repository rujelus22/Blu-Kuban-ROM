.class final Lcom/google/android/youtube/core/converter/http/w;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/v;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/w;->a:Lcom/google/android/youtube/core/converter/http/v;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const-class v0, Lcom/google/android/youtube/core/model/e;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/e;

    .line 83
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/e;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;

    .line 84
    const-string v1, "display"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/e;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;

    .line 88
    :cond_1a
    return-void
.end method
