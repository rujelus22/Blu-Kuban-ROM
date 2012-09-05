.class Lcom/lifevibes/trimapp/Trim$3;
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
    .line 724
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$3;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$3;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->doChoiceFilenameAction(I)V
    invoke-static {v0, p2}, Lcom/lifevibes/trimapp/Trim;->access$400(Lcom/lifevibes/trimapp/Trim;I)V

    .line 728
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 729
    return-void
.end method
