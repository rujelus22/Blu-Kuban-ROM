.class Lcom/android/email/activity/MessageListXL$10;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->changeFontSize()Landroid/app/Dialog;
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
    .line 2640
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2646
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isQ1Model()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Lcom/android/email/util/EmailFeature;->is5FontModel()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2647
    :cond_e
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, p2}, Lcom/android/email/activity/MessageListXL;->access$4402(Lcom/android/email/activity/MessageListXL;I)I

    .line 2660
    :goto_13
    sget-object v1, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 2661
    .local v0, settingValue:Lcom/android/email/Preferences;
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$4400(Lcom/android/email/activity/MessageListXL;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setTextZoom(I)V

    .line 2662
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 2663
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$4400(Lcom/android/email/activity/MessageListXL;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setViewFontSize(I)V

    .line 2666
    :cond_49
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$4400(Lcom/android/email/activity/MessageListXL;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setMessageListFontSize(I)V

    .line 2667
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2668
    return-void

    .line 2649
    .end local v0           #settingValue:Lcom/android/email/Preferences;
    :cond_60
    if-nez p2, :cond_68

    .line 2650
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListXL;->access$4402(Lcom/android/email/activity/MessageListXL;I)I

    goto :goto_13

    .line 2651
    :cond_68
    if-ne p2, v2, :cond_70

    .line 2652
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, v3}, Lcom/android/email/activity/MessageListXL;->access$4402(Lcom/android/email/activity/MessageListXL;I)I

    goto :goto_13

    .line 2653
    :cond_70
    if-ne p2, v3, :cond_79

    .line 2654
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x3

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListXL;->access$4402(Lcom/android/email/activity/MessageListXL;I)I

    goto :goto_13

    .line 2656
    :cond_79
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$10;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, p2}, Lcom/android/email/activity/MessageListXL;->access$4402(Lcom/android/email/activity/MessageListXL;I)I

    goto :goto_13
.end method
