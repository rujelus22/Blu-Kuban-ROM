.class Lcom/lifevibes/trimapp/Trim$5;
.super Ljava/lang/Object;
.source "Trim.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifevibes/trimapp/Trim;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$5;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$5;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$500(Lcom/lifevibes/trimapp/Trim;)V

    .line 746
    return-void
.end method
