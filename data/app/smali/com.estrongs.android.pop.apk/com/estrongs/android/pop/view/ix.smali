.class Lcom/estrongs/android/pop/view/ix;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ix;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ix;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const-class v2, Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "status"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "checkurl"

    const-string v2, "http://update.estrongs.com/up?id=1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ix;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    return v3
.end method
