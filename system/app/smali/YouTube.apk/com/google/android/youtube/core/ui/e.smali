.class public abstract Lcom/google/android/youtube/core/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field protected final c:Lcom/google/android/youtube/core/d;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/d;)V
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "errorHelper cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/e;->c:Lcom/google/android/youtube/core/d;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/e;->c:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public e_()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method
