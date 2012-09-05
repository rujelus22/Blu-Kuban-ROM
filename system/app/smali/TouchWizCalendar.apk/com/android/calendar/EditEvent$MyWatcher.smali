.class Lcom/android/calendar/EditEvent$MyWatcher;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method private constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 6940
    iput-object p1, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/EditEvent;Lcom/android/calendar/EditEvent$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6940
    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent$MyWatcher;-><init>(Lcom/android/calendar/EditEvent;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 6945
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 6950
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 18
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 6954
    if-lez p3, :cond_7e

    if-nez p4, :cond_7e

    .line 6955
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 6957
    .local v9, sb:Ljava/lang/StringBuilder;
    add-int/lit8 v8, p2, -0x1

    .local v8, index:I
    :goto_b
    if-ltz v8, :cond_34

    .line 6958
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 6959
    .local v2, c:C
    const/16 v11, 0x2c

    if-ne v2, v11, :cond_78

    .line 6960
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_34

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_34

    .line 6961
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 6962
    add-int/lit8 v8, v8, 0x1

    .line 6968
    .end local v2           #c:C
    :cond_34
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6970
    .local v10, token:Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 6972
    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_48
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_77

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/EditEvent$Attendee;

    .line 6973
    .local v1, attendee:Lcom/android/calendar/EditEvent$Attendee;
    if-eqz v10, :cond_48

    .line 6974
    invoke-virtual {v1}, Lcom/android/calendar/EditEvent$Attendee;->getDisplay()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    .line 6978
    iget v11, v1, Lcom/android/calendar/EditEvent$Attendee;->mStatus:I

    and-int/lit8 v11, v11, 0x3

    if-eqz v11, :cond_48

    .line 6979
    move v5, v8

    .line 6980
    .local v5, findex:I
    move v6, p2

    .line 6981
    .local v6, fstart:I
    move-object v4, v1

    .line 6983
    .local v4, fattendee:Lcom/android/calendar/EditEvent$Attendee;
    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;
    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v11

    new-instance v12, Lcom/android/calendar/EditEvent$MyWatcher$1;

    invoke-direct {v12, p0, v5, v6, v4}, Lcom/android/calendar/EditEvent$MyWatcher$1;-><init>(Lcom/android/calendar/EditEvent$MyWatcher;IILcom/android/calendar/EditEvent$Attendee;)V

    invoke-virtual {v11, v12}, Lcom/android/calendar/EnterActionMultiEdit;->post(Ljava/lang/Runnable;)Z

    .line 7022
    .end local v1           #attendee:Lcom/android/calendar/EditEvent$Attendee;
    .end local v4           #fattendee:Lcom/android/calendar/EditEvent$Attendee;
    .end local v5           #findex:I
    .end local v6           #fstart:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #index:I
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #token:Ljava/lang/String;
    :cond_77
    :goto_77
    return-void

    .line 6966
    .restart local v2       #c:C
    .restart local v8       #index:I
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_78
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6957
    add-int/lit8 v8, v8, -0x1

    goto :goto_b

    .line 7008
    .end local v2           #c:C
    .end local v8           #index:I
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :cond_7e
    if-nez p3, :cond_77

    const/4 v11, 0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_77

    .line 7009
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 7010
    .restart local v2       #c:C
    const/16 v11, 0x20

    if-ne v2, v11, :cond_77

    .line 7011
    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;
    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/calendar/EnterActionMultiEdit;->getEditableText()Landroid/text/Editable;

    move-result-object v11

    const-string v12, ","

    invoke-interface {v11, p2, p2, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .line 7012
    .local v3, ed:Landroid/text/Editable;
    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;
    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/calendar/EnterActionMultiEdit;->setText(Ljava/lang/CharSequence;)V

    .line 7013
    iget-object v11, p0, Lcom/android/calendar/EditEvent$MyWatcher;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mAttendeesList:Lcom/android/calendar/EnterActionMultiEdit;
    invoke-static {v11}, Lcom/android/calendar/EditEvent;->access$3300(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/EnterActionMultiEdit;

    move-result-object v11

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/calendar/EnterActionMultiEdit;->setSelection(I)V

    goto :goto_77
.end method
