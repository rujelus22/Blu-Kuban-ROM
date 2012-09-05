.class Lcom/syncmldstmo/smlSyncComplete$2;
.super Ljava/lang/Object;
.source "smlSyncComplete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlSyncComplete;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlSyncComplete;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlSyncComplete;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/syncmldstmo/smlSyncComplete$2;->this$0:Lcom/syncmldstmo/smlSyncComplete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncComplete$2;->this$0:Lcom/syncmldstmo/smlSyncComplete;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlSyncComplete;->finish()V

    .line 77
    return-void
.end method
