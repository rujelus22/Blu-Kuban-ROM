.class public Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    const v1, 0x7f04003f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 29
    sget-object v0, Lcom/google/android/apps/maps/R$styleable;->da_TileButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    const v0, 0x7f100034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->b:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setText(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 38
    const v0, 0x7f100033

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->setIcon(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .registers 3
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
