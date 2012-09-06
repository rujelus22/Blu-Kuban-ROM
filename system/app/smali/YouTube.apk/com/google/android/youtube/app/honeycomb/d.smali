.class final Lcom/google/android/youtube/app/honeycomb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/d;->a:Lcom/google/android/youtube/core/player/Director;

    .line 48
    return-void
.end method


# virtual methods
.method public final createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/d;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->z()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_44

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/d;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/Director;->A()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-array v3, v5, [B

    new-array v4, v5, [B

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 57
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    aput-object v1, v2, v5

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 59
    :goto_43
    return-object v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public final onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 64
    return-void
.end method
