.class Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$3;
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
    .line 188
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$3;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "arg0"

    .prologue
    const/4 v8, 0x0

    .line 195
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 196
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v2, 0x0

    .line 197
    .local v2, wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    check-cast v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 199
    .restart local v2       #wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$3;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->removeAccount(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_23} :catch_24

    .line 207
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :goto_23
    return v8

    .line 202
    :catch_24
    move-exception v0

    .line 204
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "UinboxGatewayLayout"

    const-string v4, "onMenuItemClick()"

    const-string v5, "Failed on IM Account Deleting : Activity not found-com.sec.android.im.action.SOCIALHUB_APP_IM_UPDATE"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method
