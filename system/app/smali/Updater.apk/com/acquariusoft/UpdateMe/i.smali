.class final Lcom/acquariusoft/UpdateMe/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/f;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/f;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/i;->a:Lcom/acquariusoft/UpdateMe/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/i;->a:Lcom/acquariusoft/UpdateMe/f;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/f;->f:Landroid/preference/PreferenceFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
