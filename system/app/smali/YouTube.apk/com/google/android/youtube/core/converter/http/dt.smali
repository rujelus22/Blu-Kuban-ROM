.class final Lcom/google/android/youtube/core/converter/http/dt;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ds;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ds;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/dt;->a:Lcom/google/android/youtube/core/converter/http/ds;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/youtube/core/model/g;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/g;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/g;->a(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/g;

    .line 36
    return-void
.end method
