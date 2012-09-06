.class public Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;
.super Landroid/app/Activity;
.source "ProximitySensorActivityBase.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher",
        "<",
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MINIMUN_SCREEN_BRIGHTNESS:I = 0x0

.field private static final WINDOW_FLAGS_FULLSCREEN_MASK:I = 0x8400

.field private static final WINDOW_FLAGS_FULLSCREEN_OFF:I = 0x0

.field private static final WINDOW_FLAGS_FULLSCREEN_ON:I = 0x8400


# instance fields
.field private fullscreen:Z

.field private proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->fullscreen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->setFullscreen(Z)V

    return-void
.end method

.method static synthetic access$101(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private setFullscreen(Z)V
    .registers 5
    .parameter "fullscreen"

    .prologue
    const v2, 0x8400

    .line 119
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->fullscreen:Z

    if-eq p1, v0, :cond_12

    .line 120
    if-eqz p1, :cond_13

    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 125
    :goto_10
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->fullscreen:Z

    .line 127
    :cond_12
    return-void

    .line 123
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_10
.end method


# virtual methods
.method public disableProximitySensor()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->disable()V

    .line 116
    return-void
.end method

.method public dispatchFilteredEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchFilteredEvent(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->dispatchFilteredEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->filterEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableProximitySensor()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->enable()V

    .line 112
    return-void
.end method

.method public injectEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$2;-><init>(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public bridge synthetic injectEvent(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->injectEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    .line 56
    .local v2, resolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v0

    .line 57
    .local v0, contextProxy:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;
    const-string v4, "sensor"

    invoke-interface {v0, v4}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getSystemServiceProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;

    .line 59
    .local v3, sensorManager:Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v1

    .line 60
    .local v1, logger:Lcom/google/android/apps/common/log/GLog;
    new-instance v4, Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    invoke-direct {v4, v3, v1}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;-><init>(Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;Lcom/google/android/apps/common/log/GLog;)V

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    .line 61
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->setEventDispatcher(Lcom/google/android/apps/googlevoice/ui/EventFilter$EventDispatcher;)V

    .line 62
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    new-instance v5, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$1;

    invoke-direct {v5, p0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase$1;-><init>(Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->setListener(Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->clearEventDispatcher()V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->proximitySensorManager:Lcom/google/android/apps/googlevoice/ProximitySensorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/ProximitySensorManager;->setListener(Lcom/google/android/apps/googlevoice/ProximitySensorManager$Listener;)V

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    return-void
.end method
