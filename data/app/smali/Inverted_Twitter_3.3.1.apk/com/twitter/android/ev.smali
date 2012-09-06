.class final Lcom/twitter/android/ev;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:[Lcom/twitter/android/ew;

.field private final b:I


# direct methods
.method constructor <init>([Lcom/twitter/android/ew;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/ev;-><init>([Lcom/twitter/android/ew;I)V

    return-void
.end method

.method constructor <init>([Lcom/twitter/android/ew;I)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/ev;->a:[Lcom/twitter/android/ew;

    iput p2, p0, Lcom/twitter/android/ev;->b:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/ev;->a:[Lcom/twitter/android/ew;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ev;->a:[Lcom/twitter/android/ew;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/twitter/android/ew;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    if-nez p2, :cond_45

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030043

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/ey;

    invoke-direct {v0, v1}, Lcom/twitter/android/ey;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1a
    iget-object v2, p0, Lcom/twitter/android/ev;->a:[Lcom/twitter/android/ew;

    aget-object v2, v2, p1

    iget-object v3, v0, Lcom/twitter/android/ey;->b:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/twitter/android/ew;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v2, Lcom/twitter/android/ew;->b:I

    if-eqz v3, :cond_4d

    iget-object v3, v0, Lcom/twitter/android/ey;->d:Landroid/widget/ImageView;

    iget v2, v2, Lcom/twitter/android/ew;->b:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lcom/twitter/android/ey;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_35
    iget v0, p0, Lcom/twitter/android/ev;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_55

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    iget-object v2, p0, Lcom/twitter/android/ev;->a:[Lcom/twitter/android/ew;

    array-length v2, v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->b(II)V

    :goto_44
    return-object v1

    :cond_45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ey;

    move-object v1, p2

    goto :goto_1a

    :cond_4d
    iget-object v0, v0, Lcom/twitter/android/ey;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_35

    :cond_55
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/ev;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    goto :goto_44
.end method
