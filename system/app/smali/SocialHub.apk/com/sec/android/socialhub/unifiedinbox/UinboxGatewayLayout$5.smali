.class Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$5;
.super Ljava/lang/Object;
.source "UinboxGatewayLayout.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$5;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 253
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v1, 0x0

    .line 255
    .local v1, wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    check-cast v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 257
    .restart local v1       #wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$5;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    iget-object v3, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->removeAccount(Ljava/lang/String;[Ljava/lang/String;)V

    .line 259
    return v6
.end method
