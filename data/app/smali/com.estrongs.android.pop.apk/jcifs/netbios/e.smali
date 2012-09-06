.class Ljcifs/netbios/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:Ljava/net/InetAddress;

.field private static final j:Ljava/lang/String;

.field private static k:Ljcifs/util/e;


# instance fields
.field a:Ljava/net/InetAddress;

.field b:Ljava/net/InetAddress;

.field private final l:Ljava/lang/Object;

.field private m:I

.field private n:I

.field private o:[B

.field private p:[B

.field private q:Ljava/net/DatagramSocket;

.field private r:Ljava/net/DatagramPacket;

.field private s:Ljava/net/DatagramPacket;

.field private t:Ljava/util/HashMap;

.field private u:Ljava/lang/Thread;

.field private v:I

.field private w:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x240

    const-string v0, "jcifs.netbios.snd_buf_size"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/e;->c:I

    const-string v0, "jcifs.netbios.rcv_buf_size"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/e;->d:I

    const-string v0, "jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/e;->e:I

    const-string v0, "jcifs.netbios.retryCount"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/e;->f:I

    const-string v0, "jcifs.netbios.retryTimeout"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/e;->g:I

    const-string v0, "jcifs.netbios.lport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/e;->h:I

    const-string v0, "jcifs.netbios.laddr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/e;->i:Ljava/net/InetAddress;

    const-string v0, "jcifs.resolveOrder"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/e;->j:Ljava/lang/String;

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    sget v0, Ljcifs/netbios/e;->h:I

    sget-object v1, Ljcifs/netbios/e;->i:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Ljcifs/netbios/e;-><init>(ILjava/net/InetAddress;)V

    return-void
.end method

.method constructor <init>(ILjava/net/InetAddress;)V
    .registers 14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/e;->l:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/e;->t:Ljava/util/HashMap;

    iput v1, p0, Ljcifs/netbios/e;->v:I

    iput p1, p0, Ljcifs/netbios/e;->m:I

    iput-object p2, p0, Ljcifs/netbios/e;->a:Ljava/net/InetAddress;

    :try_start_1b
    const-string v0, "jcifs.netbios.baddr"

    const-string v2, "255.255.255.255"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/netbios/e;->b:Ljava/net/InetAddress;
    :try_end_29
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_29} :catch_109

    :goto_29
    sget v0, Ljcifs/netbios/e;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/e;->o:[B

    sget v0, Ljcifs/netbios/e;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/e;->p:[B

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, Ljcifs/netbios/e;->o:[B

    sget v3, Ljcifs/netbios/e;->c:I

    iget-object v4, p0, Ljcifs/netbios/e;->b:Ljava/net/InetAddress;

    const/16 v5, 0x89

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v0, p0, Ljcifs/netbios/e;->s:Ljava/net/DatagramPacket;

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, Ljcifs/netbios/e;->p:[B

    sget v3, Ljcifs/netbios/e;->d:I

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Ljcifs/netbios/e;->r:Ljava/net/DatagramPacket;

    sget-object v0, Ljcifs/netbios/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_5b

    sget-object v0, Ljcifs/netbios/e;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7f

    :cond_5b
    invoke-static {}, Ljcifs/netbios/g;->c()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_6e

    new-array v0, v9, [I

    iput-object v0, p0, Ljcifs/netbios/e;->w:[I

    iget-object v0, p0, Ljcifs/netbios/e;->w:[I

    aput v8, v0, v1

    iget-object v0, p0, Ljcifs/netbios/e;->w:[I

    aput v9, v0, v8

    :goto_6d
    return-void

    :cond_6e
    new-array v0, v10, [I

    iput-object v0, p0, Ljcifs/netbios/e;->w:[I

    iget-object v0, p0, Ljcifs/netbios/e;->w:[I

    aput v8, v0, v1

    iget-object v0, p0, Ljcifs/netbios/e;->w:[I

    aput v10, v0, v8

    iget-object v0, p0, Ljcifs/netbios/e;->w:[I

    aput v9, v0, v9

    goto :goto_6d

    :cond_7f
    new-array v3, v10, [I

    new-instance v4, Ljava/util/StringTokenizer;

    sget-object v0, Ljcifs/netbios/e;->j:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v4, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_8b
    :goto_8b
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LMHOSTS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    add-int/lit8 v2, v0, 0x1

    aput v8, v3, v0

    move v0, v2

    goto :goto_8b

    :cond_a7
    const-string v5, "WINS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    invoke-static {}, Ljcifs/netbios/g;->c()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_c3

    sget-object v2, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-le v2, v8, :cond_8b

    sget-object v2, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    const-string v5, "NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v2, v5}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    goto :goto_8b

    :cond_c3
    add-int/lit8 v2, v0, 0x1

    aput v10, v3, v0

    move v0, v2

    goto :goto_8b

    :cond_c9
    const-string v5, "BCAST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    add-int/lit8 v2, v0, 0x1

    aput v9, v3, v0

    move v0, v2

    goto :goto_8b

    :cond_d7
    const-string v5, "DNS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8b

    sget-object v5, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v5, Ljcifs/util/e;->a:I

    if-le v5, v8, :cond_8b

    sget-object v5, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown resolver method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    goto :goto_8b

    :cond_fe
    new-array v2, v0, [I

    iput-object v2, p0, Ljcifs/netbios/e;->w:[I

    iget-object v2, p0, Ljcifs/netbios/e;->w:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6d

    :catch_109
    move-exception v0

    goto/16 :goto_29
.end method


# virtual methods
.method a()I
    .registers 3

    iget v0, p0, Ljcifs/netbios/e;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/netbios/e;->v:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/netbios/e;->v:I

    :cond_f
    iget v0, p0, Ljcifs/netbios/e;->v:I

    return v0
.end method

.method a(Ljcifs/netbios/b;Ljava/net/InetAddress;)Ljcifs/netbios/g;
    .registers 11

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v4, Ljcifs/netbios/c;

    invoke-direct {v4, p1}, Ljcifs/netbios/c;-><init>(Ljcifs/netbios/b;)V

    new-instance v5, Ljcifs/netbios/d;

    invoke-direct {v5}, Ljcifs/netbios/d;-><init>()V

    if-eqz p2, :cond_66

    iput-object p2, v4, Ljcifs/netbios/c;->y:Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    aget-byte v2, v2, v7

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    move v0, v1

    :cond_1b
    iput-boolean v0, v4, Ljcifs/netbios/c;->p:Z

    sget v0, Ljcifs/netbios/e;->f:I

    :cond_1f
    :try_start_1f
    sget v2, Ljcifs/netbios/e;->g:I

    invoke-virtual {p0, v4, v5, v2}, Ljcifs/netbios/e;->a(Ljcifs/netbios/f;Ljcifs/netbios/f;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_42

    iget-boolean v2, v5, Ljcifs/netbios/d;->j:Z

    if-eqz v2, :cond_56

    iget v2, v5, Ljcifs/netbios/d;->e:I

    if-nez v2, :cond_56

    iget-object v0, v5, Ljcifs/netbios/d;->b:[Ljcifs/netbios/g;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v5, Ljcifs/netbios/d;->b:[Ljcifs/netbios/g;

    aget-object v1, v1, v0

    iget-object v1, v1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    iput v2, v1, Ljcifs/netbios/b;->e:I

    iget-object v1, v5, Ljcifs/netbios/d;->b:[Ljcifs/netbios/g;

    aget-object v0, v1, v0

    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    sget-object v2, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-le v2, v1, :cond_4e

    sget-object v1, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4e
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_5e

    iget-boolean v2, v4, Ljcifs/netbios/c;->p:Z

    if-nez v2, :cond_1f

    :cond_5e
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    :goto_66
    iget-object v2, p0, Ljcifs/netbios/e;->w:[I

    array-length v2, v2

    if-ge v0, v2, :cond_ec

    :try_start_6b
    iget-object v2, p0, Ljcifs/netbios/e;->w:[I

    aget v2, v2, v0

    packed-switch v2, :pswitch_data_f4

    :cond_72
    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :pswitch_75
    invoke-static {p1}, Ljcifs/netbios/a;->a(Ljcifs/netbios/b;)Ljcifs/netbios/g;

    move-result-object v2

    if-eqz v2, :cond_72

    iget-object v3, v2, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    const/4 v6, 0x0

    iput v6, v3, Ljcifs/netbios/b;->e:I

    move-object v0, v2

    goto :goto_41

    :pswitch_82
    iget-object v2, p0, Ljcifs/netbios/e;->w:[I

    aget v2, v2, v0

    if-ne v2, v7, :cond_c6

    iget-object v2, p1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    const-string v3, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq v2, v3, :cond_c6

    iget v2, p1, Ljcifs/netbios/b;->d:I

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_c6

    invoke-static {}, Ljcifs/netbios/g;->c()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v4, Ljcifs/netbios/c;->y:Ljava/net/InetAddress;

    const/4 v2, 0x0

    iput-boolean v2, v4, Ljcifs/netbios/c;->p:Z

    :goto_9d
    sget v2, Ljcifs/netbios/e;->f:I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_9f} :catch_ce

    :goto_9f
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_72

    :try_start_a3
    sget v2, Ljcifs/netbios/e;->g:I

    invoke-virtual {p0, v4, v5, v2}, Ljcifs/netbios/e;->a(Ljcifs/netbios/f;Ljcifs/netbios/f;I)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a8} :catch_d0

    :try_start_a8
    iget-boolean v2, v5, Ljcifs/netbios/d;->j:Z

    if-eqz v2, :cond_e4

    iget v2, v5, Ljcifs/netbios/d;->e:I

    if-nez v2, :cond_e4

    iget-object v2, v5, Ljcifs/netbios/d;->b:[Ljcifs/netbios/g;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v3, v4, Ljcifs/netbios/c;->y:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    iput v3, v2, Ljcifs/netbios/b;->e:I

    iget-object v2, v5, Ljcifs/netbios/d;->b:[Ljcifs/netbios/g;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    goto/16 :goto_41

    :cond_c6
    iget-object v2, p0, Ljcifs/netbios/e;->b:Ljava/net/InetAddress;

    iput-object v2, v4, Ljcifs/netbios/c;->y:Ljava/net/InetAddress;

    const/4 v2, 0x1

    iput-boolean v2, v4, Ljcifs/netbios/c;->p:Z

    goto :goto_9d

    :catch_ce
    move-exception v2

    goto :goto_72

    :catch_d0
    move-exception v2

    sget-object v3, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v3, Ljcifs/util/e;->a:I

    if-le v3, v1, :cond_dc

    sget-object v3, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_dc
    new-instance v2, Ljava/net/UnknownHostException;

    iget-object v3, p1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e4
    iget-object v2, p0, Ljcifs/netbios/e;->w:[I

    aget v2, v2, v0
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_e8} :catch_ce

    if-eq v2, v7, :cond_72

    move v2, v3

    goto :goto_9f

    :cond_ec
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_75
        :pswitch_82
        :pswitch_82
    .end packed-switch
.end method

.method a(I)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/netbios/e;->n:I

    sget v0, Ljcifs/netbios/e;->e:I

    if-eqz v0, :cond_f

    sget v0, Ljcifs/netbios/e;->e:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/e;->n:I

    :cond_f
    iget-object v0, p0, Ljcifs/netbios/e;->q:Ljava/net/DatagramSocket;

    if-nez v0, :cond_32

    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Ljcifs/netbios/e;->m:I

    iget-object v2, p0, Ljcifs/netbios/e;->a:Ljava/net/InetAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Ljcifs/netbios/e;->q:Ljava/net/DatagramSocket;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JCIFS-NameServiceClient"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljcifs/netbios/e;->u:Ljava/lang/Thread;

    iget-object v0, p0, Ljcifs/netbios/e;->u:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Ljcifs/netbios/e;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_32
    return-void
.end method

.method a(Ljcifs/netbios/f;Ljcifs/netbios/f;I)V
    .registers 14

    const/4 v2, 0x0

    sget-object v0, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :cond_7
    monitor-enter p2

    :goto_8
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_ae

    :try_start_c
    iget-object v4, p0, Ljcifs/netbios/e;->l:Ljava/lang/Object;

    monitor-enter v4
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_c9
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_cc

    :try_start_f
    invoke-virtual {p0}, Ljcifs/netbios/e;->a()I

    move-result v0

    iput v0, p1, Ljcifs/netbios/f;->c:I

    new-instance v1, Ljava/lang/Integer;

    iget v0, p1, Ljcifs/netbios/f;->c:I

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_cf

    :try_start_1c
    iget-object v0, p0, Ljcifs/netbios/e;->s:Ljava/net/DatagramPacket;

    iget-object v2, p1, Ljcifs/netbios/f;->y:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    iget-object v0, p0, Ljcifs/netbios/e;->s:Ljava/net/DatagramPacket;

    iget-object v2, p0, Ljcifs/netbios/e;->o:[B

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Ljcifs/netbios/f;->g([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    const/4 v0, 0x0

    iput-boolean v0, p2, Ljcifs/netbios/f;->j:Z

    iget-object v0, p0, Ljcifs/netbios/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v0, p3, 0x3e8

    invoke-virtual {p0, v0}, Ljcifs/netbios/e;->a(I)V

    iget-object v0, p0, Ljcifs/netbios/e;->q:Ljava/net/DatagramSocket;

    iget-object v2, p0, Ljcifs/netbios/e;->s:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    sget-object v0, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_5d

    sget-object v0, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    invoke-virtual {v0, p1}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    sget-object v0, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    iget-object v2, p0, Ljcifs/netbios/e;->o:[B

    const/4 v5, 0x0

    iget-object v6, p0, Ljcifs/netbios/e;->s:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-static {v0, v2, v5, v6}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_1c .. :try_end_5e} :catchall_79

    :try_start_5e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_62
    if-lez p3, :cond_9d

    int-to-long v6, p3

    invoke-virtual {p2, v6, v7}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p2, Ljcifs/netbios/f;->j:Z

    if-eqz v0, :cond_91

    iget v0, p1, Ljcifs/netbios/f;->s:I

    iget v2, p2, Ljcifs/netbios/f;->u:I
    :try_end_70
    .catchall {:try_start_5e .. :try_end_70} :catchall_87
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_70} :catch_7c

    if-ne v0, v2, :cond_91

    :try_start_72
    iget-object v0, p0, Ljcifs/netbios/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_8e

    :goto_78
    return-void

    :catchall_79
    move-exception v0

    :goto_7a
    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_87
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception v0

    :goto_7d
    :try_start_7d
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v0

    :goto_88
    :try_start_88
    iget-object v2, p0, Ljcifs/netbios/e;->t:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :catchall_8e
    move-exception v0

    monitor-exit p2
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_8e

    throw v0

    :cond_91
    const/4 v0, 0x0

    :try_start_92
    iput-boolean v0, p2, Ljcifs/netbios/f;->j:Z

    int-to-long v6, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_87
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_98} :catch_7c

    move-result-wide v8

    sub-long/2addr v8, v4

    sub-long/2addr v6, v8

    long-to-int p3, v6

    goto :goto_62

    :cond_9d
    :try_start_9d
    iget-object v0, p0, Ljcifs/netbios/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljcifs/netbios/e;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_8e

    :try_start_a5
    iget-object v0, p1, Ljcifs/netbios/f;->y:Ljava/net/InetAddress;

    invoke-static {v0}, Ljcifs/netbios/g;->a(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_b0

    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_c6

    :cond_ae
    :try_start_ae
    monitor-exit p2
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_8e

    goto :goto_78

    :cond_b0
    :try_start_b0
    iget-object v0, p1, Ljcifs/netbios/f;->y:Ljava/net/InetAddress;

    invoke-static {}, Ljcifs/netbios/g;->c()Ljava/net/InetAddress;

    move-result-object v4

    if-ne v0, v4, :cond_bb

    invoke-static {}, Ljcifs/netbios/g;->d()Ljava/net/InetAddress;

    :cond_bb
    invoke-static {}, Ljcifs/netbios/g;->c()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p1, Ljcifs/netbios/f;->y:Ljava/net/InetAddress;

    monitor-exit v2

    move v0, v3

    move-object v2, v1

    goto/16 :goto_8

    :catchall_c6
    move-exception v0

    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_b0 .. :try_end_c8} :catchall_c6

    :try_start_c8
    throw v0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_8e

    :catchall_c9
    move-exception v0

    move-object v1, v2

    goto :goto_88

    :catch_cc
    move-exception v0

    move-object v1, v2

    goto :goto_7d

    :catchall_cf
    move-exception v0

    move-object v1, v2

    goto :goto_7a
.end method

.method a(Ljcifs/netbios/g;)[Ljcifs/netbios/g;
    .registers 8

    const/4 v0, 0x0

    new-instance v3, Ljcifs/netbios/j;

    invoke-direct {v3, p1}, Ljcifs/netbios/j;-><init>(Ljcifs/netbios/g;)V

    new-instance v4, Ljcifs/netbios/i;

    new-instance v1, Ljcifs/netbios/b;

    const-string v2, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v4, v1}, Ljcifs/netbios/i;-><init>(Ljcifs/netbios/b;)V

    invoke-virtual {p1}, Ljcifs/netbios/g;->h()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v4, Ljcifs/netbios/i;->y:Ljava/net/InetAddress;

    sget v1, Ljcifs/netbios/e;->f:I

    :goto_1b
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_5c

    :try_start_1f
    sget v1, Ljcifs/netbios/e;->g:I

    invoke-virtual {p0, v4, v3, v1}, Ljcifs/netbios/e;->a(Ljcifs/netbios/f;Ljcifs/netbios/f;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_42

    iget-boolean v1, v3, Ljcifs/netbios/j;->j:Z

    if-eqz v1, :cond_66

    iget v1, v3, Ljcifs/netbios/j;->e:I

    if-nez v1, :cond_66

    iget-object v1, v4, Ljcifs/netbios/i;->y:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    :goto_32
    iget-object v2, v3, Ljcifs/netbios/j;->z:[Ljcifs/netbios/g;

    array-length v2, v2

    if-ge v0, v2, :cond_59

    iget-object v2, v3, Ljcifs/netbios/j;->z:[Ljcifs/netbios/g;

    aget-object v2, v2, v0

    iget-object v2, v2, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iput v1, v2, Ljcifs/netbios/b;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :catch_42
    move-exception v0

    sget-object v1, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4f

    sget-object v1, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4f
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljcifs/netbios/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    iget-object v0, v3, Ljcifs/netbios/j;->z:[Ljcifs/netbios/g;

    return-object v0

    :cond_5c
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v1, v1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    move v1, v2

    goto :goto_1b
.end method

.method b()V
    .registers 3

    iget-object v1, p0, Ljcifs/netbios/e;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Ljcifs/netbios/e;->q:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljcifs/netbios/e;->q:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/netbios/e;->q:Ljava/net/DatagramSocket;

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/netbios/e;->u:Ljava/lang/Thread;

    iget-object v0, p0, Ljcifs/netbios/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x3

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Ljcifs/netbios/e;->u:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_75

    iget-object v0, p0, Ljcifs/netbios/e;->r:Ljava/net/DatagramPacket;

    sget v1, Ljcifs/netbios/e;->d:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object v0, p0, Ljcifs/netbios/e;->q:Ljava/net/DatagramSocket;

    iget v1, p0, Ljcifs/netbios/e;->n:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object v0, p0, Ljcifs/netbios/e;->q:Ljava/net/DatagramSocket;

    iget-object v1, p0, Ljcifs/netbios/e;->r:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    sget-object v0, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-le v0, v5, :cond_2b

    sget-object v0, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    const-string v1, "NetBIOS: new data read from socket"

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Ljcifs/netbios/e;->p:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/netbios/f;->f([BI)I

    move-result v0

    iget-object v1, p0, Ljcifs/netbios/e;->t:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/f;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Ljcifs/netbios/f;->j:Z

    if-nez v1, :cond_1

    monitor-enter v0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_8a
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_46} :catch_70
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_79

    :try_start_46
    iget-object v1, p0, Ljcifs/netbios/e;->p:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljcifs/netbios/f;->h([BI)I

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljcifs/netbios/f;->j:Z

    sget-object v1, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-le v1, v5, :cond_68

    sget-object v1, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    invoke-virtual {v1, v0}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    sget-object v1, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    iget-object v2, p0, Ljcifs/netbios/e;->p:[B

    const/4 v3, 0x0

    iget-object v4, p0, Ljcifs/netbios/e;->r:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_68
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_1

    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_8a
    .catch Ljava/net/SocketTimeoutException; {:try_start_6f .. :try_end_70} :catch_70
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_70} :catch_79

    :catch_70
    move-exception v0

    invoke-virtual {p0}, Ljcifs/netbios/e;->b()V

    :goto_74
    return-void

    :cond_75
    invoke-virtual {p0}, Ljcifs/netbios/e;->b()V

    goto :goto_74

    :catch_79
    move-exception v0

    :try_start_7a
    sget-object v1, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_86

    sget-object v1, Ljcifs/netbios/e;->k:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_8a

    :cond_86
    invoke-virtual {p0}, Ljcifs/netbios/e;->b()V

    goto :goto_74

    :catchall_8a
    move-exception v0

    invoke-virtual {p0}, Ljcifs/netbios/e;->b()V

    throw v0
.end method
