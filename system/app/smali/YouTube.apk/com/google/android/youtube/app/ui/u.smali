.class final Lcom/google/android/youtube/app/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/google/android/youtube/app/ui/s;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/s;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/u;->d:Lcom/google/android/youtube/app/ui/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const v0, 0x7f08004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->a:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f08004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->b:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f08004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/u;->c:Landroid/widget/ImageView;

    .line 289
    return-void
.end method
