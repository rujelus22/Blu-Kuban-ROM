.class final Lcom/acquariusoft/UpdateMe/PreferencePage/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/ab;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    sget-object v0, Lcom/acquariusoft/UpdateMe/ao;->n:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/ab;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentTabElement;

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

    iget v1, v0, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_35
    return-void

    :cond_36
    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->a(Lcom/acquariusoft/UpdateMe/b/j;)V

    goto :goto_35
.end method
