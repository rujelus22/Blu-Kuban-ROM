.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$7;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 518
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->isAllItemChecked()Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$1300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 522
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setDeleteButtonState()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    .line 523
    return-void
.end method
