.class public Lcom/google/googlenav/android/Z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# static fields
.field private static a:Lcom/google/googlenav/android/Z;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/googlenav/android/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/android/Z;->a:Lcom/google/googlenav/android/Z;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/google/googlenav/android/aa;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/Z;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/googlenav/android/Z;->c:Lcom/google/googlenav/android/aa;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x0

    sput-object v1, Lcom/google/googlenav/android/Z;->a:Lcom/google/googlenav/android/Z;

    sget-object v1, Lcom/google/googlenav/android/Z;->a:Lcom/google/googlenav/android/Z;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_a
.end method

.method public static a(Landroid/app/Activity;Lcom/google/googlenav/android/aa;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    sget-object v1, Lcom/google/googlenav/android/Z;->a:Lcom/google/googlenav/android/Z;

    if-nez v1, :cond_16

    new-instance v1, Lcom/google/googlenav/android/Z;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/android/Z;-><init>(Landroid/app/Activity;Lcom/google/googlenav/android/aa;)V

    sput-object v1, Lcom/google/googlenav/android/Z;->a:Lcom/google/googlenav/android/Z;

    :cond_16
    sget-object v1, Lcom/google/googlenav/android/Z;->a:Lcom/google/googlenav/android/Z;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_a
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/android/Z;->c:Lcom/google/googlenav/android/aa;

    invoke-interface {v0}, Lcom/google/googlenav/android/aa;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_9
.end method
