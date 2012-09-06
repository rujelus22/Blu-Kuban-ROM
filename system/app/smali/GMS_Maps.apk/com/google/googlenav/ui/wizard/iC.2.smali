.class Lcom/google/googlenav/ui/wizard/iC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/o;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/R;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/iB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iB;Lcom/google/googlenav/android/R;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iC;->b:Lcom/google/googlenav/ui/wizard/iB;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iC;->a:Lcom/google/googlenav/android/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iC;->b:Lcom/google/googlenav/ui/wizard/iB;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/iB;->b(Lcom/google/googlenav/ui/wizard/iB;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    const-string v1, "inviteType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iC;->a:Lcom/google/googlenav/android/R;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 114
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/iC;->a(I)V

    .line 89
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/iC;->a(I)V

    .line 107
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iC;->b:Lcom/google/googlenav/ui/wizard/iB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iB;->a()V

    .line 102
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iC;->b:Lcom/google/googlenav/ui/wizard/iB;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iB;->a(Lcom/google/googlenav/ui/wizard/iB;)Lcom/google/googlenav/ui/wizard/iF;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iC;->b:Lcom/google/googlenav/ui/wizard/iB;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iB;->a(Lcom/google/googlenav/ui/wizard/iB;)Lcom/google/googlenav/ui/wizard/iF;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/iF;->b()V

    .line 96
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iC;->b:Lcom/google/googlenav/ui/wizard/iB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iB;->a()V

    .line 97
    return-void
.end method
