.class final Lcom/acquariusoft/UpdateMe/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/q;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/q;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/u;->a:Lcom/acquariusoft/UpdateMe/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/u;->a:Lcom/acquariusoft/UpdateMe/q;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/q;->s:Landroid/widget/CheckBox;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/u;->a:Lcom/acquariusoft/UpdateMe/q;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/q;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :cond_f
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/u;->a:Lcom/acquariusoft/UpdateMe/q;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/q;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v2, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    invoke-static {v1, v2, v0}, Lcom/acquariusoft/UpdateMe/ao;->a([Ljava/lang/String;Landroid/content/Context;Z)Z
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1e
.end method
