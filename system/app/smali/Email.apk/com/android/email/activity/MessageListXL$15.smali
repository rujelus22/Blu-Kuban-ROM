.class Lcom/android/email/activity/MessageListXL$15;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->setupAccountView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 3507
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 3511
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3512
    .local v1, accountId:J
    const/4 v9, 0x0

    .line 3518
    .local v9, bSelectEmpty:Z
    const-wide v3, 0x100000000000002L

    cmp-long v0, v1, v3

    if-nez v0, :cond_1d

    .line 3519
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v1

    .line 3520
    const/4 v9, 0x1

    .line 3523
    :cond_1d
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_69

    .line 3524
    const/4 v0, 0x1

    if-ne v9, v0, :cond_46

    .line 3525
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v3

    #setter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageListXL;->access$402(Lcom/android/email/activity/MessageListXL;J)J

    .line 3533
    :goto_31
    :try_start_31
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$400(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v1

    .end local v1           #accountId:J
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_45} :catch_64

    .line 3544
    :goto_45
    return-void

    .line 3526
    .restart local v1       #accountId:J
    :cond_46
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v3

    const-wide/high16 v5, 0x1000

    cmp-long v0, v3, v5

    if-nez v0, :cond_58

    .line 3527
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    const-wide/16 v3, -0x2

    #setter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageListXL;->access$402(Lcom/android/email/activity/MessageListXL;J)J

    goto :goto_31

    .line 3529
    :cond_58
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v3

    #setter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageListXL;->access$402(Lcom/android/email/activity/MessageListXL;J)J

    goto :goto_31

    .line 3534
    .end local v1           #accountId:J
    :catch_64
    move-exception v10

    .line 3535
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45

    .line 3538
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v1       #accountId:J
    :cond_69
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListXL;->access$302(J)J

    .line 3539
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v3

    #setter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageListXL;->access$402(Lcom/android/email/activity/MessageListXL;J)J

    .line 3540
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$15;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$400(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    goto :goto_45
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3548
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
