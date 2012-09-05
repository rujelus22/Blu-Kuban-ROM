.class Lax/W;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/q;


# instance fields
.field final synthetic a:Lax/S;


# direct methods
.method constructor <init>(Lax/S;)V
    .registers 2

    iput-object p1, p0, Lax/W;->a:Lax/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .registers 5

    invoke-virtual {p1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x1f1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v1

    new-instance v2, Lax/X;

    invoke-direct {v2, p0}, Lax/X;-><init>(Lax/W;)V

    invoke-virtual {v1, v0, v2}, Law/g;->a(Landroid/app/ActionBar;Law/f;)V

    return-void
.end method
