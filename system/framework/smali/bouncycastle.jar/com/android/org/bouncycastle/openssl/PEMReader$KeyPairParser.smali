.class abstract Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "KeyPairParser"
.end annotation


# instance fields
.field protected provider:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "provider"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method protected readKeyPair(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 15
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v10, 0x0

    .line 192
    .local v10, isEncrypted:Z
    const/4 v6, 0x0

    .line 193
    .local v6, dekInfo:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v9

    .line 195
    .local v9, headers:Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, it:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 197
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    .line 199
    .local v8, hdr:Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proc-Type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4,ENCRYPTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 201
    const/4 v10, 0x1

    goto :goto_a

    .line 203
    :cond_30
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEK-Info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    .line 212
    .end local v8           #hdr:Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    :cond_41
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v2

    .line 214
    .local v2, keyBytes:[B
    if-eqz v10, :cond_85

    .line 216
    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static {v0}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v0

    if-nez v0, :cond_57

    .line 218
    new-instance v0, Lcom/android/org/bouncycastle/openssl/PasswordException;

    const-string v1, "No password finder specified, but a password is required"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_57
    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    #getter for: Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    invoke-static {v0}, Lcom/android/org/bouncycastle/openssl/PEMReader;->access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v3

    .line 223
    .local v3, password:[C
    if-nez v3, :cond_6b

    .line 225
    new-instance v0, Lcom/android/org/bouncycastle/openssl/PasswordException;

    const-string v1, "Password is null, but a password is required"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_6b
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v12, v6, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v12, tknz:Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, dekAlgName:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 232
    .local v5, iv:[B
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/openssl/PEMUtilities;->crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B

    move-result-object v2

    .line 237
    .end local v3           #password:[C
    .end local v4           #dekAlgName:Ljava/lang/String;
    .end local v5           #iv:[B
    .end local v12           #tknz:Ljava/util/StringTokenizer;
    :cond_85
    :try_start_85
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8b} :catch_8c
    .catch Ljava/lang/ClassCastException; {:try_start_85 .. :try_end_8b} :catch_a1

    return-object v0

    .line 239
    :catch_8c
    move-exception v7

    .line 241
    .local v7, e:Ljava/io/IOException;
    if-eqz v10, :cond_97

    .line 243
    new-instance v0, Lcom/android/org/bouncycastle/openssl/PEMException;

    const-string v1, "exception decoding - please check password and data."

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 247
    :cond_97
    new-instance v0, Lcom/android/org/bouncycastle/openssl/PEMException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 250
    .end local v7           #e:Ljava/io/IOException;
    :catch_a1
    move-exception v7

    .line 252
    .local v7, e:Ljava/lang/ClassCastException;
    if-eqz v10, :cond_ac

    .line 254
    new-instance v0, Lcom/android/org/bouncycastle/openssl/PEMException;

    const-string v1, "exception decoding - please check password and data."

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 258
    :cond_ac
    new-instance v0, Lcom/android/org/bouncycastle/openssl/PEMException;

    invoke-virtual {v7}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
