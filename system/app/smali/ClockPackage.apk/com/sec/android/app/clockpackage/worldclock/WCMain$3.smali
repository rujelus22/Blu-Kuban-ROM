.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;
.super Ljava/lang/Object;
.source "WCMain.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 2
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const/4 v1, 0x0

    .line 375
    invoke-virtual {p1, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 376
    .local v0, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    if-eqz v0, :cond_2f

    .line 377
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mListPos:I
    invoke-static {v2, p3}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$402(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I

    .line 378
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mCityCountrySel:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$202(Lcom/sec/android/app/clockpackage/worldclock/WCMain;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mIsDST:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$502(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getId()I

    move-result v3

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mItemID:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$602(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)I

    .line 381
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->showDialog(I)V

    .line 382
    const/4 v1, 0x1

    .line 384
    :cond_2f
    return v1
.end method
