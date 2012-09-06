.class Lcom/estrongs/android/pop/view/ji;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ji;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ji;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->ab()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_25

    :cond_1c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ji;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    :goto_24
    return v0

    :cond_25
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ji;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_24

    :cond_2d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ji;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const/16 v2, 0x70

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    goto :goto_24
.end method
