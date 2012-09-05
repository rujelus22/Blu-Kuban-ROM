.class Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;
.super Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;
.source "Nfc.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Nfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcsNfcHandler"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_16

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, p0, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 172
    :cond_16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V

    return-void
.end method

.method private setPushMessage(Landroid/nfc/NdefMessage;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_12

    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 199
    :cond_12
    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 3
    .parameter "event"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->createMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

.method public onDataChanged()V
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->createMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->setPushMessage(Landroid/nfc/NdefMessage;)V

    .line 193
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->setPushMessage(Landroid/nfc/NdefMessage;)V

    .line 183
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->createMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/Nfc$IcsNfcHandler;->setPushMessage(Landroid/nfc/NdefMessage;)V

    .line 188
    return-void
.end method
