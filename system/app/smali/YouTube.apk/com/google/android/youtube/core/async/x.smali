.class public final Lcom/google/android/youtube/core/async/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/a;

.field private final b:Lcom/google/android/youtube/core/converter/a;

.field private final c:Lcom/google/android/youtube/core/converter/b;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/b/a;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "masf may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/x;->a:Lcom/google/android/youtube/core/b/a;

    .line 46
    const-string v0, "requestConverter may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/x;->b:Lcom/google/android/youtube/core/converter/a;

    .line 48
    const-string v0, "responseConverter may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/b;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/x;->c:Lcom/google/android/youtube/core/converter/b;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/x;->d:Z

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 54
    const-string v0, "request may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "callback may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :try_start_a
    iget-object v0, p0, Lcom/google/android/youtube/core/async/x;->b:Lcom/google/android/youtube/core/converter/a;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/converter/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/a/m;

    .line 58
    new-instance v1, Lcom/google/android/youtube/core/async/y;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/x;->c:Lcom/google/android/youtube/core/converter/b;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/youtube/core/async/y;-><init>(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;Lcom/google/android/youtube/core/converter/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/a/m;->a(Lcom/google/android/youtube/googlemobile/masf/a/n;)V

    .line 59
    iget-object v1, p0, Lcom/google/android/youtube/core/async/x;->a:Lcom/google/android/youtube/core/b/a;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/async/x;->d:Z

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/b/a;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Z)V
    :try_end_23
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_a .. :try_end_23} :catch_24

    .line 63
    :goto_23
    return-void

    .line 60
    :catch_24
    move-exception v0

    .line 61
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_23
.end method
