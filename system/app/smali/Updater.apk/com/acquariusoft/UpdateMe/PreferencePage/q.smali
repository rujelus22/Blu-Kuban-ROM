.class final Lcom/acquariusoft/UpdateMe/PreferencePage/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/q;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method
