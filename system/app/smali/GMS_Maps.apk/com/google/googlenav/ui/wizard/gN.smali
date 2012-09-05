.class Lcom/google/googlenav/ui/wizard/gN;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gM;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gN;->a:Lcom/google/googlenav/ui/wizard/gM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/16 v0, 0x54

    if-ne p2, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
