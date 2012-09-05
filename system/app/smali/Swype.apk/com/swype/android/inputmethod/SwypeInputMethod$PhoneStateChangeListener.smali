.class Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "SwypeInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/inputmethod/SwypeInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneStateChangeListener"
.end annotation


# instance fields
.field private final imeRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/swype/android/inputmethod/SwypeInputMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 3
    .parameter "ime"

    .prologue
    .line 619
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 620
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;->imeRef:Ljava/lang/ref/WeakReference;

    .line 621
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "number"

    .prologue
    .line 624
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;->imeRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeInputMethod;

    .line 625
    .local v0, ime:Lcom/swype/android/inputmethod/SwypeInputMethod;
    if-eqz v0, :cond_d

    .line 626
    invoke-virtual {v0, p1, p2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onCallStateChanged(ILjava/lang/String;)V

    .line 628
    :cond_d
    return-void
.end method
