.class public abstract Lcom/google/android/youtube/core/converter/http/fn;
.super Lcom/google/android/youtube/core/converter/http/bc;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/youtube/core/converter/k;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/bc;-><init>()V

    .line 28
    const-string v0, "the parser can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/fn;->a:Lcom/google/android/youtube/core/converter/k;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/google/android/youtube/core/converter/c;
.end method

.method protected final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/fn;->a:Lcom/google/android/youtube/core/converter/k;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/converter/http/fn;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/converter/k;->a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/i;

    .line 42
    :try_start_c
    invoke-interface {v0}, Lcom/google/android/youtube/core/model/i;->build()Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v0

    return-object v0

    .line 43
    :catch_11
    move-exception v0

    .line 44
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
