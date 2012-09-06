.class final Lcom/google/android/youtube/app/ui/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dc;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/dc;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dd;->a:Lcom/google/android/youtube/app/ui/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/dc;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/dd;-><init>(Lcom/google/android/youtube/app/ui/dc;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    const-string v0, "Error retrieving thumbnail "

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dd;->a:Lcom/google/android/youtube/app/ui/dc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dc;->a(Lcom/google/android/youtube/app/ui/dc;)Lcom/google/android/youtube/app/adapter/bm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/adapter/bm;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
