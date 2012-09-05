.class Lcom/android/calendar/EditEvent$32;
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
    .line 1536
    iput-object p1, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1539
    if-nez p2, :cond_17

    .line 1540
    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1548
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mStatusValue:I
    invoke-static {v0, p2}, Lcom/android/calendar/EditEvent;->access$4402(Lcom/android/calendar/EditEvent;I)I

    .line 1550
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1551
    return-void

    .line 1541
    :cond_17
    const/4 v0, 0x1

    if-ne p2, v0, :cond_27

    .line 1542
    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_e

    .line 1543
    :cond_27
    const/4 v0, 0x2

    if-ne p2, v0, :cond_37

    .line 1544
    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a013e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_e

    .line 1545
    :cond_37
    const/4 v0, 0x3

    if-ne p2, v0, :cond_e

    .line 1546
    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStatusTypeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a013f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_e
.end method
