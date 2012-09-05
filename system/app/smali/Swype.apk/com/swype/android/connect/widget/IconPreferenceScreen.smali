.class public Lcom/swype/android/connect/widget/IconPreferenceScreen;
.super Landroid/preference/Preference;
.source "IconPreferenceScreen.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/swype/android/connect/widget/IconPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/widget/IconPreferenceScreen;->setLayoutResource(I)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ic_connect_logo"

    const-string v2, "drawable"

    const-string v3, "com.swype.android.inputmethod"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29
    if-lez v0, :cond_29

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.swype.android.inputmethod"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/widget/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    .line 32
    :cond_29
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/swype/android/connect/widget/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 37
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/swype/android/connect/widget/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_17

    .line 39
    iget-object v1, p0, Lcom/swype/android/connect/widget/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :cond_17
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/swype/android/connect/widget/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_13

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/swype/android/connect/widget/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 50
    :cond_e
    iput-object p1, p0, Lcom/swype/android/connect/widget/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0}, Lcom/swype/android/connect/widget/IconPreferenceScreen;->notifyChanged()V

    .line 53
    :cond_13
    return-void
.end method
