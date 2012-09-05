.class Lcom/google/googlenav/ui/wizard/gs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gr;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gr;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gs;->a:Lcom/google/googlenav/ui/wizard/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gs;->a:Lcom/google/googlenav/ui/wizard/gr;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gr;->a()V

    return-void
.end method
