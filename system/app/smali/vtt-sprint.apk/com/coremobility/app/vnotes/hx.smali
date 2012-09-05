.class final Lcom/coremobility/app/vnotes/hx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hx;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hx;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->finish()V

    return-void
.end method
