.class final Lcom/google/android/youtube/core/converter/http/cy;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/cx;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/cx;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/cy;->a:Lcom/google/android/youtube/core/converter/http/cx;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/google/android/youtube/core/model/m;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/m;

    .line 52
    const-string v1, "start"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/converter/http/cx;->a(Ljava/lang/String;)I

    move-result v2

    .line 53
    const-string v1, "dur"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/converter/http/cx;->a(Ljava/lang/String;)I

    move-result v1

    .line 54
    if-nez v1, :cond_20

    .line 55
    const/16 v1, 0x1b58

    .line 57
    :cond_20
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/youtube/core/model/m;->a(Ljava/lang/String;II)Lcom/google/android/youtube/core/model/m;

    .line 59
    return-void
.end method
