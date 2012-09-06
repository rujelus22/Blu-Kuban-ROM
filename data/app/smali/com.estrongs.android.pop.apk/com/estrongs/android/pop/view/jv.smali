.class Lcom/estrongs/android/pop/view/jv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jv;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jv;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    const-class v2, Lcom/estrongs/android/pop/view/HideList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jv;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
