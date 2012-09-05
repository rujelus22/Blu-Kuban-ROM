.class Lcom/sec/android/socialhub/state/MessageBaseState$1;
.super Ljava/lang/Object;
.source "MessageBaseState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/state/MessageBaseState;->handleOptionMenu(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/state/MessageBaseState;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/state/MessageBaseState;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sec/android/socialhub/state/MessageBaseState$1;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    sget v1, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    if-eq v1, p2, :cond_25

    .line 242
    iget-object v1, p0, Lcom/sec/android/socialhub/state/MessageBaseState$1;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    iget-object v1, v1, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefer_view_mode"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    iget-object v1, p0, Lcom/sec/android/socialhub/state/MessageBaseState$1;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/MessageBaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 244
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    packed-switch p2, :pswitch_data_62

    .line 259
    :goto_1c
    sput v3, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    .line 260
    iget-object v1, p0, Lcom/sec/android/socialhub/state/MessageBaseState$1;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    iget-object v1, v1, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v1}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->startQuery()V

    .line 262
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :cond_25
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 263
    return-void

    .line 247
    .restart local v0       #account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :pswitch_29
    sput v3, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    .line 248
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageListView;->clearOpenedThreadList()V

    .line 249
    iget-object v1, p0, Lcom/sec/android/socialhub/state/MessageBaseState$1;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    #getter for: Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/sec/android/socialhub/state/MessageBaseState;->access$000(Lcom/sec/android/socialhub/state/MessageBaseState;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1c

    .line 252
    :pswitch_38
    sput v4, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    .line 253
    const-string v1, "2_Email"

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "3_SevenEmail"

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 254
    :cond_4e
    iget-object v1, p0, Lcom/sec/android/socialhub/state/MessageBaseState$1;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    #getter for: Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/sec/android/socialhub/state/MessageBaseState;->access$000(Lcom/sec/android/socialhub/state/MessageBaseState;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1c

    .line 256
    :cond_58
    iget-object v1, p0, Lcom/sec/android/socialhub/state/MessageBaseState$1;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    #getter for: Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/sec/android/socialhub/state/MessageBaseState;->access$000(Lcom/sec/android/socialhub/state/MessageBaseState;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1c

    .line 244
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_29
        :pswitch_38
    .end packed-switch
.end method
