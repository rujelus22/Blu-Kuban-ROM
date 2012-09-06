.class final Lcom/google/android/youtube/app/adapter/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/google/android/youtube/app/adapter/bg;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/bg;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/bh;->d:Lcom/google/android/youtube/app/adapter/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const v0, 0x7f0800ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bh;->b:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0800eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bh;->a:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0800ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bh;->c:Landroid/widget/ImageView;

    .line 112
    return-void
.end method
