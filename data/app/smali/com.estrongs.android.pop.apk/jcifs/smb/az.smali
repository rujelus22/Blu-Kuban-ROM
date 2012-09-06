.class interface abstract Ljcifs/smb/az;
.super Ljava/lang/Object;


# static fields
.field public static final W:Ljava/net/InetAddress;

.field public static final X:I

.field public static final Y:I

.field public static final Z:I

.field public static final aa:I

.field public static final ab:Z

.field public static final ac:Z

.field public static final ad:Z

.field public static final ae:Z

.field public static final af:Z

.field public static final ag:Z

.field public static final ah:Ljava/lang/String;

.field public static final ai:I

.field public static final aj:I

.field public static final ak:Ljava/util/TimeZone;

.field public static final al:Z

.field public static final am:Ljava/lang/String;

.field public static final an:I

.field public static final ao:I

.field public static final ap:I

.field public static final aq:I

.field public static final ar:Z

.field public static final as:I

.field public static final at:Ljava/util/LinkedList;

.field public static final au:I

.field public static final av:I

.field public static final aw:Ljava/lang/String;

.field public static final ax:Ljava/lang/String;

.field public static final ay:Ljcifs/smb/bj;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v2, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljcifs/a;->b()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/smb/az;->W:Ljava/net/InetAddress;

    const-string v0, "jcifs.smb.client.lport"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->X:I

    const-string v0, "jcifs.smb.client.maxMpxCount"

    const/16 v3, 0xa

    invoke-static {v0, v3}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->Y:I

    const-string v0, "jcifs.smb.client.snd_buf_size"

    const/16 v3, 0x4104

    invoke-static {v0, v3}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->Z:I

    const-string v0, "jcifs.smb.client.rcv_buf_size"

    const v3, 0xec00

    invoke-static {v0, v3}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->aa:I

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v7}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/az;->ab:Z

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/az;->ac:Z

    const-string v0, "jcifs.smb.client.useNtStatus"

    invoke-static {v0, v7}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/az;->ad:Z

    const-string v0, "jcifs.smb.client.signingPreferred"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/az;->ae:Z

    const-string v0, "jcifs.smb.client.useNTSmbs"

    invoke-static {v0, v7}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/az;->af:Z

    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    invoke-static {v0, v7}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/az;->ag:Z

    const-string v0, "jcifs.netbios.hostname"

    invoke-static {v0, v8}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/az;->ah:Ljava/lang/String;

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->ai:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x40f0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    sput v0, Ljcifs/smb/az;->aj:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljcifs/smb/az;->ak:Ljava/util/TimeZone;

    const-string v0, "jcifs.smb.client.useBatching"

    invoke-static {v0, v7}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/az;->al:Z

    const-string v0, "jcifs.encoding"

    sget-object v3, Ljcifs/a;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/az;->am:Ljava/lang/String;

    sget-boolean v0, Ljcifs/smb/az;->ag:Z

    if-eqz v0, :cond_12b

    const/16 v0, 0x800

    :goto_9a
    or-int/lit8 v3, v0, 0x3

    sget-boolean v0, Ljcifs/smb/az;->ae:Z

    if-eqz v0, :cond_12e

    move v0, v2

    :goto_a1
    or-int/2addr v3, v0

    sget-boolean v0, Ljcifs/smb/az;->ad:Z

    if-eqz v0, :cond_131

    const/16 v0, 0x4000

    :goto_a8
    or-int/2addr v3, v0

    sget-boolean v0, Ljcifs/smb/az;->ab:Z

    if-eqz v0, :cond_134

    const v0, 0x8000

    :goto_b0
    or-int/2addr v0, v3

    sput v0, Ljcifs/smb/az;->an:I

    sget-boolean v0, Ljcifs/smb/az;->af:Z

    if-eqz v0, :cond_137

    const/16 v0, 0x10

    :goto_b9
    sget-boolean v3, Ljcifs/smb/az;->ad:Z

    if-eqz v3, :cond_139

    const/16 v3, 0x40

    :goto_bf
    or-int/2addr v0, v3

    sget-boolean v3, Ljcifs/smb/az;->ab:Z

    if-eqz v3, :cond_13b

    :goto_c4
    or-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x1000

    sput v0, Ljcifs/smb/az;->ao:I

    const-string v0, "jcifs.smb.client.flags2"

    sget v2, Ljcifs/smb/az;->an:I

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->ap:I

    const-string v0, "jcifs.smb.client.capabilities"

    sget v2, Ljcifs/smb/az;->ao:I

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->aq:I

    const-string v0, "jcifs.smb.client.tcpNoDelay"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/az;->ar:Z

    const-string v0, "jcifs.smb.client.responseTimeout"

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->as:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljcifs/smb/az;->at:Ljava/util/LinkedList;

    const-string v0, "jcifs.smb.client.ssnLimit"

    const/16 v2, 0xfa

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->au:I

    const-string v0, "jcifs.smb.client.soTimeout"

    const v2, 0x88b8

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/az;->av:I

    const-string v0, "jcifs.smb.client.nativeOs"

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/az;->aw:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.nativeLanMan"

    const-string v2, "jCIFS"

    invoke-static {v0, v2}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/az;->ax:Ljava/lang/String;

    new-instance v0, Ljcifs/smb/bj;

    invoke-direct {v0, v8, v1, v8, v1}, Ljcifs/smb/bj;-><init>(Ljcifs/b;ILjava/net/InetAddress;I)V

    sput-object v0, Ljcifs/smb/az;->ay:Ljcifs/smb/bj;

    return-void

    :cond_12b
    move v0, v1

    goto/16 :goto_9a

    :cond_12e
    move v0, v1

    goto/16 :goto_a1

    :cond_131
    move v0, v1

    goto/16 :goto_a8

    :cond_134
    move v0, v1

    goto/16 :goto_b0

    :cond_137
    move v0, v1

    goto :goto_b9

    :cond_139
    move v3, v1

    goto :goto_bf

    :cond_13b
    move v2, v1

    goto :goto_c4
.end method
