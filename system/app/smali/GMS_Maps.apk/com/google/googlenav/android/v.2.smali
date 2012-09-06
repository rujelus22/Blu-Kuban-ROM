.class public Lcom/google/googlenav/android/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# static fields
.field private static a:Lcom/google/googlenav/android/V;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/googlenav/android/W;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/android/V;->a:Lcom/google/googlenav/android/V;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/google/googlenav/android/W;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/googlenav/android/V;->b:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/google/googlenav/android/V;->c:Lcom/google/googlenav/android/W;

    .line 33
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 62
    if-nez v0, :cond_b

    .line 70
    :goto_a
    return-void

    .line 68
    :cond_b
    const/4 v1, 0x0

    sput-object v1, Lcom/google/googlenav/android/V;->a:Lcom/google/googlenav/android/V;

    .line 69
    sget-object v1, Lcom/google/googlenav/android/V;->a:Lcom/google/googlenav/android/V;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_a
.end method

.method public static a(Landroid/app/Activity;Lcom/google/googlenav/android/W;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 43
    if-nez v0, :cond_b

    .line 52
    :goto_a
    return-void

    .line 47
    :cond_b
    sget-object v1, Lcom/google/googlenav/android/V;->a:Lcom/google/googlenav/android/V;

    if-nez v1, :cond_16

    .line 48
    new-instance v1, Lcom/google/googlenav/android/V;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/android/V;-><init>(Landroid/app/Activity;Lcom/google/googlenav/android/W;)V

    sput-object v1, Lcom/google/googlenav/android/V;->a:Lcom/google/googlenav/android/V;

    .line 51
    :cond_16
    sget-object v1, Lcom/google/googlenav/android/V;->a:Lcom/google/googlenav/android/V;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_a
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 6
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/googlenav/android/V;->c:Lcom/google/googlenav/android/W;

    invoke-interface {v0}, Lcom/google/googlenav/android/W;->getNfcUrl()Ljava/lang/String;

    move-result-object v0

    .line 76
    if-nez v0, :cond_a

    .line 77
    const/4 v0, 0x0

    .line 81
    :goto_9
    return-object v0

    .line 79
    :cond_a
    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 80
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_9
.end method
