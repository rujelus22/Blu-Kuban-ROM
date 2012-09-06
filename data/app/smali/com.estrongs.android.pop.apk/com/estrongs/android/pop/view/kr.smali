.class Lcom/estrongs/android/pop/view/kr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/kr;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kr;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0

    :cond_12
    invoke-static {}, Lcom/estrongs/android/pop/d/h;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kr;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kr;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_22
    iget-object v0, p0, Lcom/estrongs/android/pop/view/kr;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kr;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_10
.end method
