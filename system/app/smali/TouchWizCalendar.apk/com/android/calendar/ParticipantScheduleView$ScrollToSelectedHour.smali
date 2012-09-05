.class Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;
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
    name = "ScrollToSelectedHour"
.end annotation


# instance fields
.field mDeltaY:I

.field mDestY:I

.field mIsInit:Z

.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/ParticipantScheduleView;)V
    .registers 3
    .parameter

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mIsInit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ParticipantScheduleView;Lcom/android/calendar/ParticipantScheduleView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;-><init>(Lcom/android/calendar/ParticipantScheduleView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1266
    iget-boolean v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mIsInit:Z

    if-eqz v1, :cond_16

    .line 1267
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/ParticipantScheduleView;->access$400(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDestY:I

    if-ge v1, v2, :cond_38

    .line 1268
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    .line 1272
    :goto_14
    iput-boolean v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mIsInit:Z

    .line 1274
    :cond_16
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/ParticipantScheduleView;->access$400(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    add-int v0, v1, v2

    .line 1277
    .local v0, viewStartY:I
    if-gez v0, :cond_3d

    .line 1278
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v1, v3}, Lcom/android/calendar/ParticipantScheduleView;->access$402(Lcom/android/calendar/ParticipantScheduleView;I)I

    .line 1279
    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    .line 1291
    :goto_29
    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    if-eqz v1, :cond_8b

    .line 1292
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v1, p0}, Lcom/android/calendar/ParticipantScheduleView;->post(Ljava/lang/Runnable;)Z

    .line 1298
    :goto_32
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v1}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    .line 1299
    return-void

    .line 1270
    .end local v0           #viewStartY:I
    :cond_38
    const/16 v1, -0xd

    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_14

    .line 1280
    .restart local v0       #viewStartY:I
    :cond_3d
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/ParticipantScheduleView;->access$500(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v1

    if-le v0, v1, :cond_53

    .line 1281
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/ParticipantScheduleView;->access$500(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v2

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v1, v2}, Lcom/android/calendar/ParticipantScheduleView;->access$402(Lcom/android/calendar/ParticipantScheduleView;I)I

    .line 1282
    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_29

    .line 1283
    :cond_53
    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    if-lez v1, :cond_5b

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDestY:I

    if-ge v0, v1, :cond_63

    :cond_5b
    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    if-gez v1, :cond_66

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDestY:I

    if-ge v0, v1, :cond_66

    .line 1285
    :cond_63
    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_29

    .line 1287
    :cond_66
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v1, v0}, Lcom/android/calendar/ParticipantScheduleView;->access$402(Lcom/android/calendar/ParticipantScheduleView;I)I

    .line 1288
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/ParticipantScheduleView;->access$400(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I
    invoke-static {v3}, Lcom/android/calendar/ParticipantScheduleView;->access$1000(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #getter for: Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I
    invoke-static {v3}, Lcom/android/calendar/ParticipantScheduleView;->access$1000(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v2, v3

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I
    invoke-static {v1, v2}, Lcom/android/calendar/ParticipantScheduleView;->access$1202(Lcom/android/calendar/ParticipantScheduleView;I)I

    goto :goto_29

    .line 1294
    :cond_8b
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    #setter for: Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z
    invoke-static {v1, v4}, Lcom/android/calendar/ParticipantScheduleView;->access$902(Lcom/android/calendar/ParticipantScheduleView;Z)Z

    .line 1295
    iput-boolean v4, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mIsInit:Z

    goto :goto_32
.end method
