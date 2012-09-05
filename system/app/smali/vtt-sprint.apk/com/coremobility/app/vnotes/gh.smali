.class final Lcom/coremobility/app/vnotes/gh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteOutbox;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gh;->a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gh;->a:Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->finish()V

    return-void
.end method
