.class final Lcom/google/android/youtube/core/player/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/TvAdOverlay;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/TvAdOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/youtube/core/player/au;->a:Lcom/google/android/youtube/core/player/TvAdOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/TvAdOverlay;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/au;-><init>(Lcom/google/android/youtube/core/player/TvAdOverlay;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 114
    const-string v0, "Failed to fetch video thumbnail"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 114
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/au;->a:Lcom/google/android/youtube/core/player/TvAdOverlay;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/TvAdOverlay;->a(Lcom/google/android/youtube/core/player/TvAdOverlay;Landroid/graphics/Bitmap;)V

    return-void
.end method
