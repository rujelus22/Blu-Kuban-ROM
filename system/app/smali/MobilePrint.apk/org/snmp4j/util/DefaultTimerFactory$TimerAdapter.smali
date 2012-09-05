.class Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;
.super Ljava/lang/Object;
.source "DefaultTimerFactory.java"

# interfaces
.implements Lorg/snmp4j/util/CommonTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/DefaultTimerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerAdapter"
.end annotation


# instance fields
.field private final this$0:Lorg/snmp4j/util/DefaultTimerFactory;

.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lorg/snmp4j/util/DefaultTimerFactory;)V
    .registers 4
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;->this$0:Lorg/snmp4j/util/DefaultTimerFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;->timer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 52
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .registers 5
    .parameter "task"
    .parameter "delay"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;->timer:Ljava/util/Timer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 48
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;JJ)V
    .registers 12
    .parameter "task"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 59
    iget-object v0, p0, Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;->timer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 60
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 6
    .parameter "task"
    .parameter "firstTime"
    .parameter "period"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/snmp4j/util/DefaultTimerFactory$TimerAdapter;->timer:Ljava/util/Timer;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 56
    return-void
.end method
