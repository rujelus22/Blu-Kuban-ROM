.class Lcom/android/calendar/EditEvent$1;
.super Landroid/os/Handler;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
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
    .line 668
    iput-object p1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    .line 670
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v10, v1

    check-cast v10, [Ljava/lang/String;

    .line 674
    .local v10, str:[Ljava/lang/String;
    aget-object v1, v10, v11

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 675
    new-instance v0, Lcom/android/calendar/EditEvent$Attendee;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v10, v3

    const/4 v4, -0x1

    const/16 v5, 0x1000

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EditEvent$Attendee;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;II)V

    .line 680
    .local v0, newAttendee:Lcom/android/calendar/EditEvent$Attendee;
    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #calls: Lcom/android/calendar/EditEvent;->getAttendeesCount()I
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)I

    move-result v7

    .line 681
    .local v7, attendeesSize:I
    const/16 v1, 0x14

    if-gt v7, v1, :cond_54

    .line 682
    const/4 v8, 0x0

    .line 683
    .local v8, flag:Z
    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/EditEvent$Attendee;

    .line 684
    .local v6, attendee:Lcom/android/calendar/EditEvent$Attendee;
    invoke-virtual {v6, v0}, Lcom/android/calendar/EditEvent$Attendee;->contain(Lcom/android/calendar/EditEvent$Attendee;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 685
    const/4 v8, 0x1

    .line 689
    .end local v6           #attendee:Lcom/android/calendar/EditEvent$Attendee;
    :cond_48
    if-nez v8, :cond_53

    .line 690
    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .end local v0           #newAttendee:Lcom/android/calendar/EditEvent$Attendee;
    .end local v7           #attendeesSize:I
    .end local v8           #flag:Z
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_53
    :goto_53
    return-void

    .line 695
    .restart local v0       #newAttendee:Lcom/android/calendar/EditEvent$Attendee;
    .restart local v7       #attendeesSize:I
    :cond_54
    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    const v2, 0x7f0a00b1

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_53
.end method
