.class public Ljcifs/a/d;
.super Ljcifs/a/a;


# static fields
.field private static final b:I

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:I

.field private static final h:Ljava/security/SecureRandom;


# instance fields
.field private i:[B

.field private j:[B

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:[B

.field private o:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sput-object v2, Ljcifs/a/d;->h:Ljava/security/SecureRandom;

    const-string v2, "jcifs.smb.client.useUnicode"

    invoke-static {v2, v0}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_41

    :goto_11
    or-int/lit16 v0, v0, 0x200

    sput v0, Ljcifs/a/d;->b:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/a/d;->c:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/a/d;->d:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/a/d;->e:Ljava/lang/String;

    :try_start_2d
    invoke-static {}, Ljcifs/netbios/g;->a()Ljcifs/netbios/g;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/g;->g()Ljava/lang/String;
    :try_end_34
    .catch Ljava/net/UnknownHostException; {:try_start_2d .. :try_end_34} :catch_43

    move-result-object v0

    :goto_35
    sput-object v0, Ljcifs/a/d;->f:Ljava/lang/String;

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/a/d;->g:I

    return-void

    :cond_41
    const/4 v0, 0x2

    goto :goto_11

    :catch_43
    move-exception v0

    move-object v0, v1

    goto :goto_35
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljcifs/a/a;-><init>()V

    iput-object v0, p0, Ljcifs/a/d;->n:[B

    iput-object v0, p0, Ljcifs/a/d;->o:[B

    invoke-static {}, Ljcifs/a/d;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->a(I)V

    invoke-static {}, Ljcifs/a/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->a(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/a/d;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->b(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/a/d;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    const/high16 v7, 0x4000

    const/16 v4, 0x18

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {p0}, Ljcifs/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/a/d;->n:[B

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/a/d;->o:[B

    invoke-static {p1}, Ljcifs/a/d;->a(Ljcifs/a/c;)I

    move-result v0

    or-int/2addr v0, p6

    invoke-virtual {p0, v0}, Ljcifs/a/d;->a(I)V

    if-nez p5, :cond_20

    invoke-static {}, Ljcifs/a/d;->n()Ljava/lang/String;

    move-result-object p5

    :cond_20
    invoke-virtual {p0, p5}, Ljcifs/a/d;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljcifs/a/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljcifs/a/d;->b(Ljava/lang/String;)V

    sget v0, Ljcifs/a/d;->g:I

    packed-switch v0, :pswitch_data_13a

    invoke-static {p1, p2}, Ljcifs/a/d;->a(Ljcifs/a/c;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->a([B)V

    invoke-static {p1, p2}, Ljcifs/a/d;->b(Ljcifs/a/c;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->b([B)V

    :cond_3c
    :goto_3c
    return-void

    :pswitch_3d
    invoke-virtual {p0}, Ljcifs/a/d;->a()I

    move-result v0

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_55

    invoke-static {p1, p2}, Ljcifs/a/d;->a(Ljcifs/a/c;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->a([B)V

    invoke-static {p1, p2}, Ljcifs/a/d;->b(Ljcifs/a/c;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->b([B)V

    goto :goto_3c

    :cond_55
    new-array v0, v4, [B

    sget-object v1, Ljcifs/a/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v6, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv1(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljcifs/a/c;->c()[B

    move-result-object v4

    invoke-static {v1, v4, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLM2Response([B[B[B)[B

    move-result-object v4

    invoke-virtual {p0, v0}, Ljcifs/a/d;->a([B)V

    invoke-virtual {p0, v4}, Ljcifs/a/d;->b([B)V

    invoke-virtual {p0}, Ljcifs/a/d;->a()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v3, :cond_3c

    new-array v4, v3, [B

    invoke-virtual {p1}, Ljcifs/a/c;->c()[B

    move-result-object v5

    invoke-static {v5, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2, v4, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljcifs/util/f;

    invoke-direct {v0}, Ljcifs/util/f;-><init>()V

    invoke-virtual {v0, v1}, Ljcifs/util/f;->update([B)V

    invoke-virtual {v0}, Ljcifs/util/f;->digest()[B

    move-result-object v0

    new-instance v1, Ljcifs/util/c;

    invoke-direct {v1, v0}, Ljcifs/util/c;-><init>([B)V

    invoke-virtual {v1, v4}, Ljcifs/util/c;->update([B)V

    invoke-virtual {v1}, Ljcifs/util/c;->digest()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/a/d;->a()I

    move-result v0

    and-int/2addr v0, v7

    if-eqz v0, :cond_c1

    new-array v0, v3, [B

    iput-object v0, p0, Ljcifs/a/d;->n:[B

    sget-object v0, Ljcifs/a/d;->h:Ljava/security/SecureRandom;

    iget-object v4, p0, Ljcifs/a/d;->n:[B

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v4, v3, [B

    new-instance v0, Ljcifs/util/g;

    invoke-direct {v0, v1}, Ljcifs/util/g;-><init>([B)V

    iget-object v1, p0, Ljcifs/a/d;->n:[B

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljcifs/util/g;->a([BII[BI)V

    invoke-virtual {p0, v4}, Ljcifs/a/d;->c([B)V

    goto/16 :goto_3c

    :cond_c1
    iput-object v1, p0, Ljcifs/a/d;->n:[B

    iget-object v0, p0, Ljcifs/a/d;->n:[B

    invoke-virtual {p0, v0}, Ljcifs/a/d;->c([B)V

    goto/16 :goto_3c

    :pswitch_ca
    invoke-static {p1, p2}, Ljcifs/a/d;->b(Ljcifs/a/c;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/d;->a([B)V

    invoke-virtual {p0, v0}, Ljcifs/a/d;->b([B)V

    goto/16 :goto_3c

    :pswitch_d6
    invoke-static {p3, p4, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-array v1, v6, [B

    sget-object v4, Ljcifs/a/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, p3, p4, p2, v1}, Ljcifs/a/d;->a(Ljcifs/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/a/d;->a([B)V

    new-array v1, v6, [B

    sget-object v4, Ljcifs/a/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v0, v1}, Ljcifs/a/d;->a(Ljcifs/a/c;[B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/a/d;->b([B)V

    invoke-virtual {p0}, Ljcifs/a/d;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v3, :cond_3c

    new-instance v1, Ljcifs/util/c;

    invoke-direct {v1, v0}, Ljcifs/util/c;-><init>([B)V

    iget-object v0, p0, Ljcifs/a/d;->j:[B

    invoke-virtual {v1, v0, v2, v3}, Ljcifs/util/c;->update([BII)V

    invoke-virtual {v1}, Ljcifs/util/c;->digest()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/a/d;->a()I

    move-result v0

    and-int/2addr v0, v7

    if-eqz v0, :cond_130

    new-array v0, v3, [B

    iput-object v0, p0, Ljcifs/a/d;->n:[B

    sget-object v0, Ljcifs/a/d;->h:Ljava/security/SecureRandom;

    iget-object v4, p0, Ljcifs/a/d;->n:[B

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v4, v3, [B

    new-instance v0, Ljcifs/util/g;

    invoke-direct {v0, v1}, Ljcifs/util/g;-><init>([B)V

    iget-object v1, p0, Ljcifs/a/d;->n:[B

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljcifs/util/g;->a([BII[BI)V

    invoke-virtual {p0, v4}, Ljcifs/a/d;->c([B)V

    goto/16 :goto_3c

    :cond_130
    iput-object v1, p0, Ljcifs/a/d;->n:[B

    iget-object v0, p0, Ljcifs/a/d;->n:[B

    invoke-virtual {p0, v0}, Ljcifs/a/d;->c([B)V

    goto/16 :goto_3c

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3d
        :pswitch_ca
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
    .end packed-switch
.end method

.method public static a(Ljcifs/a/c;)I
    .registers 3

    if-nez p0, :cond_5

    sget v0, Ljcifs/a/d;->b:I

    :goto_4
    return v0

    :cond_5
    const/16 v1, 0x200

    invoke-virtual {p0}, Ljcifs/a/c;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    or-int/2addr v0, v1

    goto :goto_4

    :cond_12
    const/4 v0, 0x2

    goto :goto_10
.end method

.method public static a(Ljcifs/a/c;Ljava/lang/String;)[B
    .registers 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljcifs/a/c;->c()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_5
.end method

.method public static a(Ljcifs/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 6

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    if-nez p4, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljcifs/a/c;->c()[B

    move-result-object v0

    invoke-static {p1, p2, p3, v0, p4}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    goto :goto_b
.end method

.method public static a(Ljcifs/a/c;[B[B)[B
    .registers 9

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xa9730b66800L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    mul-long v3, v0, v2

    invoke-virtual {p0}, Ljcifs/a/c;->c()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/a/c;->e()[B

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMv2Response([B[B[BJ[B)[B

    move-result-object v0

    goto :goto_7
.end method

.method public static b(Ljcifs/a/c;Ljava/lang/String;)[B
    .registers 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljcifs/a/c;->c()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_5
.end method

.method public static k()I
    .registers 1

    sget v0, Ljcifs/a/d;->b:I

    return v0
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/a/d;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/d;->k:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/d;->i:[B

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/d;->l:Ljava/lang/String;

    return-void
.end method

.method public b([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/d;->j:[B

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/d;->m:Ljava/lang/String;

    return-void
.end method

.method public c([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/d;->o:[B

    return-void
.end method

.method public c()[B
    .registers 2

    iget-object v0, p0, Ljcifs/a/d;->i:[B

    return-object v0
.end method

.method public d()[B
    .registers 2

    iget-object v0, p0, Ljcifs/a/d;->j:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/a/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/a/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/a/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()[B
    .registers 2

    iget-object v0, p0, Ljcifs/a/d;->n:[B

    return-object v0
.end method

.method public i()[B
    .registers 2

    iget-object v0, p0, Ljcifs/a/d;->o:[B

    return-object v0
.end method

.method public j()[B
    .registers 22

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/a/d;->a()I

    move-result v13

    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_d3

    const/4 v4, 0x1

    move v6, v4

    :goto_a
    if-eqz v6, :cond_d7

    const/4 v4, 0x0

    move-object v5, v4

    :goto_e
    invoke-virtual/range {p0 .. p0}, Ljcifs/a/d;->e()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v7, :cond_120

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_120

    if-eqz v6, :cond_de

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_23
    move-object v12, v4

    :goto_24
    if-eqz v12, :cond_e4

    array-length v4, v12

    move v11, v4

    :goto_28
    invoke-virtual/range {p0 .. p0}, Ljcifs/a/d;->f()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v7, :cond_11d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_11d

    if-eqz v6, :cond_e8

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_3d
    move-object v10, v4

    :goto_3e
    if-eqz v10, :cond_f2

    array-length v4, v10

    move v9, v4

    :goto_42
    invoke-virtual/range {p0 .. p0}, Ljcifs/a/d;->g()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v7, :cond_11a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_11a

    if-eqz v6, :cond_f6

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_57
    move-object v8, v4

    :goto_58
    if-eqz v8, :cond_100

    array-length v4, v8

    move v7, v4

    :goto_5c
    invoke-virtual/range {p0 .. p0}, Ljcifs/a/d;->c()[B

    move-result-object v14

    if-eqz v14, :cond_104

    array-length v4, v14

    move v6, v4

    :goto_64
    invoke-virtual/range {p0 .. p0}, Ljcifs/a/d;->d()[B

    move-result-object v15

    if-eqz v15, :cond_108

    array-length v4, v15

    move v5, v4

    :goto_6c
    invoke-virtual/range {p0 .. p0}, Ljcifs/a/d;->i()[B

    move-result-object v16

    if-eqz v16, :cond_10c

    move-object/from16 v0, v16

    array-length v4, v0

    :goto_75
    add-int/lit8 v17, v11, 0x40

    add-int v17, v17, v9

    add-int v17, v17, v7

    add-int v17, v17, v6

    add-int v17, v17, v5

    add-int v4, v4, v17

    new-array v4, v4, [B

    sget-object v17, Ljcifs/a/d;->a:[B

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v17, 0x8

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Ljcifs/a/d;->a([BII)V

    const/16 v17, 0x40

    const/16 v18, 0xc

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1, v14}, Ljcifs/a/d;->a([BII[B)V

    add-int v6, v6, v17

    const/16 v14, 0x14

    invoke-static {v4, v14, v6, v15}, Ljcifs/a/d;->a([BII[B)V

    add-int/2addr v5, v6

    const/16 v6, 0x1c

    invoke-static {v4, v6, v5, v12}, Ljcifs/a/d;->a([BII[B)V

    add-int/2addr v5, v11

    const/16 v6, 0x24

    invoke-static {v4, v6, v5, v10}, Ljcifs/a/d;->a([BII[B)V

    add-int/2addr v5, v9

    const/16 v6, 0x2c

    invoke-static {v4, v6, v5, v8}, Ljcifs/a/d;->a([BII[B)V

    add-int/2addr v5, v7

    const/16 v6, 0x34

    move-object/from16 v0, v16

    invoke-static {v4, v6, v5, v0}, Ljcifs/a/d;->a([BII[B)V

    const/16 v5, 0x3c

    invoke-static {v4, v5, v13}, Ljcifs/a/d;->a([BII)V

    return-object v4

    :cond_d3
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_a

    :cond_d7
    invoke-static {}, Ljcifs/a/d;->b()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_e

    :cond_de
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    goto/16 :goto_23

    :cond_e4
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_28

    :cond_e8
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    goto/16 :goto_3d

    :cond_f2
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_42

    :cond_f6
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_fd} :catch_10f

    move-result-object v4

    goto/16 :goto_57

    :cond_100
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_5c

    :cond_104
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_64

    :cond_108
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_6c

    :cond_10c
    const/4 v4, 0x0

    goto/16 :goto_75

    :catch_10f
    move-exception v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11a
    move-object v8, v4

    goto/16 :goto_58

    :cond_11d
    move-object v10, v4

    goto/16 :goto_3e

    :cond_120
    move-object v12, v4

    goto/16 :goto_24
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Ljcifs/a/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/a/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/a/d;->c()[B

    move-result-object v3

    invoke-virtual {p0}, Ljcifs/a/d;->d()[B

    move-result-object v4

    invoke-virtual {p0}, Ljcifs/a/d;->i()[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type3Message[domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ",user="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",workstation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lmResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_84

    const-string v0, "null"

    :goto_45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ntResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v4, :cond_9f

    const-string v0, "null"

    :goto_53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v5, :cond_ba

    const-string v0, "null"

    :goto_61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/a/d;->a()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_61
.end method
