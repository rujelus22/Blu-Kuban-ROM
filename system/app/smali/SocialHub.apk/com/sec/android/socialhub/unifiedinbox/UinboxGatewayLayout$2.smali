.class Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$2;
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
    .line 162
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "arg0"

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 168
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 172
    .local v3, wrappedItem:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :try_start_e
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.email.activity.setup.AccountSettings.intent.action.ACTION_EXTERNAL_ACCOUNT_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "account_id"

    iget-object v4, v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v5, "2_Email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    :goto_28
    invoke-virtual {v2, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    iget-object v4, v4, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    .end local v2           #intent:Landroid/content/Intent;
    :goto_32
    const/4 v4, 0x0

    return v4

    .line 173
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_34
    iget-object v4, v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_39} :catch_3c

    move-result v4

    int-to-long v4, v4

    goto :goto_28

    .line 176
    .end local v2           #intent:Landroid/content/Intent;
    :catch_3c
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method
