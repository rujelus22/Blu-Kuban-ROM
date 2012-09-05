.class final Lcom/google/android/youtube/app/ui/s;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/q;

.field private final b:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/google/android/youtube/app/ui/t;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/q;Ljava/lang/String;ZLcom/google/android/youtube/app/ui/t;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/s;->a:Lcom/google/android/youtube/app/ui/q;

    .line 90
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/q;->c(Lcom/google/android/youtube/app/ui/q;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    .line 91
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/s;->b:Ljava/lang/String;

    .line 92
    iput-boolean p3, p0, Lcom/google/android/youtube/app/ui/s;->d:Z

    .line 93
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/s;->e:Lcom/google/android/youtube/app/ui/t;

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/s;->a:Lcom/google/android/youtube/app/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/q;->d(Lcom/google/android/youtube/app/ui/q;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/s;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/s;->d:Z

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/s;->a:Lcom/google/android/youtube/app/ui/q;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/q;->a(Lcom/google/android/youtube/app/ui/q;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 99
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 81
    const-string v0, "Error creating playlist"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/s;->c:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 81
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/s;->e:Lcom/google/android/youtube/app/ui/t;

    invoke-interface {v0, p2}, Lcom/google/android/youtube/app/ui/t;->a(Lcom/google/android/youtube/core/model/Playlist;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/s;->a:Lcom/google/android/youtube/app/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/q;->a(Lcom/google/android/youtube/app/ui/q;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a018f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    return-void
.end method
