.class final Lcom/google/android/youtube/app/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/google/android/youtube/app/a/o;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/a/o;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/youtube/app/a/p;->d:Lcom/google/android/youtube/app/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const v0, 0x7f09007e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/p;->b:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f09007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/p;->a:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f09007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/p;->c:Landroid/widget/ImageView;

    .line 106
    return-void
.end method
