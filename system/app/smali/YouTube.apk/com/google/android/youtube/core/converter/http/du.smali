.class final Lcom/google/android/youtube/core/converter/http/du;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ds;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ds;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/du;->a:Lcom/google/android/youtube/core/converter/http/ds;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/youtube/core/model/g;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method
