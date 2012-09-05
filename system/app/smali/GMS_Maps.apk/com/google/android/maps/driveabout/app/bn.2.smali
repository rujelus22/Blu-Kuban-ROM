.class Lcom/google/android/maps/driveabout/app/bn;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bk;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/bk;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bk;

    const v0, 0x1090005

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bn;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1a

    const v0, 0x7f0f00d5

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/bk;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/bx;Lcom/google/android/maps/driveabout/app/bl;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bn;-><init>(Lcom/google/android/maps/driveabout/app/bk;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/bx;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const v3, 0x1020014

    if-eqz p2, :cond_52

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bn;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bn;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bx;->b()I

    move-result v2

    const v0, 0x7f0f00af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v2, :cond_6a

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_45
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_72

    const v0, 0x7f0200aa

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    :goto_51
    return-object p2

    :cond_52
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    goto :goto_c

    :cond_6a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_45

    :cond_72
    const v0, 0x7f0200f5

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_51
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bn;->a:Lcom/google/android/maps/driveabout/app/bk;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bx;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/bk;->a(Lcom/google/android/maps/driveabout/app/bk;Lcom/google/android/maps/driveabout/app/bx;)V

    return-void
.end method
