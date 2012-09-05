.class final Lcom/coremobility/app/vnotes/fh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fh;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fh;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->removeDialog(I)V

    return-void
.end method
