.class Lcom/syncmldstmo/smlCheckRoaming$2;
.super Ljava/lang/Object;
.source "smlCheckRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlCheckRoaming;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlCheckRoaming;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlCheckRoaming;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/syncmldstmo/smlCheckRoaming$2;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckRoaming$2;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smlCheckRoaming;->removeDialog(I)V

    .line 83
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckRoaming$2;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smlCheckRoaming;->showDialog(I)V

    .line 84
    return-void
.end method
