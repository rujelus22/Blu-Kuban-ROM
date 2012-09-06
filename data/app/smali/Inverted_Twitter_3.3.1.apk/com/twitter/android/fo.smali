.class final Lcom/twitter/android/fo;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f07006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/fo;->a:Landroid/widget/TextView;

    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/fo;->b:Landroid/widget/TextView;

    return-void
.end method
