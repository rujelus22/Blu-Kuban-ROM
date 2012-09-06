.class public Lcom/twitter/android/widget/CheckBoxListPreference;
.super Landroid/preference/ListPreference;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/twitter/android/ec;->CheckBoxListPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/CheckBoxListPreference;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CheckBoxListPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twitter/android/widget/CheckBoxListPreference;->a:Ljava/lang/String;

    if-eqz v0, :cond_20

    const v0, 0x7f070082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/twitter/android/widget/CheckBoxListPreference;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/widget/CheckBoxListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_20
    return-void

    :cond_21
    const/4 v1, 0x0

    goto :goto_1d
.end method
