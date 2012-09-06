.class final Lcom/acquariusoft/UpdateMe/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/q;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/q;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/v;->a:Lcom/acquariusoft/UpdateMe/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/v;->a:Lcom/acquariusoft/UpdateMe/q;

    iget-boolean v0, v0, Lcom/acquariusoft/UpdateMe/q;->j:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/v;->a:Lcom/acquariusoft/UpdateMe/q;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/v;->a:Lcom/acquariusoft/UpdateMe/q;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-virtual {v1, v0}, Lcom/acquariusoft/UpdateMe/UpdateMeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2e
    return-void

    :cond_2f
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_2e
.end method
