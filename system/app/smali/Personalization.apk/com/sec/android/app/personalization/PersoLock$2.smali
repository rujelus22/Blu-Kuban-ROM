.class Lcom/sec/android/app/personalization/PersoLock$2;
.super Ljava/lang/Object;
.source "PersoLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/personalization/PersoLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/personalization/PersoLock;


# direct methods
.method constructor <init>(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 507
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget v3, v3, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42

    .line 509
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v4, "mIsLock - ok click"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 511
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/personalization/PersoLock;->access$300(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, entry1:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/personalization/PersoLock;->access$400(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, entry2:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 543
    .end local v1           #entry1:Ljava/lang/String;
    .end local v2           #entry2:Ljava/lang/String;
    :cond_30
    :goto_30
    return-void

    .line 518
    .restart local v1       #entry1:Ljava/lang/String;
    .restart local v2       #entry2:Ljava/lang/String;
    :cond_31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 522
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->SendLockData()V
    invoke-static {v3}, Lcom/sec/android/app/personalization/PersoLock;->access$1100(Lcom/sec/android/app/personalization/PersoLock;)V

    .line 523
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->indicateBusy()V
    invoke-static {v3}, Lcom/sec/android/app/personalization/PersoLock;->access$1200(Lcom/sec/android/app/personalization/PersoLock;)V

    goto :goto_30

    .line 525
    .end local v1           #entry1:Ljava/lang/String;
    .end local v2           #entry2:Ljava/lang/String;
    :cond_42
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget v3, v3, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    if-nez v3, :cond_30

    .line 527
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v4, "!mIsLock - ok click"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/personalization/PersoLock;->access$400(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, controlKeyEntry:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 535
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->SendUnLockData()V
    invoke-static {v3}, Lcom/sec/android/app/personalization/PersoLock;->access$1300(Lcom/sec/android/app/personalization/PersoLock;)V

    .line 536
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$2;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->indicateBusy()V
    invoke-static {v3}, Lcom/sec/android/app/personalization/PersoLock;->access$1200(Lcom/sec/android/app/personalization/PersoLock;)V

    goto :goto_30
.end method
