.class final Lcom/google/android/youtube/core/converter/http/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/cp;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/cp;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/cq;->a:Lcom/google/android/youtube/core/converter/http/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/youtube/core/async/Optional$Null;->instance()Lcom/google/android/youtube/core/async/Optional;

    move-result-object v0

    return-object v0
.end method
