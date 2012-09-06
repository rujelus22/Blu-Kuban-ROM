.class public final Lcom/twitter/android/bc;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[I

.field private c:[Z

.field private final d:[Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Z[Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/bc;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/bc;->b:[I

    iput-object p3, p0, Lcom/twitter/android/bc;->c:[Z

    iput-object p4, p0, Lcom/twitter/android/bc;->d:[Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/bc;->b:[I

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/bc;->d:[Landroid/content/Intent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v2, 0x0

    if-nez p2, :cond_38

    iget-object v0, p0, Lcom/twitter/android/bc;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/ey;

    invoke-direct {v0, v1}, Lcom/twitter/android/ey;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_18
    iget-object v3, v0, Lcom/twitter/android/ey;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/bc;->b:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, v0, Lcom/twitter/android/ey;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/twitter/android/bc;->c:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_40

    move v0, v2

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/bc;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_38
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ey;

    move-object v1, p2

    goto :goto_18

    :cond_40
    const/16 v0, 0x8

    goto :goto_2a
.end method
