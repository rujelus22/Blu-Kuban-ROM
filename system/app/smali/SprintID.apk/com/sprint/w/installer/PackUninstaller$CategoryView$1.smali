.class Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller$CategoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackUninstaller$CategoryView;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller$CategoryView;)V
    .registers 2
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$CategoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 513
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$CategoryView;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItem:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    if-eqz v3, :cond_34

    .line 514
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$CategoryView;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mSelectedChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 515
    .local v2, value:Z
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$CategoryView;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItem:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    iput-boolean v2, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->checked:Z

    .line 516
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$CategoryView;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->mItem:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 517
    .local v0, i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iput-boolean v2, v0, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    goto :goto_1e

    .line 519
    .end local v0           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_2d
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryView$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$CategoryView;

    iget-object v3, v3, Lcom/sprint/w/installer/PackUninstaller$CategoryView;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->rebuildList()V
    invoke-static {v3}, Lcom/sprint/w/installer/PackUninstaller;->access$100(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 521
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_34
    return-void
.end method
