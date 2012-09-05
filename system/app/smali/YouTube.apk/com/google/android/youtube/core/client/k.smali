.class final Lcom/google/android/youtube/core/client/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/youtube/core/client/j;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/j;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/youtube/core/client/k;->d:Lcom/google/android/youtube/core/client/j;

    iput-object p2, p0, Lcom/google/android/youtube/core/client/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/core/client/k;->b:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/youtube/core/client/k;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/client/k;->d:Lcom/google/android/youtube/core/client/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/client/j;->b(Lcom/google/android/youtube/core/client/j;)Lcom/google/android/apps/analytics/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/client/k;->d:Lcom/google/android/youtube/core/client/j;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/j;->a(Lcom/google/android/youtube/core/client/j;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/client/k;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/client/k;->b:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/client/k;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    return-void
.end method
