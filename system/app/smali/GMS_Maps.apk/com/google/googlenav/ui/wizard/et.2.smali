.class Lcom/google/googlenav/ui/wizard/et;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eo;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/et;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/et;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    return-void
.end method
