.class Leu/chainfire/supersu/MainActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$1;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$1;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$1$1;->a:Leu/chainfire/supersu/MainActivity$1;

    iput-object p2, p0, Leu/chainfire/supersu/MainActivity$1$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$1$1;)Leu/chainfire/supersu/MainActivity$1;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1$1;->a:Leu/chainfire/supersu/MainActivity$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1$1;->a:Leu/chainfire/supersu/MainActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$1;->b(Leu/chainfire/supersu/MainActivity$1;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1$1;->a:Leu/chainfire/supersu/MainActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$1;->a(Leu/chainfire/supersu/MainActivity$1;)Leu/chainfire/supersu/Installer;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$1$1;->b:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Leu/chainfire/supersu/MainActivity$1$1$1;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/MainActivity$1$1$1;-><init>(Leu/chainfire/supersu/MainActivity$1$1;)V

    invoke-virtual {v0, v1, v2, v3}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method
