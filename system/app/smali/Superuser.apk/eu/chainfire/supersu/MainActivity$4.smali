.class Leu/chainfire/supersu/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    iput-object p2, p0, Leu/chainfire/supersu/MainActivity$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4;->a:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .registers 4

    new-instance v0, Leu/chainfire/supersu/MainActivity$4$1;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$4;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Leu/chainfire/supersu/MainActivity$4$1;-><init>(Leu/chainfire/supersu/MainActivity$4;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/MainActivity$4$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    return v0
.end method
