.class public Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuggestionSpanPickedNotificationReceiver.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;->DBG:Z

    .line 30
    const-class v0, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    const-string v2, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 35
    sget-boolean v2, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;->DBG:Z

    if-eqz v2, :cond_3a

    .line 37
    const-string v2, "before"

    .line 36
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, before:Ljava/lang/String;
    const-string v2, "after"

    .line 38
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, after:Ljava/lang/String;
    sget-object v2, Lcom/android/inputmethod/latin/SuggestionSpanPickedNotificationReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received notification picked: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0           #after:Ljava/lang/String;
    .end local v1           #before:Ljava/lang/String;
    :cond_3a
    return-void
.end method
