.class public Lcom/android/contacts/NfcHandler;
.super Ljava/lang/Object;
.source "NfcHandler.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# instance fields
.field private final mContactFragment:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .registers 2
    .parameter "contactFragment"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/contacts/NfcHandler;->mContactFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 61
    return-void
.end method

.method public static register(Landroid/app/Activity;Lcom/android/contacts/detail/ContactDetailFragment;)V
    .registers 5
    .parameter "activity"
    .parameter "contactFragment"

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 53
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_b

    .line 57
    :goto_a
    return-void

    .line 56
    :cond_b
    new-instance v1, Lcom/android/contacts/NfcHandler;

    invoke-direct {v1, p1}, Lcom/android/contacts/NfcHandler;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_a
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 16
    .parameter "event"

    .prologue
    .line 66
    iget-object v10, p0, Lcom/android/contacts/NfcHandler;->mContactFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 67
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/contacts/NfcHandler;->mContactFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 68
    .local v6, resolver:Landroid/content/ContentResolver;
    if-eqz v1, :cond_93

    .line 69
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, lookupKey:Ljava/lang/String;
    const-string v10, "profile"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 74
    sget-object v10, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "nophoto"

    const-string v12, "true"

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 83
    .local v7, shareUri:Landroid/net/Uri;
    :goto_3b
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v4, ndefBytes:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 87
    .local v0, buffer:[B
    :try_start_44
    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 88
    .local v8, vcardInputStream:Ljava/io/InputStream;
    :goto_48
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, r:I
    if-lez v5, :cond_74

    .line 89
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_52} :catch_53

    goto :goto_48

    .line 95
    .end local v5           #r:I
    .end local v8           #vcardInputStream:Ljava/io/InputStream;
    :catch_53
    move-exception v2

    .line 96
    .local v2, e:Ljava/io/IOException;
    const-string v10, "ContactNfcHandler"

    const-string v11, "IOException creating vcard."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v10, 0x0

    .line 101
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .end local v7           #shareUri:Landroid/net/Uri;
    :goto_5c
    return-object v10

    .line 78
    .restart local v3       #lookupKey:Ljava/lang/String;
    :cond_5d
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "nophoto"

    const-string v12, "true"

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .restart local v7       #shareUri:Landroid/net/Uri;
    goto :goto_3b

    .line 92
    .restart local v0       #buffer:[B
    .restart local v4       #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #r:I
    .restart local v8       #vcardInputStream:Ljava/io/InputStream;
    :cond_74
    :try_start_74
    new-instance v9, Landroid/nfc/NdefRecord;

    const/4 v10, 0x2

    const-string v11, "text/x-vCard"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [B

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 94
    .local v9, vcardRecord:Landroid/nfc/NdefRecord;
    new-instance v10, Landroid/nfc/NdefMessage;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/nfc/NdefRecord;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-direct {v10, v11}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_92} :catch_53

    goto :goto_5c

    .line 100
    .end local v0           #buffer:[B
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #ndefBytes:Ljava/io/ByteArrayOutputStream;
    .end local v5           #r:I
    .end local v7           #shareUri:Landroid/net/Uri;
    .end local v8           #vcardInputStream:Ljava/io/InputStream;
    .end local v9           #vcardRecord:Landroid/nfc/NdefRecord;
    :cond_93
    const-string v10, "ContactNfcHandler"

    const-string v11, "No contact URI to share."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v10, 0x0

    goto :goto_5c
.end method
