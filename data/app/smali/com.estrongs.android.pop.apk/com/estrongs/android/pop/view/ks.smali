.class Lcom/estrongs/android/pop/view/ks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ks;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ks;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    :goto_d
    const/4 v0, 0x1

    return v0

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ks;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->c(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    goto :goto_d
.end method
