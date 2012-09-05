.class Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;
.super Ljava/lang/Object;
.source "WCDelete.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "v"
    .parameter "position"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-nez p3, :cond_1e

    .line 136
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->access$100(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)Z

    move-result v4

    if-nez v4, :cond_1c

    :goto_e
    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z
    invoke-static {v3, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->access$102(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;Z)Z

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setSelectAll()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->access$200(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)V

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setDeleteButton()V

    .line 145
    :goto_1b
    return-void

    :cond_1c
    move v1, v2

    .line 136
    goto :goto_e

    .line 141
    :cond_1e
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->access$300(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 142
    .local v0, t:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getSelected()Z

    move-result v3

    if-nez v3, :cond_40

    :goto_32
    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->setSelected(Z)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setToggle()V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCDelete;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setDeleteButton()V

    goto :goto_1b

    :cond_40
    move v1, v2

    .line 142
    goto :goto_32
.end method
