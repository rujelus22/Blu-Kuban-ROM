.class public Lcom/twitter/android/widget/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;


# instance fields
.field private a:Z

.field private b:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RadioButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/twitter/android/widget/RadioButtonPreference;->b:Landroid/view/accessibility/AccessibilityManager;

    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f070083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/twitter/android/widget/RadioButtonPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/twitter/android/widget/RadioButtonPreference;->a:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/twitter/android/widget/RadioButtonPreference;->b:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twitter/android/widget/RadioButtonPreference;->a:Z

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_30
    return-void
.end method

.method protected onClick()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/RadioButtonPreference;->a:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/RadioButtonPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    :cond_c
    return-void
.end method
