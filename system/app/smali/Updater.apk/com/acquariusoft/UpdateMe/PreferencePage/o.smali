.class final Lcom/acquariusoft/UpdateMe/PreferencePage/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/o;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->w:Lcom/acquariusoft/UpdateMe/b/b/c;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/c;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/b/b;

    iget-boolean v1, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->f:Z

    if-eqz v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "su\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->g:Ljava/lang/String;

    :cond_29
    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/b/b;->g:Ljava/lang/String;

    const-string v1, "\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/ao;->a([Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0
.end method
