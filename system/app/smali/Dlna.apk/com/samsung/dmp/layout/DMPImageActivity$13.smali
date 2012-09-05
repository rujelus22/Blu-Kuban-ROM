.class Lcom/samsung/dmp/layout/DMPImageActivity$13;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->dismissDialog(I)V

    .line 1076
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/4 v1, 0x0

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->toggleButtonState(Z)V
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$600(Lcom/samsung/dmp/layout/DMPImageActivity;Z)V

    .line 1077
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$13;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->handleNext()V

    .line 1078
    return-void
.end method
