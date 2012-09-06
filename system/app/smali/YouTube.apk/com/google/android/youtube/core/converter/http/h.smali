.class final Lcom/google/android/youtube/core/converter/http/h;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/g;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/g;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/h;->a:Lcom/google/android/youtube/core/converter/http/g;

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
    .line 72
    const-class v0, Lcom/google/android/youtube/core/model/b;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/b;->a(Z)Lcom/google/android/youtube/core/model/b;

    .line 73
    return-void
.end method
