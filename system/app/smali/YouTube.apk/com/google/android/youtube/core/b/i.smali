.class final Lcom/google/android/youtube/core/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/youtube/core/b/h;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/b/h;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/youtube/core/b/i;->d:Lcom/google/android/youtube/core/b/h;

    iput-object p2, p0, Lcom/google/android/youtube/core/b/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/core/b/i;->b:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/youtube/core/b/i;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/b/i;->d:Lcom/google/android/youtube/core/b/h;

    invoke-static {v0}, Lcom/google/android/youtube/core/b/h;->b(Lcom/google/android/youtube/core/b/h;)Lcom/google/android/apps/analytics/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/b/i;->d:Lcom/google/android/youtube/core/b/h;

    invoke-static {v1}, Lcom/google/android/youtube/core/b/h;->a(Lcom/google/android/youtube/core/b/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/b/i;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/b/i;->b:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/b/i;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    return-void
.end method
