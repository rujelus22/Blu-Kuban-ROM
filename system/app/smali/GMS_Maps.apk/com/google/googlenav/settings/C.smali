.class Lcom/google/googlenav/settings/C;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aP;

.field final synthetic b:Lcom/google/googlenav/settings/LegalActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/LegalActivity;Lcom/google/googlenav/aP;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/settings/C;->b:Lcom/google/googlenav/settings/LegalActivity;

    iput-object p2, p0, Lcom/google/googlenav/settings/C;->a:Lcom/google/googlenav/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/C;->a:Lcom/google/googlenav/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/aP;->X()V

    return-void
.end method
