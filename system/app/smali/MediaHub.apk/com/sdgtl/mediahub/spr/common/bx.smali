.class final Lcom/sdgtl/mediahub/spr/common/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
