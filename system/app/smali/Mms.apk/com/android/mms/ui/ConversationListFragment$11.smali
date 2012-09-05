.class Lcom/android/mms/ui/ConversationListFragment$11;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 1070
    move-object v2, p3

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1072
    .local v2, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v5

    iget v6, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 1073
    .local v3, itemObject:Ljava/lang/Object;
    instance-of v5, v3, Landroid/database/Cursor;

    if-nez v5, :cond_15

    .line 1131
    :cond_14
    :goto_14
    return-void

    :cond_15
    move-object v1, v3

    .line 1075
    check-cast v1, Landroid/database/Cursor;

    .line 1077
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-ltz v5, :cond_14

    .line 1081
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1082
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 1085
    .local v4, recipients:Lcom/android/mms/data/ContactList;
    sput-boolean v7, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    .line 1089
    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-nez v5, :cond_7e

    .line 1090
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f09000f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1116
    :goto_46
    sget-boolean v5, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    if-nez v5, :cond_6b

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6b

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 1118
    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 1119
    const/16 v5, 0xca

    const v6, 0x7f090066

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1124
    :cond_6b
    :goto_6b
    const/16 v5, 0xc8

    const v6, 0x7f09000b

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1128
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1502(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    .line 1130
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v5, p1}, Lcom/android/mms/ui/ConversationListFragment;->access$1602(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_14

    .line 1092
    :cond_7e
    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CBmessages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1093
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090123

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_46

    .line 1097
    :cond_a1
    const-string v5, "SPH-D710"

    const-string v6, "SPH-D710"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b5

    const-string v5, "SPH-D710"

    const-string v6, "SPH-D705"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 1098
    :cond_b5
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget v6, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    #calls: Lcom/android/mms/ui/ConversationListFragment;->isCMASCheck(I)Z
    invoke-static {v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    .line 1101
    sget-boolean v5, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    if-nez v5, :cond_ce

    .line 1102
    const-string v5, ","

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_46

    .line 1104
    :cond_ce
    const v5, 0x7f0902bb

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto/16 :goto_46

    .line 1107
    :cond_d6
    const-string v5, ","

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_46

    .line 1120
    :cond_e1
    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1121
    const/16 v5, 0xcb

    const v6, 0x7f090067

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_6b
.end method
