.class final Lcom/google/android/youtube/core/converter/http/el;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 480
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 481
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 482
    return-void
.end method
