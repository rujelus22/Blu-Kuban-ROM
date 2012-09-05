.class Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;
.super Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;
.source "Nfc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Nfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerbreadMr1NfcHandler"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V

    return-void
.end method

.method private setPushMessage()V
    .registers 4

    .prologue
    .line 147
    iget-boolean v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 148
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->createMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 149
    .local v0, message:Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_20

    .line 150
    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    .line 154
    .end local v0           #message:Landroid/nfc/NdefMessage;
    :cond_20
    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->setPushMessage()V

    .line 144
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    if-eqz v0, :cond_12

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    .line 134
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->setPushMessage()V

    .line 139
    return-void
.end method
