.class Lcom/syncmldstmo/smluiSyncItem$1;
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
    .line 79
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 82
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->chAll:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/syncmldstmo/smluiSyncItem;->access$000(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 84
    .local v0, allcheck:Z
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_b
    const/4 v2, 0x4

    if-ge v1, v2, :cond_55

    .line 86
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentSyncDBInfo(I)Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    move-result-object v3

    #setter for: Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    invoke-static {v2, v3}, Lcom/syncmldstmo/smluiSyncItem;->access$102(Lcom/syncmldstmo/smluiSyncItem;Lcom/syncmldstmo/database/smlDbSyncItemInfo;)Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 88
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->dif:Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    invoke-static {v2}, Lcom/syncmldstmo/smluiSyncItem;->access$100(Lcom/syncmldstmo/smluiSyncItem;)Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 90
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/syncmldstmo/smluiSyncItem;->smlSyncItemCheck(ILjava/lang/Boolean;)V

    .line 92
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->chSelItem:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/syncmldstmo/smluiSyncItem;->access$200(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3d

    .line 93
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->chSelItem:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/syncmldstmo/smluiSyncItem;->access$200(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    :cond_3d
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->edSelItem:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/syncmldstmo/smluiSyncItem;->access$300(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_52

    .line 95
    iget-object v2, p0, Lcom/syncmldstmo/smluiSyncItem$1;->this$0:Lcom/syncmldstmo/smluiSyncItem;

    #getter for: Lcom/syncmldstmo/smluiSyncItem;->edSelItem:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/syncmldstmo/smluiSyncItem;->access$300(Lcom/syncmldstmo/smluiSyncItem;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 84
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 98
    :cond_55
    return-void
.end method
