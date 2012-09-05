.class final Lcom/coremobility/app/vnotes/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eq p1, v2, :cond_1a

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eq p1, v2, :cond_1a

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-ne p1, v2, :cond_56

    :cond_1a
    iget-object v2, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iget-object v5, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    if-ne p1, v5, :cond_6e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_57

    if-nez v3, :cond_57

    if-nez v2, :cond_57

    move v0, v1

    move v2, v1

    move v3, v4

    :goto_4f
    invoke-static {v3, v2, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->a(ZZZ)I

    move-result v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->d(I)V

    :cond_56
    return v1

    :cond_57
    if-nez v4, :cond_92

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move v2, v0

    move v3, v4

    goto :goto_4f

    :cond_6e
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_81

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v3, v4

    move v6, v0

    move v0, v2

    move v2, v6

    goto :goto_4f

    :cond_81
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cv;->a:Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-ne p1, v0, :cond_92

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v3

    move v3, v4

    goto :goto_4f

    :cond_92
    move v0, v2

    move v2, v3

    move v3, v4

    goto :goto_4f
.end method
