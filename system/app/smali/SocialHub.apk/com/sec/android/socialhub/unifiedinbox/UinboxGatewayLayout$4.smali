.class Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$4;
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
    .line 214
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$4;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "arg0"

    .prologue
    const/4 v9, 0x0

    .line 221
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 222
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v3, 0x0

    .line 223
    .local v3, wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.im.action.SOCIALHUB_APP_IM_UPDATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    check-cast v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 227
    .restart local v3       #wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    const-string v4, "intentType"

    const/16 v5, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v4, "id_array"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v4, "action"

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$4;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    iget-object v4, v4, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_4b} :catch_4c

    .line 239
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :goto_4b
    return v9

    .line 234
    :catch_4c
    move-exception v0

    .line 236
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "UinboxGatewayLayout"

    const-string v5, "onMenuItemClick()"

    const-string v6, "Failed on IM Account Editing : Activity not found-com.sec.android.im.action.SOCIALHUB_APP_IM_UPDATE"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method
