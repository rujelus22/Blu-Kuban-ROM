.class Lpt;
.super Ljava/lang/Object;
.source "ProgressDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lps;


# direct methods
.method constructor <init>(Lps;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lpt;->a:Lps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lpt;->a:Lps;

    invoke-static {v0}, Lps;->a(Lps;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 28
    iget-object v0, p0, Lpt;->a:Lps;

    invoke-static {v0}, Lps;->a(Lps;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 30
    :cond_11
    return-void
.end method
