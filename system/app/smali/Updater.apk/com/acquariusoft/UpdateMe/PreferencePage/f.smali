.class final Lcom/acquariusoft/UpdateMe/PreferencePage/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/f;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/j;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/j;-><init>()V

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->d:I

    iput v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->g:I

    iput v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->k:I

    iput v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->j:I

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->i:Ljava/lang/String;

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->h:Ljava/lang/String;

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->o:Lcom/acquariusoft/UpdateMe/b/c;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/b/c;->j:I

    iput v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    iget v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_48

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_46
    const/4 v0, 0x0

    return v0

    :cond_48
    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->a(Lcom/acquariusoft/UpdateMe/b/j;)V

    goto :goto_46
.end method
