.class public final Lcom/google/android/youtube/app/honeycomb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/p;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/p;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/c;->a:Lcom/google/android/youtube/core/player/p;

    .line 39
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/core/player/p;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 26
    const-string v0, "activity can\'t be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "director can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 29
    if-nez v0, :cond_12

    .line 35
    :goto_11
    return-void

    .line 32
    :cond_12
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/c;

    invoke-direct {v1, p1}, Lcom/google/android/youtube/app/honeycomb/c;-><init>(Lcom/google/android/youtube/core/player/p;)V

    .line 33
    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 34
    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_11
.end method


# virtual methods
.method public final createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/c;->a:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->x()Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_48

    .line 44
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/c;->a:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/p;->y()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-array v3, v5, [B

    new-array v4, v5, [B

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 48
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    aput-object v1, v2, v5

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 50
    :goto_47
    return-object v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method

.method public final onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/c;->a:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->s()V

    .line 55
    return-void
.end method
