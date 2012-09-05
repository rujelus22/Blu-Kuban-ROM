.class Lcom/sprint/w/installer/PackUninstaller$3;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackUninstaller;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$3;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 244
    iget-object v7, p0, Lcom/sprint/w/installer/PackUninstaller$3;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v7, v7, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/PackUninstaller$Listable;

    .line 245
    .local v2, i:Lcom/sprint/w/installer/PackUninstaller$Listable;
    invoke-interface {v2}, Lcom/sprint/w/installer/PackUninstaller$Listable;->getType()I

    move-result v7

    if-nez v7, :cond_23

    move-object v1, v2

    .line 246
    check-cast v1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    .line 247
    .local v1, cat:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;
    iget-boolean v7, v1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->expanded:Z

    if-nez v7, :cond_21

    :goto_19
    iput-boolean v5, v1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->expanded:Z

    .line 248
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$3;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->rebuildList()V
    invoke-static {v5}, Lcom/sprint/w/installer/PackUninstaller;->access$100(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 262
    .end local v1           #cat:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;
    :cond_20
    :goto_20
    return-void

    .restart local v1       #cat:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;
    :cond_21
    move v5, v6

    .line 247
    goto :goto_19

    .line 249
    .end local v1           #cat:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;
    :cond_23
    invoke-interface {v2}, Lcom/sprint/w/installer/PackUninstaller$Listable;->getType()I

    move-result v7

    if-ne v7, v5, :cond_40

    move-object v3, p2

    .line 250
    check-cast v3, Lcom/sprint/w/installer/PackUninstaller$ItemView;

    .line 251
    .local v3, iv:Lcom/sprint/w/installer/PackUninstaller$ItemView;
    iget-object v7, v3, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    iget-object v8, v3, Lcom/sprint/w/installer/PackUninstaller$ItemView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    iget-boolean v8, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-nez v8, :cond_3e

    :goto_34
    iput-boolean v5, v7, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    .line 252
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$3;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mAdapter:Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;

    invoke-virtual {v5}, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->notifyDataSetChanged()V

    goto :goto_20

    :cond_3e
    move v5, v6

    .line 251
    goto :goto_34

    .line 253
    .end local v3           #iv:Lcom/sprint/w/installer/PackUninstaller$ItemView;
    :cond_40
    invoke-interface {v2}, Lcom/sprint/w/installer/PackUninstaller$Listable;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5e

    move-object v0, p2

    .line 254
    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$AppView;

    .line 255
    .local v0, av:Lcom/sprint/w/installer/PackUninstaller$AppView;
    iget-object v7, v0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    iget-object v8, v0, Lcom/sprint/w/installer/PackUninstaller$AppView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    iget-boolean v8, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-nez v8, :cond_5c

    :goto_52
    iput-boolean v5, v7, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    .line 256
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$3;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mAdapter:Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;

    invoke-virtual {v5}, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->notifyDataSetChanged()V

    goto :goto_20

    :cond_5c
    move v5, v6

    .line 255
    goto :goto_52

    .line 257
    .end local v0           #av:Lcom/sprint/w/installer/PackUninstaller$AppView;
    :cond_5e
    invoke-interface {v2}, Lcom/sprint/w/installer/PackUninstaller$Listable;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_20

    move-object v4, p2

    .line 258
    check-cast v4, Lcom/sprint/w/installer/PackUninstaller$ThumbView;

    .line 259
    .local v4, tv:Lcom/sprint/w/installer/PackUninstaller$ThumbView;
    iget-object v7, v4, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    iget-object v8, v4, Lcom/sprint/w/installer/PackUninstaller$ThumbView;->mItem:Lcom/sprint/w/installer/PackUninstaller$Item;

    iget-boolean v8, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-nez v8, :cond_7a

    :goto_70
    iput-boolean v5, v7, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    .line 260
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$3;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mAdapter:Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;

    invoke-virtual {v5}, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->notifyDataSetChanged()V

    goto :goto_20

    :cond_7a
    move v5, v6

    .line 259
    goto :goto_70
.end method
