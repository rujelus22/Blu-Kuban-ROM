.class Lcom/android/settings/CryptKeeper$8;
.super Landroid/os/CountDownTimer;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 735
    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->access$202(I)I

    .line 736
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 738
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    #getter for: Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 740
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f0b07d8

    invoke-virtual {v2, v3}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 742
    .local v0, tempStatus:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$100()I

    move-result v2

    if-eqz v2, :cond_50

    .line 743
    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$100()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_3a

    .line 744
    const v2, 0x7f0b05df

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 753
    :goto_36
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    return-void

    .line 746
    :cond_3a
    new-array v2, v5, [Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/settings/CryptKeeper;->access$100()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 750
    :cond_50
    const v2, 0x7f0b05de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_36
.end method

.method public onTick(J)V
    .registers 9
    .parameter "millisUntilFinished"

    .prologue
    const/4 v5, 0x0

    .line 723
    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 724
    .local v0, secondsCountdown:I
    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$202(I)I

    .line 726
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 727
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    #getter for: Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->access$400(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 728
    iget-object v3, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const v4, 0x7f0b013e

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 729
    .local v1, template:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    return-void
.end method