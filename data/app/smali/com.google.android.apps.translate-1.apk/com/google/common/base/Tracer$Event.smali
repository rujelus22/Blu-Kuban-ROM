.class final Lcom/google/common/base/Tracer$Event;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Event"
.end annotation


# static fields
.field private static final INDENT_STR:Ljava/lang/String; = "|  "


# instance fields
.field isStart:Z

.field tracer:Lcom/google/common/base/Tracer;


# direct methods
.method constructor <init>(ZLcom/google/common/base/Tracer;)V
    .registers 3
    .parameter "start"
    .parameter "t"

    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-boolean p1, p0, Lcom/google/common/base/Tracer$Event;->isStart:Z

    .line 712
    iput-object p2, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    .line 713
    return-void
.end method


# virtual methods
.method appendTo(Ljava/lang/StringBuilder;JII)V
    .registers 13
    .parameter "sb"
    .parameter "prevEventTime"
    .parameter "indentDepth"
    .parameter "digitsColWidth"

    .prologue
    .line 734
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_35

    .line 735
    invoke-static {p1, p5}, Lcom/google/common/base/Tracer;->appendSpaces(Ljava/lang/StringBuilder;I)V

    .line 740
    :goto_9
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p0}, Lcom/google/common/base/Tracer$Event;->eventTime()J

    move-result-wide v3

    #calls: Lcom/google/common/base/Tracer;->formatTime(J)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/google/common/base/Tracer;->access$500(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-boolean v3, p0, Lcom/google/common/base/Tracer$Event;->isStart:Z

    if-eqz v3, :cond_3e

    .line 743
    const-string v3, " Start "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {p1, p5}, Lcom/google/common/base/Tracer;->appendSpaces(Ljava/lang/StringBuilder;I)V

    .line 745
    const-string v3, "   "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_2a
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    if-ge v2, p4, :cond_90

    .line 761
    const-string v3, "|  "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 737
    .end local v2           #i:I
    :cond_35
    invoke-virtual {p0}, Lcom/google/common/base/Tracer$Event;->eventTime()J

    move-result-wide v3

    sub-long/2addr v3, p2

    #calls: Lcom/google/common/base/Tracer;->appendPaddedLong(Ljava/lang/StringBuilder;JI)V
    invoke-static {p1, v3, v4, p5}, Lcom/google/common/base/Tracer;->access$400(Ljava/lang/StringBuilder;JI)V

    goto :goto_9

    .line 747
    :cond_3e
    const-string v3, " Done "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget-object v3, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->stopTimeMs:J
    invoke-static {v3}, Lcom/google/common/base/Tracer;->access$300(Lcom/google/common/base/Tracer;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->startTimeMs:J
    invoke-static {v5}, Lcom/google/common/base/Tracer;->access$200(Lcom/google/common/base/Tracer;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 749
    .local v0, delta:J
    #calls: Lcom/google/common/base/Tracer;->appendPaddedLong(Ljava/lang/StringBuilder;JI)V
    invoke-static {p1, v0, v1, p5}, Lcom/google/common/base/Tracer;->access$400(Ljava/lang/StringBuilder;JI)V

    .line 750
    const-string v3, " ms "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object v3, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static {v3}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 752
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_62
    iget-object v3, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static {v3}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2a

    .line 753
    iget-object v3, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->extraTracingValues:[J
    invoke-static {v3}, Lcom/google/common/base/Tracer;->access$600(Lcom/google/common/base/Tracer;)[J

    move-result-object v3

    aget-wide v0, v3, v2

    .line 754
    const/4 v3, 0x4

    #calls: Lcom/google/common/base/Tracer;->appendPaddedLong(Ljava/lang/StringBuilder;JI)V
    invoke-static {p1, v0, v1, v3}, Lcom/google/common/base/Tracer;->access$400(Ljava/lang/StringBuilder;JI)V

    .line 755
    invoke-static {}, Lcom/google/common/base/Tracer;->access$700()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/TracingStatistic;

    invoke-interface {v3}, Lcom/google/common/base/TracingStatistic;->getUnits()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    const-string v3, ";  "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 763
    .end local v0           #delta:J
    :cond_90
    iget-object v3, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #calls: Lcom/google/common/base/Tracer;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    invoke-static {v3, p1}, Lcom/google/common/base/Tracer;->access$800(Lcom/google/common/base/Tracer;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 764
    return-void
.end method

.method eventTime()J
    .registers 3

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/google/common/base/Tracer$Event;->isStart:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->startTimeMs:J
    invoke-static {v0}, Lcom/google/common/base/Tracer;->access$200(Lcom/google/common/base/Tracer;)J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/google/common/base/Tracer$Event;->tracer:Lcom/google/common/base/Tracer;

    #getter for: Lcom/google/common/base/Tracer;->stopTimeMs:J
    invoke-static {v0}, Lcom/google/common/base/Tracer;->access$300(Lcom/google/common/base/Tracer;)J

    move-result-wide v0

    goto :goto_a
.end method
