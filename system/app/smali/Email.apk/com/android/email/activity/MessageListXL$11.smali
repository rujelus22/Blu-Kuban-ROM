.class Lcom/android/email/activity/MessageListXL$11;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->createListByDialog()Landroid/app/Dialog;
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
    .line 2843
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x5

    .line 2846
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_46

    .line 2847
    if-ne p2, v4, :cond_35

    .line 2848
    const/16 p2, 0x8

    .line 2863
    :cond_b
    :goto_b
    if-ne p2, v6, :cond_5a

    .line 2864
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4102(I)I

    .line 2868
    :goto_11
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefer_view_mode"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4100()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2870
    invoke-static {p2}, Lcom/android/email/activity/MessageListXL;->access$1702(I)I

    .line 2872
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2873
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 2874
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateOrderManager()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4300(Lcom/android/email/activity/MessageListXL;)V

    .line 2875
    return-void

    .line 2849
    :cond_35
    if-ne p2, v5, :cond_3a

    .line 2850
    const/16 p2, 0x9

    goto :goto_b

    .line 2851
    :cond_3a
    if-ne p2, v6, :cond_3f

    .line 2852
    const/16 p2, 0xa

    goto :goto_b

    .line 2853
    :cond_3f
    const/16 v0, 0x8

    if-ne p2, v0, :cond_b

    .line 2854
    const/16 p2, 0xb

    goto :goto_b

    .line 2855
    :cond_46
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_55

    .line 2856
    if-ne p2, v4, :cond_b

    .line 2857
    const/16 p2, 0xb

    goto :goto_b

    .line 2859
    :cond_55
    if-ne p2, v5, :cond_b

    .line 2860
    const/16 p2, 0xb

    goto :goto_b

    .line 2866
    :cond_5a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4102(I)I

    goto :goto_11
.end method
