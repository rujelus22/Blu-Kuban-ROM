.class Lpp;
.super Ljava/lang/Object;
.source "PickAccountDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lpo;


# direct methods
.method constructor <init>(Lpo;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lpp;->a:Lpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lpp;->a:Lpo;

    invoke-static {v0}, Lpo;->a(Lpo;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    invoke-static {p2, v0}, LafQ;->a(II)I

    .line 60
    iget-object v0, p0, Lpp;->a:Lpo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpo;->a(Lpo;Z)Z

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    iget-object v0, p0, Lpp;->a:Lpo;

    invoke-static {v0}, Lpo;->a(Lpo;)Lpr;

    move-result-object v0

    iget-object v1, p0, Lpp;->a:Lpo;

    invoke-static {v1}, Lpo;->a(Lpo;)[Landroid/accounts/Account;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lpr;->a(Landroid/accounts/Account;)V

    .line 63
    return-void
.end method
