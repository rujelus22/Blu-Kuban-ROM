.class Lcom/syncmldstmo/smluiStartSync$9;
.super Ljava/lang/Object;
.source "smluiStartSync.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiStartSync;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiStartSync;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiStartSync;)V
    .registers 2
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/syncmldstmo/smluiStartSync$9;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync$9;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smluiStartSync;->removeDialog(I)V

    .line 418
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync$9;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v0}, Lcom/syncmldstmo/smluiStartSync;->finish()V

    .line 419
    return-void
.end method
