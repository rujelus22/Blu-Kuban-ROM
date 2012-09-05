.class final Lcom/android/ex/carousel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/android/ex/carousel/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/ex/carousel/CarouselView;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/ex/carousel/e;->a:Lcom/android/ex/carousel/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/ex/carousel/e;->a:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselView;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 144
    iget-object v0, p0, Lcom/android/ex/carousel/e;->a:Lcom/android/ex/carousel/CarouselView;

    iget-object v0, v0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0}, Lcom/android/ex/carousel/a;->c()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
