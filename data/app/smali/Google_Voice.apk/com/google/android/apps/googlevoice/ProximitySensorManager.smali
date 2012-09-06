.class public Lcom/google/android/apps/googlevoice/ProximitySensorManager;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/android/apps/googlevoice/ui/EventFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/android/apps/googlevoice/ui/EventFilter",
        "<",
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_TOUCH_EVENT_DISTANCE:F = 0.5f


# instance fields
.field private consumeTouchEvents:Z

.field private eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private lastTouchEvent:Landroid/view/MotionEvent;

.field private listener:Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private final proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

.field private proximitySensorEnabled:Z

.field private final sensorManager:Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;

.field private skipEventsUntilNextDownEvent:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;Lcom/google/android/apps/common/log/GLog;)V
    .registers 5
    .parameter "sensorManager"
    .parameter "log"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensorEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->consumeTouchEvents:Z

    .line 64
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;

    .line 65
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->skipEventsUntilNextDownEvent:Z

    .line 67
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->lastTouchEvent:Landroid/view/MotionEvent;

    .line 69
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->listener:Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->sensorManager:Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;

    .line 73
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->log:Lcom/google/android/apps/common/log/GLog;

    .line 74
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;->getProximitySensor()Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    .line 75
    return-void
.end method

.method private isEventOfType(Landroid/view/MotionEvent;I)Z
    .registers 4
    .parameter "event"
    .parameter "action"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private declared-synchronized startConsumingEvents()V
    .registers 5

    .prologue
    .line 179
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->consumeTouchEvents:Z

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->lastTouchEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;

    if-eqz v1, :cond_33

    .line 183
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->lastTouchEvent:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 184
    .local v0, cancelEvent:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 185
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touch became disabled, sending CANCEL event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;->injectEvent(Ljava/lang/Object;)V

    .line 188
    .end local v0           #cancelEvent:Landroid/view/MotionEvent;
    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->lastTouchEvent:Landroid/view/MotionEvent;

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->listener:Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;

    if-eqz v1, :cond_3f

    .line 190
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->listener:Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;->onNear()V
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_41

    .line 192
    :cond_3f
    monitor-exit p0

    return-void

    .line 179
    :catchall_41
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized stopConsumingEvents()V
    .registers 2

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->consumeTouchEvents:Z

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->skipEventsUntilNextDownEvent:Z

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->lastTouchEvent:Landroid/view/MotionEvent;

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->listener:Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;

    if-eqz v0, :cond_13

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->listener:Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;->onFar()V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 203
    :cond_13
    monitor-exit p0

    return-void

    .line 195
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearEventDispatcher()V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->stopConsumingEvents()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;

    .line 91
    return-void
.end method

.method public declared-synchronized disable()V
    .registers 4

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensorEnabled:Z

    if-eqz v0, :cond_30

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableProximitySensor(), sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->sensorManager:Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;->unregisterListener(Landroid/hardware/SensorEventListener;Lcom/google/android/apps/googlevoice/proxy/SensorProxy;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensorEnabled:Z

    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->stopConsumingEvents()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 114
    :cond_30
    monitor-exit p0

    return-void

    .line 108
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .registers 4

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensorEnabled:Z

    if-nez v0, :cond_31

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableProximitySensor(), sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->sensorManager:Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;->registerListener(Landroid/hardware/SensorEventListener;Lcom/google/android/apps/googlevoice/proxy/SensorProxy;I)Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensorEnabled:Z

    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->stopConsumingEvents()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 104
    :cond_31
    monitor-exit p0

    return-void

    .line 95
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized filterEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;

    if-nez v2, :cond_10

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "You have not called setEventDispatcher(), can\'t forward the events"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_5a

    .line 146
    :goto_e
    monitor-exit p0

    return v0

    .line 124
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->consumeTouchEvents:Z

    if-eqz v0, :cond_16

    move v0, v1

    .line 126
    goto :goto_e

    .line 129
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->skipEventsUntilNextDownEvent:Z

    if-eqz v0, :cond_47

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->isEventOfType(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was waiting for and received a DOWN event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->skipEventsUntilNextDownEvent:Z

    .line 135
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->lastTouchEvent:Landroid/view/MotionEvent;

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;->dispatchFilteredEvent(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    :cond_45
    move v0, v1

    .line 139
    goto :goto_e

    .line 145
    :cond_47
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->isEventOfType(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    :goto_4f
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->lastTouchEvent:Landroid/view/MotionEvent;

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;->dispatchFilteredEvent(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_5a

    move-result v0

    goto :goto_e

    :cond_58
    move-object v0, p1

    .line 145
    goto :goto_4f

    .line 118
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic filterEvent(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->filterEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 156
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/googlevoice/proxy/SensorEventProxyImpl;

    invoke-direct {v0, p1}, Lcom/google/android/apps/googlevoice/proxy/SensorEventProxyImpl;-><init>(Landroid/hardware/SensorEvent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->onSensorChanged(Lcom/google/android/apps/googlevoice/proxy/SensorEventProxy;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSensorChanged(Lcom/google/android/apps/googlevoice/proxy/SensorEventProxy;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->proximitySensor:Lcom/google/android/apps/googlevoice/proxy/SensorProxy;

    invoke-interface {p1, v1}, Lcom/google/android/apps/googlevoice/proxy/SensorEventProxy;->didComeFromThisSensor(Lcom/google/android/apps/googlevoice/proxy/SensorProxy;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 160
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Weird, an event fired for a different sensor?"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3b

    .line 171
    :goto_10
    monitor-exit p0

    return-void

    .line 164
    :cond_12
    :try_start_12
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/SensorEventProxy;->values()[F

    move-result-object v1

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 165
    .local v0, distance:F
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSensorChanged(): new distance is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 166
    const/high16 v1, 0x3f00

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3e

    .line 167
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->stopConsumingEvents()V
    :try_end_3a
    .catchall {:try_start_12 .. :try_end_3a} :catchall_3b

    goto :goto_10

    .line 159
    .end local v0           #distance:F
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 169
    .restart local v0       #distance:F
    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->startConsumingEvents()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    goto :goto_10
.end method

.method public declared-synchronized setEventDispatcher(Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher",
            "<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, dispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;,"Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher<Landroid/view/MotionEvent;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->stopConsumingEvents()V

    .line 84
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->eventDispatcher:Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setListener(Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->listener:Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;

    .line 79
    return-void
.end method
