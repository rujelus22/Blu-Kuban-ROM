.class final Lcom/acquariusoft/UpdateMe/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/b;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/b;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/d;->a:Lcom/acquariusoft/UpdateMe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/d;->a:Lcom/acquariusoft/UpdateMe/b;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b;->a(Lcom/acquariusoft/UpdateMe/b;)Lcom/acquariusoft/UpdateMe/a;

    move-result-object v0

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/e;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/ao;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/d;->a:Lcom/acquariusoft/UpdateMe/b;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b;->a(Lcom/acquariusoft/UpdateMe/b;)Lcom/acquariusoft/UpdateMe/a;

    move-result-object v0

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/a;->d:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->b()V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/d;->a:Lcom/acquariusoft/UpdateMe/b;

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b;->a(Lcom/acquariusoft/UpdateMe/b;)Lcom/acquariusoft/UpdateMe/a;

    move-result-object v0

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
