.class Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"

# interfaces
.implements Lcom/android/email/activity/ThreePaneLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXLFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreePaneLayoutCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXLFragmentManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1217
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method public makeMessageView()V
    .registers 5

    .prologue
    .line 1328
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1329
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1100()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V
    :try_end_15
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_15} :catch_16

    .line 1334
    :cond_15
    :goto_15
    return-void

    .line 1331
    :catch_16
    move-exception v0

    .line 1332
    .local v0, ipe:Ljava/security/InvalidParameterException;
    const-string v1, "Z7App"

    const-string v2, "can not open email when MessageId is -1"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public onLookChanged(Z)V
    .registers 10
    .parameter "isListLeftShown"

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1248
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    .line 1249
    .local v0, visiblePanes:I
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLookChanged visiblePanes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-ne v0, v7, :cond_ab

    .line 1252
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    .line 1253
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 1255
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$800(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->setDeleteMode(Z)V

    .line 1256
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1257
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$900(Lcom/android/email/activity/MessageListXLFragmentManager;)I

    move-result v1

    if-ne v1, v5, :cond_93

    .line 1258
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 1259
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1260
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 1261
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v1

    if-eq v1, v7, :cond_7a

    .line 1262
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 1263
    :cond_7a
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 1294
    :cond_83
    :goto_83
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mOrientation:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$900(Lcom/android/email/activity/MessageListXLFragmentManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->setFragmentWidth(I)V

    .line 1322
    return-void

    .line 1266
    :cond_93
    sget-boolean v1, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v1, :cond_a1

    .line 1267
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_83

    .line 1269
    :cond_a1
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    goto :goto_83

    .line 1271
    :cond_ab
    const/4 v1, 0x5

    if-ne v0, v1, :cond_ca

    .line 1272
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 1274
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 1275
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    goto :goto_83

    .line 1276
    :cond_ca
    const/4 v1, 0x4

    if-ne v0, v1, :cond_103

    .line 1277
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 1278
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 1279
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 1282
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 1283
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 1284
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$1000(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_83

    .line 1286
    :cond_103
    if-ne v0, v5, :cond_83

    .line 1288
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL;->setActionBarCustomForMessageList()V

    .line 1289
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListXL;->setAccountVisibility(I)V

    .line 1290
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 1291
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$800(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->setDeleteMode(Z)V

    goto/16 :goto_83
.end method

.method public onLookChangedAfterAni()V
    .registers 1

    .prologue
    .line 1340
    return-void
.end method

.method public onVisiblePanesChanged(I)V
    .registers 4
    .parameter "previousVisiblePanes"

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v0

    .line 1222
    .local v0, visiblePanes:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_17

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_17

    .line 1225
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #calls: Lcom/android/email/activity/MessageListXLFragmentManager;->onMessageViewClosed()V
    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$500(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    .line 1228
    :cond_17
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onFragmentSetHasOptionMenu()V

    .line 1244
    return-void
.end method

.method public setLeftSplitType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXL;->setLeftSplitType(I)V

    .line 1345
    return-void
.end method

.method public setRightSplitType(II)V
    .registers 4
    .parameter "type"
    .parameter "width"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXL;->setRightSplitType(I)V

    .line 1350
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mMessageListXL:Lcom/android/email/activity/MessageListXL;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXL;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MessageListXL;->setRightSplitToPreference(I)V

    .line 1351
    return-void
.end method
