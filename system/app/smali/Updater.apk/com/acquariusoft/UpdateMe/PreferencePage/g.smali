.class final Lcom/acquariusoft/UpdateMe/PreferencePage/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/g;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lcom/acquariusoft/UpdateMe/a/a;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/g;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;

    invoke-direct {v0, v1}, Lcom/acquariusoft/UpdateMe/a/a;-><init>(Lcom/acquariusoft/UpdateMe/a/c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v3
.end method
