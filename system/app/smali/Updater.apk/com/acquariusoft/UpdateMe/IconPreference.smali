.class public Lcom/acquariusoft/UpdateMe/IconPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/acquariusoft/UpdateMe/IconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/acquariusoft/UpdateMe/IconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/IconPreference;->setLayoutResource(I)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/ae;->a:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f070006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    if-nez p1, :cond_10

    :cond_6
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_10
    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/IconPreference;->notifyChanged()V

    :cond_15
    return-void
.end method
