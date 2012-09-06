.class public final Lcom/google/android/youtube/app/honeycomb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/core/player/Director;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 25
    const-string v0, "activity can\'t be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "director can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :try_start_a
    const-string v0, "android.nfc.NfcAdapter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 30
    if-nez v0, :cond_16

    .line 39
    :goto_15
    return-void

    .line 33
    :cond_16
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/d;

    invoke-direct {v1, p1}, Lcom/google/android/youtube/app/honeycomb/d;-><init>(Lcom/google/android/youtube/core/player/Director;)V

    .line 34
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 35
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_15

    .line 39
    :catch_28
    move-exception v0

    goto :goto_15
.end method
