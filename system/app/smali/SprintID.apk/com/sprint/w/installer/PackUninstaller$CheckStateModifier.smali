.class Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckStateModifier"
.end annotation


# instance fields
.field mState:Z

.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller;Z)V
    .registers 3
    .parameter
    .parameter "state"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-boolean p2, p0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;->mState:Z

    .line 216
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 220
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_45

    .line 221
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprint/w/installer/PackUninstaller$Listable;

    .line 222
    .local v4, l:Lcom/sprint/w/installer/PackUninstaller$Listable;
    iget-boolean v5, p0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;->mState:Z

    invoke-interface {v4, v5}, Lcom/sprint/w/installer/PackUninstaller$Listable;->setChecked(Z)V

    .line 223
    invoke-interface {v4}, Lcom/sprint/w/installer/PackUninstaller$Listable;->getType()I

    move-result v5

    if-nez v5, :cond_e

    move-object v0, v4

    .line 224
    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    .line 225
    .local v0, ci:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;
    iget-object v5, v0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 226
    .local v1, i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-boolean v5, p0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;->mState:Z

    invoke-virtual {v1, v5}, Lcom/sprint/w/installer/PackUninstaller$Item;->setChecked(Z)V

    goto :goto_2e

    .line 230
    .end local v0           #ci:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;
    .end local v1           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Lcom/sprint/w/installer/PackUninstaller$Listable;
    :cond_40
    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->rebuildList()V
    invoke-static {v5}, Lcom/sprint/w/installer/PackUninstaller;->access$100(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 232
    :cond_45
    return-void
.end method
