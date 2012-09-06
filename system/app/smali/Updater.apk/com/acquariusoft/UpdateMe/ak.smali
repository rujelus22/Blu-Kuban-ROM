.class final Lcom/acquariusoft/UpdateMe/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/ak;->a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.acquariusoft.UpdateMe.donate"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/ak;->a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
