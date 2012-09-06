.class final Lcom/google/android/youtube/app/remote/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/athome/app/common/k;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/e;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/e;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/i;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/i;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/e;->b(Lcom/google/android/youtube/app/remote/e;)Lcom/google/android/youtube/app/remote/m;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/i;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/e;->b(Lcom/google/android/youtube/app/remote/e;)Lcom/google/android/youtube/app/remote/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/remote/m;->a(Ljava/lang/String;)V

    .line 120
    :cond_11
    return-void
.end method
