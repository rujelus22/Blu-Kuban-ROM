.class Lcom/android/calendar/EditEvent$53;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1908
    iput-object p1, p0, Lcom/android/calendar/EditEvent$53;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/calendar/EditEvent$53;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatUntilInfiniteRadio:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5000(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1911
    iget-object v0, p0, Lcom/android/calendar/EditEvent$53;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x1

    #setter for: Lcom/android/calendar/EditEvent;->mRepeatUntilType:I
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$5302(Lcom/android/calendar/EditEvent;I)I

    .line 1912
    :cond_12
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1913
    return-void
.end method
