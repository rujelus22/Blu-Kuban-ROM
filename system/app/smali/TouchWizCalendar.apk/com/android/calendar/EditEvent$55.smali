.class Lcom/android/calendar/EditEvent$55;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->initRepeatUntilDialog(Landroid/app/Dialog;)V
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
    .line 2098
    iput-object p1, p0, Lcom/android/calendar/EditEvent$55;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 2100
    iget-object v0, p0, Lcom/android/calendar/EditEvent$55;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5000(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2101
    iget-object v0, p0, Lcom/android/calendar/EditEvent$55;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2102
    iget-object v0, p0, Lcom/android/calendar/EditEvent$55;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5200(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2103
    iget-object v0, p0, Lcom/android/calendar/EditEvent$55;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x2

    #setter for: Lcom/android/calendar/EditEvent;->mRepeatUntilType:I
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$5302(Lcom/android/calendar/EditEvent;I)I

    .line 2105
    iget-object v0, p0, Lcom/android/calendar/EditEvent$55;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    .line 2106
    return-void
.end method
