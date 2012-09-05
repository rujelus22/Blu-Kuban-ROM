.class Lcom/android/calendar/EditEvent$MyWatcher$1;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent$MyWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/EditEvent$MyWatcher;

.field final synthetic val$fattendee:Lcom/android/calendar/EditEvent$Attendee;

.field final synthetic val$findex:I

.field final synthetic val$fstart:I


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent$MyWatcher;IILcom/android/calendar/EditEvent$Attendee;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6983
    iput-object p1, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->this$1:Lcom/android/calendar/EditEvent$MyWatcher;

    iput p2, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$findex:I

    iput p3, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$fstart:I

    iput-object p4, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$fattendee:Lcom/android/calendar/EditEvent$Attendee;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 6987
    iget-object v1, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->this$1:Lcom/android/calendar/EditEvent$MyWatcher;

    iget-object v1, v1, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/EnterActionMultiEdit;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$findex:I

    iget v3, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$fstart:I

    const-string v4, ""

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    .line 6989
    .local v0, ed:Landroid/text/Editable;
    iget-object v1, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->this$1:Lcom/android/calendar/EditEvent$MyWatcher;

    iget-object v1, v1, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/EnterActionMultiEdit;->setText(Ljava/lang/CharSequence;)V

    .line 6990
    iget-object v1, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->this$1:Lcom/android/calendar/EditEvent$MyWatcher;

    iget-object v1, v1, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$findex:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/EnterActionMultiEdit;->setSelection(I)V

    .line 6993
    iget-object v1, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$fattendee:Lcom/android/calendar/EditEvent$Attendee;

    iget v1, v1, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 6994
    iget-object v1, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$fattendee:Lcom/android/calendar/EditEvent$Attendee;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    .line 6998
    :goto_3a
    return-void

    .line 6996
    :cond_3b
    iget-object v1, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->this$1:Lcom/android/calendar/EditEvent$MyWatcher;

    iget-object v1, v1, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent$MyWatcher$1;->val$fattendee:Lcom/android/calendar/EditEvent$Attendee;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3a
.end method
