.class Leu/chainfire/supersu/MainActivity$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity$1;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$1;)V
    .registers 2

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$1$2;->a:Leu/chainfire/supersu/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$1$2;->a:Leu/chainfire/supersu/MainActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$1;->b(Leu/chainfire/supersu/MainActivity$1;)Leu/chainfire/supersu/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/MainActivity;->finish()V

    return-void
.end method
