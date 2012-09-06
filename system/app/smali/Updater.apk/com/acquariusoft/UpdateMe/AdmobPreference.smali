.class public Lcom/acquariusoft/UpdateMe/AdmobPreference;
.super Landroid/preference/Preference;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/acquariusoft/UpdateMe/AdmobPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/acquariusoft/UpdateMe/AdmobPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->b:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/AdmobPreference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    new-instance v1, Lcom/google/ads/AdView;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    const-string v3, "a14fa0d82db46b2"

    invoke-direct {v1, v0, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->c:Lcom/google/ads/AdView;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->c:Lcom/google/ads/AdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setHorizontalGravity(I)V

    const/high16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->c:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/AdmobPreference;->c:Lcom/google/ads/AdView;

    new-instance v1, Lcom/google/ads/d;

    invoke-direct {v1}, Lcom/google/ads/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    return-void
.end method
