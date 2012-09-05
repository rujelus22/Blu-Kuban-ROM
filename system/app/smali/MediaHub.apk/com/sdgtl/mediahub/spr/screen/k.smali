.class final Lcom/sdgtl/mediahub/spr/screen/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/j;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/j;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/k;->a:Lcom/sdgtl/mediahub/spr/screen/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/k;->a:Lcom/sdgtl/mediahub/spr/screen/j;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/j;->a(Lcom/sdgtl/mediahub/spr/screen/j;)Lcom/sdgtl/mediahub/spr/screen/Help;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->finish()V

    return-void
.end method
