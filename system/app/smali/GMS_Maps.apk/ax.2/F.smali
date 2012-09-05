.class Lax/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/MenuItem;

.field final synthetic b:Lax/x;


# direct methods
.method constructor <init>(Lax/x;Landroid/view/MenuItem;)V
    .registers 3

    iput-object p1, p0, Lax/F;->b:Lax/x;

    iput-object p2, p0, Lax/F;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lax/F;->a:Landroid/view/MenuItem;

    invoke-static {v0}, Lcom/google/googlenav/ui/aC;->b(Landroid/view/MenuItem;)V

    return-void
.end method
