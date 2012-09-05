.class public final Lcom/google/android/youtube/core/converter/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/youtube/core/converter/a/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/a/a;->a:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/converter/a/f;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/core/converter/a/f;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/a/a;->b:Lcom/google/android/youtube/core/converter/a/f;

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/core/converter/a/a;->b:Lcom/google/android/youtube/core/converter/a/f;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/a/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/h;->g()Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/core/model/proto/i;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/proto/i;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/i;->a()Lcom/google/android/youtube/core/model/proto/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/converter/a/f;->a(Lcom/google/protobuf/j;)Lcom/google/android/youtube/googlemobile/masf/a/m;

    move-result-object v0

    return-object v0
.end method
