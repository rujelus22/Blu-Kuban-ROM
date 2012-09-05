.class Lcom/android/calendar/EditEvent$11;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1221
    if-nez p2, :cond_30

    .line 1222
    iget-object v3, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3000(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    move v0, v1

    :goto_10
    #setter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v3, v0}, Lcom/android/calendar/EditEvent;->access$2902(Lcom/android/calendar/EditEvent;I)I

    .line 1229
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2900(Lcom/android/calendar/EditEvent;)I

    move-result v0

    if-ne v0, v1, :cond_38

    .line 1230
    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3100(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1231
    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1235
    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    move v0, v2

    .line 1222
    goto :goto_10

    .line 1223
    :cond_30
    if-ne p2, v2, :cond_13

    .line 1224
    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2902(Lcom/android/calendar/EditEvent;I)I

    goto :goto_13

    .line 1232
    :cond_38
    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2900(Lcom/android/calendar/EditEvent;)I

    move-result v0

    if-ne v0, v2, :cond_2d

    .line 1233
    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3200(Lcom/android/calendar/EditEvent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2d
.end method
