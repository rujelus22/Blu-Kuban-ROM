.class public final Lcom/google/android/youtube/app/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/youtube/core/model/Video;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/app/d/a;->a:Lcom/google/android/youtube/core/model/Video;

    .line 22
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/youtube/app/d/a;->b:Landroid/graphics/Bitmap;

    .line 23
    iput p3, p0, Lcom/google/android/youtube/app/d/a;->c:I

    .line 24
    return-void
.end method
