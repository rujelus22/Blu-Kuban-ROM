.class final Lcom/google/android/youtube/app/ui/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/bw;)V
    .registers 3
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/cb;-><init>(Lcom/google/android/youtube/app/ui/bw;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/bw;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cb;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 118
    const-string v0, "Error retrieving thumbnail "

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 118
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cb;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bw;->a(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/app/a/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/a/s;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
