.class final Lcom/acquariusoft/UpdateMe/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/UpdateMeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/aj;->a:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const-string v0, "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=TEF2L8CYU9M84"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
