.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->onCreate(Landroid/os/Bundle;)V
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
    .line 122
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$000(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_36

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 129
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 131
    :cond_27
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 141
    :goto_30
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->setDeleteButtonState()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)V

    .line 142
    return-void

    .line 135
    .end local v0           #i:I
    :cond_36
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_37
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 137
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 139
    :cond_4f
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->mSelectAllState:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;->access$002(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_30
.end method
