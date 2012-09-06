.class final Lcom/google/android/youtube/app/ui/y;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/w;

.field private final b:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/google/android/youtube/app/ui/z;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/w;Ljava/lang/String;ZLcom/google/android/youtube/app/ui/z;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/y;->a:Lcom/google/android/youtube/app/ui/w;

    .line 90
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/w;->c(Lcom/google/android/youtube/app/ui/w;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 91
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/y;->b:Ljava/lang/String;

    .line 92
    iput-boolean p3, p0, Lcom/google/android/youtube/app/ui/y;->d:Z

    .line 93
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/y;->e:Lcom/google/android/youtube/app/ui/z;

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/y;->a:Lcom/google/android/youtube/app/ui/w;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/w;->d(Lcom/google/android/youtube/app/ui/w;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/y;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/y;->d:Z

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/y;->a:Lcom/google/android/youtube/app/ui/w;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/w;->a(Lcom/google/android/youtube/app/ui/w;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

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

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/y;->c:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 81
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/y;->e:Lcom/google/android/youtube/app/ui/z;

    invoke-interface {v0, p2}, Lcom/google/android/youtube/app/ui/z;->a(Lcom/google/android/youtube/core/model/Playlist;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/y;->a:Lcom/google/android/youtube/app/ui/w;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/w;->a(Lcom/google/android/youtube/app/ui/w;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01eb

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    return-void
.end method
