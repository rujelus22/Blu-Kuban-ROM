.class LpC;
.super Ljava/lang/Object;
.source "RegisteredDialogImpl.java"

# interfaces
.implements LpB;


# instance fields
.field private final a:I

.field private final a:Landroid/app/Activity;

.field private final a:LpD;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILpD;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "null activity"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, LpC;->a:Landroid/app/Activity;

    .line 45
    iput p2, p0, LpC;->a:I

    .line 46
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpD;

    iput-object v0, p0, LpC;->a:LpD;

    .line 47
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LpC;->a(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, LpC;->a:LpD;

    invoke-interface {v0, p1}, LpD;->a(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, LpC;->a:Landroid/app/Activity;

    iget v1, p0, LpC;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 58
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, LpC;->a:LpD;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LpD;->a(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, LpC;->a:Landroid/app/Activity;

    iget v1, p0, LpC;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 64
    return-void
.end method
