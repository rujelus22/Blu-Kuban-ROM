.class final Lcom/google/android/youtube/app/ui/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ad;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/ad;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ae;->a:Lcom/google/android/youtube/app/ui/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "eventTarget cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ae;->b:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ae;->a:Lcom/google/android/youtube/app/ui/ad;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ad;->a(Lcom/google/android/youtube/app/ui/ad;)Lcom/google/android/youtube/app/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/a/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ae;->a:Lcom/google/android/youtube/app/ui/ad;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ad;->a(Lcom/google/android/youtube/app/ui/ad;)Lcom/google/android/youtube/app/a/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/a/f;->a(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
