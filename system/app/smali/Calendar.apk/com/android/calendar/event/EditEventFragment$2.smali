.class Lcom/android/calendar/event/EditEventFragment$2;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventFragment;->displayEditWhichDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;

.field final synthetic val$notSynced:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventFragment;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iput-boolean p2, p0, Lcom/android/calendar/event/EditEventFragment$2;->val$notSynced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 608
    if-nez p2, :cond_3f

    .line 611
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-boolean v3, p0, Lcom/android/calendar/event/EditEventFragment$2;->val$notSynced:Z

    if-eqz v3, :cond_36

    :goto_b
    iput v0, v2, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 613
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v0, v0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-ne v0, v1, :cond_2a

    .line 614
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v1, v0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->val$notSynced:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    :goto_1c
    iput-object v0, v1, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v1, v1, Lcom/android/calendar/CalendarEventModel;->mId:J

    iput-wide v1, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    .line 624
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v1, v1, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    .line 625
    return-void

    :cond_36
    move v0, v1

    .line 611
    goto :goto_b

    .line 614
    :cond_38
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    goto :goto_1c

    .line 617
    :cond_3f
    if-ne p2, v1, :cond_4b

    .line 618
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-boolean v3, p0, Lcom/android/calendar/event/EditEventFragment$2;->val$notSynced:Z

    if-eqz v3, :cond_48

    move v0, v2

    :cond_48
    iput v0, v1, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_2a

    .line 620
    :cond_4b
    if-ne p2, v2, :cond_2a

    .line 621
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iput v2, v0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_2a
.end method
