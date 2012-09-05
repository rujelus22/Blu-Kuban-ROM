.class Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;
.super Ljava/util/TimerTask;
.source "SwypeCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwypeTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/jni/SwypeCore;

.field timerId:I


# direct methods
.method constructor <init>(Lcom/swype/android/jni/SwypeCore;I)V
    .registers 3
    .parameter
    .parameter "timerId"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;->this$0:Lcom/swype/android/jni/SwypeCore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 629
    iput p2, p0, Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;->timerId:I

    .line 630
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;->this$0:Lcom/swype/android/jni/SwypeCore;

    iget v1, p0, Lcom/swype/android/jni/SwypeCore$SwypeTimerTask;->timerId:I

    #calls: Lcom/swype/android/jni/SwypeCore;->nativeTimerFunction(I)V
    invoke-static {v0, v1}, Lcom/swype/android/jni/SwypeCore;->access$000(Lcom/swype/android/jni/SwypeCore;I)V

    .line 634
    return-void
.end method
