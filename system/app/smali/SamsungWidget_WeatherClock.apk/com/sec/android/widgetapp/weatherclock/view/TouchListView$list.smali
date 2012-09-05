.class Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;
.super Ljava/lang/Object;
.source "TouchListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "list"
.end annotation


# instance fields
.field listener:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;->this$0:Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 98
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;->this$0:Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;

    iget-boolean v1, v1, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->holding:Z

    if-eqz v1, :cond_1f

    .line 86
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;->this$0:Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->layoutChildren()V

    .line 87
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;->this$0:Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;

    iput-boolean v0, v1, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->holding:Z

    .line 88
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;->this$0:Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;->this$0:Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;

    invoke-virtual {v2, p3}, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->isItemChecked(I)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    invoke-virtual {v1, p3, v0}, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->setItemChecked(IZ)V

    .line 93
    :goto_1e
    return-void

    .line 92
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1e
.end method
