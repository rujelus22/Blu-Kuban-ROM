.class Lcom/android/calendar/EditEvent$51;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createRepeatUntilDialog()Landroid/app/Dialog;
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
    .line 1878
    iput-object p1, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1880
    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5000(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1881
    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDateRadio:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1882
    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilDayRadio:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5200(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1883
    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x3

    #setter for: Lcom/android/calendar/EditEvent;->mRepeatUntilType:I
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$5302(Lcom/android/calendar/EditEvent;I)I

    .line 1884
    return-void
.end method
