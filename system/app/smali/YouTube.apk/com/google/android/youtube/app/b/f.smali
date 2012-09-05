.class final Lcom/google/android/youtube/app/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/b/d;

.field private final b:Lcom/google/android/youtube/core/model/Video;

.field private final c:Lcom/google/android/youtube/app/b/b;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/android/youtube/app/b/f;->a:Lcom/google/android/youtube/app/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/google/android/youtube/app/b/f;->b:Lcom/google/android/youtube/core/model/Video;

    .line 353
    iput-object p3, p0, Lcom/google/android/youtube/app/b/f;->c:Lcom/google/android/youtube/app/b/b;

    .line 354
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/youtube/app/b/f;->a:Lcom/google/android/youtube/app/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    move-object v3, p1

    .line 346
    check-cast v3, Landroid/net/Uri;

    check-cast p2, Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/youtube/app/b/f;->a:Lcom/google/android/youtube/app/b/d;

    iget-object v1, p0, Lcom/google/android/youtube/app/b/f;->b:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/app/b/f;->c:Lcom/google/android/youtube/app/b/b;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;Landroid/net/Uri;J)V

    iget-object v0, p0, Lcom/google/android/youtube/app/b/f;->a:Lcom/google/android/youtube/app/b/d;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/d;->a(Lcom/google/android/youtube/app/b/d;)V

    return-void
.end method
