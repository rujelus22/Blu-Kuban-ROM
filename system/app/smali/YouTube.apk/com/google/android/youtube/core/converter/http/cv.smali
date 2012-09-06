.class final Lcom/google/android/youtube/core/converter/http/cv;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const-class v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 110
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Subscription$Builder;->username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 111
    const-string v1, "display"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 115
    :cond_1a
    return-void
.end method
