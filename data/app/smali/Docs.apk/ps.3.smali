.class public Lps;
.super Ljava/lang/Object;
.source "ProgressDialogFactory.java"

# interfaces
.implements Lof;


# instance fields
.field private a:Landroid/content/DialogInterface$OnCancelListener;

.field private final b:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lpt;

    invoke-direct {v0, p0}, Lpt;-><init>(Lps;)V

    iput-object v0, p0, Lps;->b:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic a(Lps;)Landroid/content/DialogInterface$OnCancelListener;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lps;->a:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    sget v1, LcU;->progress_spinner_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-static {p1}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lps;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const-string v0, "message"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    sget v0, LcS;->message:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lps;->a:Landroid/content/DialogInterface$OnCancelListener;

    .line 35
    return-void
.end method
