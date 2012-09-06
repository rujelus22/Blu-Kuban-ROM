.class public final Lcom/google/android/youtube/core/b/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Landroid/graphics/Bitmap$Config;

.field public final g:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(IIIZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 65
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/b/w;-><init>(IIIZZLandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$Config;)V

    .line 67
    return-void
.end method

.method private constructor <init>(IIIZZLandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$Config;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/google/android/youtube/core/b/w;->a:I

    .line 78
    iput p2, p0, Lcom/google/android/youtube/core/b/w;->b:I

    .line 79
    iput-boolean p4, p0, Lcom/google/android/youtube/core/b/w;->d:Z

    .line 80
    iput-boolean p5, p0, Lcom/google/android/youtube/core/b/w;->e:Z

    .line 81
    iput-object v0, p0, Lcom/google/android/youtube/core/b/w;->f:Landroid/graphics/Bitmap$Config;

    .line 82
    iput-object v0, p0, Lcom/google/android/youtube/core/b/w;->g:Landroid/graphics/Bitmap$Config;

    .line 83
    iput p3, p0, Lcom/google/android/youtube/core/b/w;->c:I

    .line 84
    return-void
.end method
