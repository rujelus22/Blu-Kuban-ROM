.class Lpq;
.super Ljava/lang/Object;
.source "PickAccountDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lpo;


# direct methods
.method constructor <init>(Lpo;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lpq;->a:Lpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lpq;->a:Lpo;

    invoke-static {v0}, Lpo;->a(Lpo;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 71
    iget-object v0, p0, Lpq;->a:Lpo;

    invoke-static {v0}, Lpo;->a(Lpo;)Lpr;

    move-result-object v0

    invoke-virtual {v0}, Lpr;->a()V

    .line 73
    :cond_11
    return-void
.end method
