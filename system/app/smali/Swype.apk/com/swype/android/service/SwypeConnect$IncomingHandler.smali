.class Lcom/swype/android/service/SwypeConnect$IncomingHandler;
.super Landroid/os/Handler;
.source "SwypeConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/service/SwypeConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final connectRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/swype/android/service/SwypeConnect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 256
    const-class v0, Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/swype/android/service/SwypeConnect$IncomingHandler;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/swype/android/service/SwypeConnect;)V
    .registers 3
    .parameter "connect"

    .prologue
    .line 258
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swype/android/service/SwypeConnect$IncomingHandler;->connectRef:Ljava/lang/ref/WeakReference;

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 269
    sget-boolean v1, Lcom/swype/android/service/SwypeConnect$IncomingHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7a

    if-le v1, v2, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 270
    :cond_10
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect$IncomingHandler;->connectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/service/SwypeConnect;

    .line 271
    .local v0, connect:Lcom/swype/android/service/SwypeConnect;
    if-eqz v0, :cond_1d

    .line 272
    invoke-virtual {v0, p0, p1}, Lcom/swype/android/service/SwypeConnect;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 274
    :cond_1d
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 262
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect$IncomingHandler;->connectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 263
    const/4 v0, 0x0

    .local v0, what:I
    :goto_6
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_10

    .line 264
    invoke-virtual {p0, v0}, Lcom/swype/android/service/SwypeConnect$IncomingHandler;->removeMessages(I)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 266
    :cond_10
    return-void
.end method
