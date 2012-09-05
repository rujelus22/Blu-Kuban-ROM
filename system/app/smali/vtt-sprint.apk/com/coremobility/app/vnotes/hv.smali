.class final Lcom/coremobility/app/vnotes/hv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hv;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-nez p2, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hv;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

    :cond_7
    return-void
.end method
