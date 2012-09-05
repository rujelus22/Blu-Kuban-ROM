.class Lcom/syncmldstmo/smluiSyncItem$2;
.super Ljava/lang/Object;
.source "smluiSyncItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiSyncItem;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiSyncItem;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiSyncItem;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->chCon:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/syncmldstmo/smluiSyncItem;->access$500(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/syncmldstmo/smluiSyncItem;->bConClick:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/syncmldstmo/smluiSyncItem;->access$402(Lcom/syncmldstmo/smluiSyncItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 106
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->edContact:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncItem;->access$600(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->bConClick:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/syncmldstmo/smluiSyncItem;->access$400(Lcom/syncmldstmo/smluiSyncItem;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->bConClick:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncItem;->access$400(Lcom/syncmldstmo/smluiSyncItem;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->bCalClick:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncItem;->access$700(Lcom/syncmldstmo/smluiSyncItem;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 108
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncItem;->access$000(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    :goto_48
    return-void

    .line 110
    :cond_49
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncItem$2;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncItem;->access$000(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_48
.end method
