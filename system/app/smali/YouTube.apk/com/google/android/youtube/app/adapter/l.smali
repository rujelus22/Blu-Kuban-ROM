.class public abstract Lcom/google/android/youtube/app/adapter/l;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 33
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/l;->a:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/google/android/youtube/app/adapter/l;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/youtube/app/adapter/m;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/l;->a:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/youtube/app/adapter/l;->b:I

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/youtube/app/adapter/m;-><init>(Lcom/google/android/youtube/app/adapter/l;Landroid/content/Context;Landroid/view/View;I)V

    .line 49
    return-object v0
.end method

.method protected a(Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
.end method
