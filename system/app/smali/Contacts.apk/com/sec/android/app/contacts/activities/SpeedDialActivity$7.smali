.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsFirst:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->mIsFirst:Z

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 9
    .parameter "dialog"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 819
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->mIsFirst:Z

    if-eqz v4, :cond_5b

    .line 821
    const/high16 v0, 0x4170

    .line 822
    .local v0, dialogTextSize:F
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 823
    .local v3, positiveButton:Landroid/widget/Button;
    if-eqz v3, :cond_5b

    .line 825
    const v4, 0x7f02017c

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 826
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 828
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 829
    invoke-virtual {v3, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 831
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 832
    .local v1, negativeButton:Landroid/widget/Button;
    if-eqz v1, :cond_40

    .line 833
    invoke-virtual {v1, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 835
    :cond_40
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 836
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mButtonDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 837
    .local v2, neutralButton:Landroid/widget/Button;
    if-eqz v2, :cond_58

    .line 838
    invoke-virtual {v2, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 842
    .end local v2           #neutralButton:Landroid/widget/Button;
    :cond_58
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->mIsFirst:Z

    .line 845
    .end local v0           #dialogTextSize:F
    .end local v1           #negativeButton:Landroid/widget/Button;
    .end local v3           #positiveButton:Landroid/widget/Button;
    :cond_5b
    return-void
.end method
