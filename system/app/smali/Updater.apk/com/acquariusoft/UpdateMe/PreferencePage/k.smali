.class final Lcom/acquariusoft/UpdateMe/PreferencePage/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/k;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.acquariusoft.UpdateMe.donate"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/k;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;

    invoke-virtual {v1, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
