.class final Lcom/acquariusoft/UpdateMe/PreferencePage/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/s;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const/4 v0, 0x1

    return v0
.end method
