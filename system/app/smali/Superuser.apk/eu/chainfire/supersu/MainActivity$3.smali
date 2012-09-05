.class Leu/chainfire/supersu/MainActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;)V
    .registers 2

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$3;->a:Leu/chainfire/supersu/MainActivity;

    invoke-virtual {v0}, Leu/chainfire/supersu/MainActivity;->finish()V

    return-void
.end method
