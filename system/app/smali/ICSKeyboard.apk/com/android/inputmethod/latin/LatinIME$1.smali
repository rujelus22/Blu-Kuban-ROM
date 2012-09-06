.class Lcom/android/inputmethod/latin/LatinIME$1;
.super Landroid/content/BroadcastReceiver;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    .line 2260
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2264
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2265
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$0(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 2269
    :cond_11
    :goto_11
    return-void

    .line 2266
    :cond_12
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2267
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIME;->access$1(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->onNetworkStateChanged(Landroid/content/Intent;)V

    goto :goto_11
.end method
