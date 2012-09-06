.class final Lcom/twitter/android/bk;
.super Lcom/twitter/android/ey;


# instance fields
.field public final a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/ey;-><init>(Landroid/view/View;)V

    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/bk;->a:Landroid/widget/ImageView;

    return-void
.end method
