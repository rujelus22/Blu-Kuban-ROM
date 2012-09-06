.class final Lcom/google/android/youtube/app/adapter/m;
.super Lcom/google/android/youtube/app/adapter/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/l;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/adapter/l;Landroid/content/Context;Landroid/view/View;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/m;->a:Lcom/google/android/youtube/app/adapter/l;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/youtube/app/adapter/i;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/m;->a:Lcom/google/android/youtube/app/adapter/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/app/adapter/l;->a(Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 47
    return-void
.end method

.method protected final a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/m;->a:Lcom/google/android/youtube/app/adapter/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/app/adapter/l;->a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V

    .line 43
    return-void
.end method
