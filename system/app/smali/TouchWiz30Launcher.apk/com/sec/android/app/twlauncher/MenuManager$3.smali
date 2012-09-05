.class Lcom/sec/android/app/twlauncher/MenuManager$3;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/MenuManager;->switchToListMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;

.field final synthetic val$adapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/TextIconAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3297
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->val$adapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 3302
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3303
    const/4 v2, 0x0

    .line 3325
    :goto_9
    return v2

    .line 3305
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->val$adapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getId(I)J

    move-result-wide v2

    long-to-int v1, v2

    .line 3306
    .local v1, index:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$600(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3324
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/twlauncher/MenuManager;->dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V
    invoke-static {v2, p2, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->access$800(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V

    .line 3325
    const/4 v2, 0x1

    goto :goto_9
.end method
