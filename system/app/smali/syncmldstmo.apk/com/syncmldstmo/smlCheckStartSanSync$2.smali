.class Lcom/syncmldstmo/smlCheckStartSanSync$2;
.super Ljava/lang/Object;
.source "smlCheckStartSanSync.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlCheckStartSanSync;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlCheckStartSanSync;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlCheckStartSanSync;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/syncmldstmo/smlCheckStartSanSync$2;->this$0:Lcom/syncmldstmo/smlCheckStartSanSync;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 66
    const/16 v0, 0x20

    const-string v1, "Sync cancel"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckStartSanSync$2;->this$0:Lcom/syncmldstmo/smlCheckStartSanSync;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlCheckStartSanSync;->finish()V

    .line 68
    return-void
.end method
