.class final Lcom/acquariusoft/UpdateMe/PreferencePage/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/af;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/af;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->a:Landroid/os/Bundle;

    const-string v2, "pos"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/i;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    sget v1, Lcom/acquariusoft/UpdateMe/an;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/j;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/j;->o:Ljava/util/List;

    sput-object v0, Lcom/acquariusoft/UpdateMe/an;->f:Ljava/util/List;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/af;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;

    invoke-virtual {v1}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/af;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;

    invoke-virtual {v1, v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
