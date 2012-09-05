.class Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;
.super Ljava/lang/Object;
.source "ParticipantScheduleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ParticipantScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# instance fields
.field mAbsDeltaY:I

.field mFloatDeltaY:F

.field mFreeSpinTime:J

.field mSignDeltaY:I

.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/ParticipantScheduleView;)V
    .registers 2
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ParticipantScheduleView;Lcom/android/calendar/ParticipantScheduleView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;-><init>(Lcom/android/calendar/ParticipantScheduleView;)V

    return-void
.end method


# virtual methods
.method public init(I)V
    .registers 6
    .parameter "deltaY"

    .prologue
    const/16 v1, 0x3c

    .line 1102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mSignDeltaY:I

    .line 1103
    if-lez p1, :cond_25

    .line 1104
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mSignDeltaY:I

    .line 1108
    :cond_a
    :goto_a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    .line 1111
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    if-le v0, v1, :cond_16

    .line 1112
    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    .line 1114
    :cond_16
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mFloatDeltaY:F

    .line 1115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xb4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mFreeSpinTime:J

    .line 1118
    return-void

    .line 1105
    :cond_25
    if-gez p1, :cond_a

    .line 1106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mSignDeltaY:I

    goto :goto_a
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1124
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mFreeSpinTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    .line 1127
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_4e

    .line 1128
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    .line 1134
    :goto_18
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    if-gez v2, :cond_1e

    .line 1135
    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    .line 1139
    :cond_1e
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mSignDeltaY:I

    if-ne v2, v5, :cond_5c

    .line 1140
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/android/calendar/ParticipantScheduleView;->access$420(Lcom/android/calendar/ParticipantScheduleView;I)I

    .line 1147
    :goto_29
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/ParticipantScheduleView;->access$400(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v2

    if-gez v2, :cond_64

    .line 1148
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v2, v4}, Lcom/android/calendar/ParticipantScheduleView;->access$402(Lcom/android/calendar/ParticipantScheduleView;I)I

    .line 1149
    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    .line 1155
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #calls: Lcom/android/calendar/ParticipantScheduleView;->computeFirstHour()V
    invoke-static {v2}, Lcom/android/calendar/ParticipantScheduleView;->access$600(Lcom/android/calendar/ParticipantScheduleView;)V

    .line 1157
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    if-lez v2, :cond_80

    .line 1158
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/calendar/ParticipantScheduleView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1166
    :goto_48
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v2}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    .line 1167
    return-void

    .line 1130
    :cond_4e
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mFloatDeltaY:F

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mFloatDeltaY:F

    .line 1131
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mFloatDeltaY:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_18

    .line 1142
    :cond_5c
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/android/calendar/ParticipantScheduleView;->access$412(Lcom/android/calendar/ParticipantScheduleView;I)I

    goto :goto_29

    .line 1150
    :cond_64
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/ParticipantScheduleView;->access$400(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I
    invoke-static {v3}, Lcom/android/calendar/ParticipantScheduleView;->access$500(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v3

    if-le v2, v3, :cond_38

    .line 1151
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I
    invoke-static {v3}, Lcom/android/calendar/ParticipantScheduleView;->access$500(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v3

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v2, v3}, Lcom/android/calendar/ParticipantScheduleView;->access$402(Lcom/android/calendar/ParticipantScheduleView;I)I

    .line 1152
    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_38

    .line 1161
    :cond_80
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z
    invoke-static {v2, v4}, Lcom/android/calendar/ParticipantScheduleView;->access$702(Lcom/android/calendar/ParticipantScheduleView;Z)Z

    .line 1162
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #calls: Lcom/android/calendar/ParticipantScheduleView;->resetSelectedHour()V
    invoke-static {v2}, Lcom/android/calendar/ParticipantScheduleView;->access$800(Lcom/android/calendar/ParticipantScheduleView;)V

    .line 1163
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z
    invoke-static {v2, v5}, Lcom/android/calendar/ParticipantScheduleView;->access$902(Lcom/android/calendar/ParticipantScheduleView;Z)Z

    goto :goto_48
.end method
