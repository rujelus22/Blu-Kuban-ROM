.class public abstract Lcom/swype/android/compat/MultitouchHandler;
.super Ljava/lang/Object;
.source "MultitouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;,
        Lcom/swype/android/compat/MultitouchHandler$HandleMultitouch;
    }
.end annotation


# static fields
.field private static final FILTER:Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter; = null

.field private static final FILTER_MULTITOUCH_5:Ljava/lang/String; = "com.swype.android.compat.MultitouchFilter5"

.field private static final HANDLER:Lcom/swype/android/compat/MultitouchHandler$HandleMultitouch; = null

.field private static final HANDLE_MULTITOUCH_3:Ljava/lang/String; = "com.swype.android.compat.HandleMultitouch3"

.field private static final HANDLE_MULTITOUCH_5:Ljava/lang/String; = "com.swype.android.compat.HandleMultitouch5"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-static {}, Lcom/swype/android/inputmethod/ConfigSetting;->getAndroidVersion()I

    move-result v0

    .line 40
    const/4 v1, 0x5

    if-ge v0, v1, :cond_32

    .line 41
    const-string v0, "com.swype.android.compat.HandleMultitouch3"

    move-object v1, v3

    .line 52
    :goto_b
    :try_start_b
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/swype/android/compat/MultitouchHandler$HandleMultitouch;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/compat/MultitouchHandler$HandleMultitouch;

    sput-object v0, Lcom/swype/android/compat/MultitouchHandler;->HANDLER:Lcom/swype/android/compat/MultitouchHandler$HandleMultitouch;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_37

    .line 59
    if-eqz v1, :cond_45

    .line 61
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;

    sput-object v0, Lcom/swype/android/compat/MultitouchHandler;->FILTER:Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_3e

    .line 71
    :goto_31
    return-void

    .line 44
    :cond_32
    const-string v0, "com.swype.android.compat.HandleMultitouch5"

    .line 45
    const-string v1, "com.swype.android.compat.MultitouchFilter5"

    goto :goto_b

    .line 55
    :catch_37
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :catch_3e
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_45
    sput-object v3, Lcom/swype/android/compat/MultitouchHandler;->FILTER:Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;

    goto :goto_31
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static handleMT(Landroid/view/MotionEvent;Lcom/swype/android/widget/MultitouchEventReceiver;I)V
    .registers 5
    .parameter "event"
    .parameter "receiver"
    .parameter "windowType"

    .prologue
    .line 117
    sget-object v0, Lcom/swype/android/compat/MultitouchHandler;->HANDLER:Lcom/swype/android/compat/MultitouchHandler$HandleMultitouch;

    sget-object v1, Lcom/swype/android/compat/MultitouchHandler;->FILTER:Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/swype/android/compat/MultitouchHandler$HandleMultitouch;->handleMT(Landroid/view/MotionEvent;Lcom/swype/android/widget/MultitouchEventReceiver;ILcom/swype/android/compat/MultitouchHandler$MultitouchFilter;)V

    .line 118
    return-void
.end method
