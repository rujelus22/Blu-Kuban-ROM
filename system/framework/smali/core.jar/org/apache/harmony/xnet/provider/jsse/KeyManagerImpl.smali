.class public Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;[C)V
    .registers 8
    .parameter "keyStore"
    .parameter "pwd"

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 62
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    .line 65
    :try_start_a
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_d} :catch_35

    move-result-object v1

    .line 69
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 70
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, alias:Ljava/lang/String;
    :try_start_1a
    const-class v4, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 73
    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v4, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p1, v0, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 75
    .local v3, entry:Ljava/security/KeyStore$PrivateKeyEntry;
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/security/KeyStoreException; {:try_start_1a .. :try_end_32} :catch_33
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1a .. :try_end_32} :catch_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_32} :catch_39

    goto :goto_e

    .line 77
    .end local v3           #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_33
    move-exception v2

    .line 78
    .local v2, e:Ljava/security/KeyStoreException;
    goto :goto_e

    .line 66
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #e:Ljava/security/KeyStoreException;
    :catch_35
    move-exception v2

    .line 85
    :cond_36
    return-void

    .line 79
    .restart local v0       #alias:Ljava/lang/String;
    .restart local v1       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_37
    move-exception v2

    .line 80
    .local v2, e:Ljava/security/UnrecoverableEntryException;
    goto :goto_e

    .line 81
    .end local v2           #e:Ljava/security/UnrecoverableEntryException;
    :catch_39
    move-exception v2

    .line 82
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_e
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 28
    .parameter "keyTypes"
    .parameter "issuers"

    .prologue
    .line 146
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_c

    .line 147
    :cond_9
    const/16 v23, 0x0

    .line 217
    :goto_b
    return-object v23

    .line 149
    :cond_c
    if-nez p2, :cond_6e

    const/16 v17, 0x0

    .line 150
    .local v17, issuersList:Ljava/util/List;,"Ljava/util/List<Ljava/security/Principal;>;"
    :goto_10
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v12, found:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_e5

    .line 152
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    .local v2, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 154
    .local v11, entry:Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v11}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v10

    .line 155
    .local v10, chain:[Ljava/security/cert/Certificate;
    const/16 v23, 0x0

    aget-object v6, v10, v23

    .line 156
    .local v6, cert:Ljava/security/cert/Certificate;
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, certKeyAlg:Ljava/lang/String;
    instance-of v0, v6, Ljava/security/cert/X509Certificate;

    move/from16 v23, v0

    if-eqz v23, :cond_73

    check-cast v6, Ljava/security/cert/X509Certificate;

    .end local v6           #cert:Ljava/security/cert/Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, certSigAlg:Ljava/lang/String;
    :goto_5b
    move-object/from16 v4, p1

    .local v4, arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    move v14, v13

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v19           #len$:I
    .local v14, i$:I
    :goto_62
    move/from16 v0, v19

    if-ge v14, v0, :cond_1f

    aget-object v18, v4, v14

    .line 161
    .local v18, keyAlgorithm:Ljava/lang/String;
    if-nez v18, :cond_75

    .line 160
    .end local v14           #i$:I
    :cond_6a
    :goto_6a
    add-int/lit8 v13, v14, 0x1

    .restart local v13       #i$:I
    move v14, v13

    .end local v13           #i$:I
    .restart local v14       #i$:I
    goto :goto_62

    .line 149
    .end local v2           #alias:Ljava/lang/String;
    .end local v3           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8           #certKeyAlg:Ljava/lang/String;
    .end local v9           #certSigAlg:Ljava/lang/String;
    .end local v10           #chain:[Ljava/security/cert/Certificate;
    .end local v11           #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v12           #found:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #i$:I
    .end local v17           #issuersList:Ljava/util/List;,"Ljava/util/List<Ljava/security/Principal;>;"
    .end local v18           #keyAlgorithm:Ljava/lang/String;
    :cond_6e
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    goto :goto_10

    .line 157
    .restart local v2       #alias:Ljava/lang/String;
    .restart local v3       #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #cert:Ljava/security/cert/Certificate;
    .restart local v8       #certKeyAlg:Ljava/lang/String;
    .restart local v10       #chain:[Ljava/security/cert/Certificate;
    .restart local v11       #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v12       #found:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #issuersList:Ljava/util/List;,"Ljava/util/List<Ljava/security/Principal;>;"
    :cond_73
    const/4 v9, 0x0

    goto :goto_5b

    .line 166
    .end local v6           #cert:Ljava/security/cert/Certificate;
    .restart local v9       #certSigAlg:Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v18       #keyAlgorithm:Ljava/lang/String;
    :cond_75
    const/16 v23, 0x5f

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 167
    .local v15, index:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_a6

    .line 168
    move-object/from16 v21, v18

    .line 174
    .local v21, sigAlgorithm:Ljava/lang/String;
    :goto_87
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6a

    .line 184
    if-eqz v9, :cond_99

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_6a

    .line 188
    :cond_99
    if-eqz p2, :cond_a2

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_bb

    .line 189
    :cond_a2
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 170
    .end local v21           #sigAlgorithm:Ljava/lang/String;
    :cond_a6
    add-int/lit8 v23, v15, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 171
    .restart local v21       #sigAlgorithm:Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_87

    .line 193
    :cond_bb
    move-object v5, v10

    .local v5, arr$:[Ljava/security/cert/Certificate;
    array-length v0, v5

    move/from16 v20, v0

    .local v20, len$:I
    const/4 v13, 0x0

    .end local v14           #i$:I
    .restart local v13       #i$:I
    :goto_c0
    move/from16 v0, v20

    if-ge v13, v0, :cond_6a

    aget-object v7, v5, v13

    .line 194
    .local v7, certFromChain:Ljava/security/cert/Certificate;
    instance-of v0, v7, Ljava/security/cert/X509Certificate;

    move/from16 v23, v0

    if-nez v23, :cond_cf

    .line 193
    :cond_cc
    :goto_cc
    add-int/lit8 v13, v13, 0x1

    goto :goto_c0

    :cond_cf
    move-object/from16 v22, v7

    .line 198
    check-cast v22, Ljava/security/cert/X509Certificate;

    .line 207
    .local v22, xcertFromChain:Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v16

    .line 208
    .local v16, issuerFromChain:Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_cc

    .line 209
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    .line 214
    .end local v2           #alias:Ljava/lang/String;
    .end local v5           #arr$:[Ljava/security/cert/Certificate;
    .end local v7           #certFromChain:Ljava/security/cert/Certificate;
    .end local v8           #certKeyAlg:Ljava/lang/String;
    .end local v9           #certSigAlg:Ljava/lang/String;
    .end local v10           #chain:[Ljava/security/cert/Certificate;
    .end local v11           #entry:Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v13           #i$:I
    .end local v15           #index:I
    .end local v16           #issuerFromChain:Ljavax/security/auth/x500/X500Principal;
    .end local v18           #keyAlgorithm:Ljava/lang/String;
    .end local v20           #len$:I
    .end local v21           #sigAlgorithm:Ljava/lang/String;
    .end local v22           #xcertFromChain:Ljava/security/cert/X509Certificate;
    :cond_e5
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_ff

    .line 215
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    goto/16 :goto_b

    .line 217
    :cond_ff
    const/16 v23, 0x0

    goto/16 :goto_b
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 6
    .parameter "keyTypes"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, al:[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 6
    .parameter "keyTypes"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, al:[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 7
    .parameter "keyType"
    .parameter "issuers"
    .parameter "engine"

    .prologue
    const/4 v2, 0x0

    .line 141
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, al:[Ljava/lang/String;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    aget-object v1, v0, v2

    goto :goto_d
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 7
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    const/4 v2, 0x0

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, al:[Ljava/lang/String;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    aget-object v1, v0, v2

    goto :goto_d
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 6
    .parameter "alias"

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p1, :cond_4

    .line 111
    :cond_3
    return-object v2

    .line 101
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 103
    .local v0, certs:[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_3

    .line 104
    array-length v3, v0

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 105
    .local v2, xcerts:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 106
    aget-object v3, v0, v1

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v2, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4
    .parameter "alias"

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p1, :cond_4

    .line 130
    :cond_3
    :goto_3
    return-object v0

    .line 127
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_3
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
