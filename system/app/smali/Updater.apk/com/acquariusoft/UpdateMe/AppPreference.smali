.class public Lcom/acquariusoft/UpdateMe/AppPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/acquariusoft/UpdateMe/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/acquariusoft/UpdateMe/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->a:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->b:I

    iput v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->c:I

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/AppPreference;->setLayoutResource(I)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/ae;->a:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const v1, 0x7f02001d

    iget v0, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->b:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->b:I

    if-eq v1, v0, :cond_10

    :cond_b
    iput v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->b:I

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/AppPreference;->notifyChanged()V

    :cond_10
    return-void
.end method

.method public final a(I)V
    .registers 3

    iget v0, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->c:I

    if-nez v0, :cond_6

    if-nez p1, :cond_c

    :cond_6
    if-eqz p1, :cond_11

    iget v0, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->c:I

    if-eq p1, v0, :cond_11

    :cond_c
    iput p1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->c:I

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/AppPreference;->notifyChanged()V

    :cond_11
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 5

    const/16 v2, 0x8

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f070006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    :goto_19
    const v0, 0x7f070007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    iget v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->b:I

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2d
    :goto_2d
    const v0, 0x7f070008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_41

    iget v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->c:I

    if-eqz v1, :cond_4a

    iget v1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    :cond_46
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    :cond_4a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    if-nez p1, :cond_10

    :cond_6
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_10
    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/AppPreference;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/AppPreference;->notifyChanged()V

    :cond_15
    return-void
.end method
