.class final Lcom/google/android/youtube/app/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/google/android/youtube/app/ui/m;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/m;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/o;->d:Lcom/google/android/youtube/app/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const v0, 0x7f09003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/o;->a:Landroid/widget/TextView;

    .line 284
    const v0, 0x7f09003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/o;->b:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f09003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/o;->c:Landroid/widget/ImageView;

    .line 286
    return-void
.end method
