.class public Lmyorg/bouncycastle/mail/smime/SMIMEUtil;
.super Ljava/lang/Object;
.source "SMIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;,
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$WriteOnceFileBackedMimeBodyPart;,
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 451
    return-void
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 5
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p0, :cond_28

    .line 48
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 50
    .local v0, prov:Ljava/security/Provider;
    if-eqz v0, :cond_9

    .line 57
    .end local v0           #prov:Ljava/security/Provider;
    :goto_8
    return-object v0

    .line 54
    .restart local v0       #prov:Ljava/security/Provider;
    :cond_9
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0           #prov:Ljava/security/Provider;
    :cond_28
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static isCanonicalisationRequired(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Z
    .registers 6
    .parameter "bodyPart"
    .parameter "defaultContentTransferEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    const-string v3, "Content-Transfer-Encoding"

    invoke-virtual {p0, v3}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, cte:[Ljava/lang/String;
    if-nez v1, :cond_14

    .line 38
    move-object v0, p1

    .line 43
    .local v0, contentTransferEncoding:Ljava/lang/String;
    :goto_a
    const-string v3, "binary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2

    .line 40
    .end local v0           #contentTransferEncoding:Ljava/lang/String;
    :cond_14
    aget-object v0, v1, v2

    .restart local v0       #contentTransferEncoding:Ljava/lang/String;
    goto :goto_a
.end method

.method static outputPreamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V
    .registers 8
    .parameter "lOut"
    .parameter "part"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_3} :catch_1d

    move-result-object v1

    .line 121
    .local v1, in:Ljava/io/InputStream;
    :goto_4
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_10

    .line 122
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 129
    :cond_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 131
    if-nez v2, :cond_1e

    .line 132
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "no boundary found"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #line:Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 134
    :cond_1e
    return-void

    .line 126
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #line:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    .local v0, b:Ljava/lang/StringBuffer;
    :cond_5
    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-ltz v1, :cond_18

    const/16 v2, 0xa

    if-eq v1, v2, :cond_18

    .line 214
    const/16 v2, 0xd

    if-eq v1, v2, :cond_5

    .line 215
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 219
    :cond_18
    if-gez v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_22

    .line 220
    const/4 v2, 0x0

    .line 223
    :goto_21
    return-object v2

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21
.end method
