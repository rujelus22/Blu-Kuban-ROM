.class public Lcom/twitter/android/widget/UserCheckBoxPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Lcom/twitter/android/api/ac;

.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->c:Z

    if-eq p1, v0, :cond_10

    iput-boolean p1, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->c:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->notifyChanged()V

    :cond_10
    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/api/ac;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->a:Lcom/twitter/android/api/ac;

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->a:Lcom/twitter/android/api/ac;

    invoke-virtual {p0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_e
    iget-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->a:Lcom/twitter/android/api/ac;

    iget-object v1, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->g:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_35
    iget-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e
.end method

.method protected onClick()V
    .registers 3

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    iget-boolean v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->c:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/UserCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_8

    :cond_15
    invoke-direct {p0, v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a(Z)V

    goto :goto_12
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f07004f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->d:Landroid/widget/ImageView;

    const v0, 0x7f070024

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->e:Landroid/widget/TextView;

    const v0, 0x7f0700bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->f:Landroid/widget/TextView;

    const v0, 0x7f070082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/twitter/android/widget/UserCheckBoxPreference;->g:Landroid/widget/CheckBox;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4

    if-eqz p2, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a(Z)V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/UserCheckBoxPreference;->a(Z)V

    goto :goto_b
.end method
