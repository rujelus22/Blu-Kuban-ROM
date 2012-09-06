.class public Ljcifs/smb/ba;
.super Ljava/net/URLConnection;

# interfaces
.implements Ljcifs/smb/az;


# static fields
.field static final a:I

.field static final b:I

.field static c:Ljcifs/util/e;

.field static d:J

.field static e:Z

.field protected static f:Ljcifs/smb/d;


# instance fields
.field private A:Ljcifs/smb/DfsReferral;

.field g:Ljcifs/smb/NtlmPasswordAuthentication;

.field h:Ljcifs/smb/bl;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Z

.field m:I

.field n:[Ljcifs/b;

.field o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:J

.field private s:J

.field private t:I

.field private u:J

.field private v:J

.field private w:J

.field private x:Z

.field private y:I

.field private z:Ljcifs/smb/v;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "."

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ljcifs/smb/ba;->a:I

    const-string v0, ".."

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ljcifs/smb/ba;->b:I

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    :try_start_16
    const-string v0, "jcifs.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1b} :catch_36

    :goto_1b
    const-string v0, "jcifs.smb.client.attrExpirationPeriod"

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Ljcifs/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljcifs/smb/ba;->d:J

    const-string v0, "jcifs.smb.client.ignoreCopyToException"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/ba;->e:Z

    new-instance v0, Ljcifs/smb/d;

    invoke-direct {v0}, Ljcifs/smb/d;-><init>()V

    sput-object v0, Ljcifs/smb/ba;->f:Ljcifs/smb/d;

    return-void

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1b
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/i;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/ba;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 6

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/i;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/ba;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 4

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljcifs/smb/ba;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    iput v0, p0, Ljcifs/smb/ba;->y:I

    iput-object v1, p0, Ljcifs/smb/ba;->z:Ljcifs/smb/v;

    iput-object v1, p0, Ljcifs/smb/ba;->A:Ljcifs/smb/DfsReferral;

    iput-object v1, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    if-nez p2, :cond_18

    new-instance p2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    :cond_18
    iput-object p2, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljcifs/smb/ba;Ljava/lang/String;IIJJJ)V
    .registers 16

    const/16 v4, 0x5c

    invoke-virtual {p1}, Ljcifs/smb/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/i;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_29
    invoke-direct {p0, v0}, Ljcifs/smb/ba;-><init>(Ljava/net/URL;)V

    iget-object v0, p1, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, p1, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p1, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iput-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, p1, Ljcifs/smb/ba;->A:Ljcifs/smb/DfsReferral;

    iput-object v0, p0, Ljcifs/smb/ba;->A:Ljcifs/smb/DfsReferral;

    :cond_3c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4f

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_4f
    iget-object v0, p1, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-nez v0, :cond_93

    const-string v0, "\\"

    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    :goto_57
    iput p3, p0, Ljcifs/smb/ba;->k:I

    iput p4, p0, Ljcifs/smb/ba;->t:I

    iput-wide p5, p0, Ljcifs/smb/ba;->r:J

    iput-wide p7, p0, Ljcifs/smb/ba;->s:J

    iput-wide p9, p0, Ljcifs/smb/ba;->v:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/ba;->x:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/ba;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/ba;->w:J

    iput-wide v0, p0, Ljcifs/smb/ba;->u:J

    return-void

    :cond_70
    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, Ljcifs/smb/ba;->url:Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v0, p4, 0x10

    if-lez v0, :cond_90

    const-string v0, "/"

    :goto_83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_29

    :cond_90
    const-string v0, ""

    goto :goto_83

    :cond_93
    iget-object v0, p1, Ljcifs/smb/ba;->i:Ljava/lang/String;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    goto :goto_57

    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    goto :goto_57
.end method

.method private L()Ljcifs/smb/v;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/ba;->z:Ljcifs/smb/v;

    if-nez v0, :cond_b

    new-instance v0, Ljcifs/smb/v;

    invoke-direct {v0}, Ljcifs/smb/v;-><init>()V

    iput-object v0, p0, Ljcifs/smb/ba;->z:Ljcifs/smb/v;

    :cond_b
    iget-object v0, p0, Ljcifs/smb/ba;->z:Ljcifs/smb/v;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_7
    array-length v4, v3

    if-ge v2, v4, :cond_33

    aget-char v4, v3, v2

    const/16 v5, 0x26

    if-ne v4, v5, :cond_2d

    if-le v0, v1, :cond_28

    new-instance v4, Ljava/lang/String;

    sub-int v5, v0, v1

    invoke-direct {v4, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    add-int/lit8 v1, v0, 0x1

    new-instance v0, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_27
    return-object v0

    :cond_28
    add-int/lit8 v1, v2, 0x1

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2d
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_2a

    move v0, v2

    goto :goto_2a

    :cond_33
    if-le v0, v1, :cond_4c

    new-instance v2, Ljava/lang/String;

    sub-int v4, v0, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    add-int/lit8 v1, v0, 0x1

    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_27

    :cond_4c
    const/4 v0, 0x0

    goto :goto_27
.end method


# virtual methods
.method public A()[Ljcifs/smb/ba;
    .registers 4

    const/4 v2, 0x0

    const-string v0, "*"

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1, v2, v2}, Ljcifs/smb/ba;->a(Ljava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)[Ljcifs/smb/ba;

    move-result-object v0

    return-object v0
.end method

.method B()[Ljcifs/smb/h;
    .registers 6

    const/4 v4, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ncacn_np:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/ba;->a()Ljcifs/b;

    move-result-object v1

    invoke-virtual {v1}, Ljcifs/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[\\PIPE\\netdfs]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v1}, Ljcifs/dcerpc/e;->a(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/e;

    move-result-object v1

    :try_start_28
    new-instance v0, Ljcifs/dcerpc/a/a;

    invoke-virtual {p0}, Ljcifs/smb/ba;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljcifs/dcerpc/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljcifs/dcerpc/e;->a(Ljcifs/dcerpc/f;)V

    iget v2, v0, Ljcifs/dcerpc/a/a;->a:I

    if-eqz v2, :cond_46

    new-instance v2, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/a/a;->a:I

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v2
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {v1}, Ljcifs/dcerpc/e;->b()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_5b

    :cond_45
    :goto_45
    throw v0

    :cond_46
    :try_start_46
    invoke-virtual {v0}, Ljcifs/dcerpc/a/a;->c()[Ljcifs/smb/h;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_41

    move-result-object v0

    :try_start_4a
    invoke-virtual {v1}, Ljcifs/dcerpc/e;->b()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return-object v0

    :catch_4e
    move-exception v1

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v4, :cond_4d

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4d

    :catch_5b
    move-exception v1

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v4, :cond_45

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_45
.end method

.method C()[Ljcifs/smb/h;
    .registers 6

    const/4 v4, 0x4

    new-instance v0, Ljcifs/dcerpc/a/b;

    iget-object v1, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/a/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ncacn_np:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/smb/ba;->a()Ljcifs/b;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[\\PIPE\\srvsvc]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v1, v2}, Ljcifs/dcerpc/e;->a(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/e;

    move-result-object v1

    :try_start_33
    invoke-virtual {v1, v0}, Ljcifs/dcerpc/e;->a(Ljcifs/dcerpc/f;)V

    iget v2, v0, Ljcifs/dcerpc/a/b;->a:I

    if-eqz v2, :cond_48

    new-instance v2, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/a/b;->a:I

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v2
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {v1}, Ljcifs/dcerpc/e;->b()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_5d

    :cond_47
    :goto_47
    throw v0

    :cond_48
    :try_start_48
    invoke-virtual {v0}, Ljcifs/dcerpc/a/b;->c()[Ljcifs/smb/h;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_43

    move-result-object v0

    :try_start_4c
    invoke-virtual {v1}, Ljcifs/dcerpc/e;->b()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    :cond_4f
    :goto_4f
    return-object v0

    :catch_50
    move-exception v1

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v4, :cond_4f

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4f

    :catch_5d
    move-exception v1

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v4, :cond_47

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_47
.end method

.method D()[Ljcifs/smb/h;
    .registers 4

    new-instance v0, Ljcifs/smb/n;

    invoke-direct {v0}, Ljcifs/smb/n;-><init>()V

    new-instance v1, Ljcifs/smb/o;

    invoke-direct {v1}, Ljcifs/smb/o;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v0, v1, Ljcifs/smb/ar;->P:I

    if-eqz v0, :cond_1a

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v1, Ljcifs/smb/ar;->P:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    :cond_1a
    iget-object v0, v1, Ljcifs/smb/ar;->R:[Ljcifs/smb/h;

    return-object v0
.end method

.method public E()V
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljcifs/smb/ba;->a(Ljava/lang/String;)V

    return-void
.end method

.method public F()J
    .registers 6

    const/4 v4, 0x1

    iget-wide v0, p0, Ljcifs/smb/ba;->w:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-wide v0, p0, Ljcifs/smb/ba;->v:J

    :goto_d
    return-wide v0

    :cond_e
    invoke-virtual {p0}, Ljcifs/smb/ba;->q()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    new-instance v0, Ljcifs/smb/bu;

    invoke-direct {v0, v4}, Ljcifs/smb/bu;-><init>(I)V

    new-instance v1, Ljcifs/smb/bt;

    invoke-direct {v1, v4}, Ljcifs/smb/bt;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget-object v0, v0, Ljcifs/smb/bu;->a:Ljcifs/smb/a;

    invoke-interface {v0}, Ljcifs/smb/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/ba;->v:J

    :goto_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/ba;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/ba;->w:J

    iget-wide v0, p0, Ljcifs/smb/ba;->v:J

    goto :goto_d

    :cond_37
    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_58

    iget v0, p0, Ljcifs/smb/ba;->k:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_58

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->a(Ljava/lang/String;I)Ljcifs/smb/j;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/j;->d()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/ba;->v:J

    goto :goto_2b

    :cond_58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/ba;->v:J

    goto :goto_2b
.end method

.method public G()V
    .registers 5

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    sget-object v1, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_32

    sget-object v1, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkdir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_32
    new-instance v1, Ljcifs/smb/x;

    invoke-direct {v1, v0}, Ljcifs/smb/x;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/ba;->L()Ljcifs/smb/v;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/ba;->w:J

    iput-wide v0, p0, Ljcifs/smb/ba;->u:J

    return-void
.end method

.method public H()V
    .registers 4

    :try_start_0
    new-instance v0, Ljcifs/smb/ba;

    invoke-virtual {p0}, Ljcifs/smb/ba;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_18

    invoke-virtual {v0}, Ljcifs/smb/ba;->s()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljcifs/smb/ba;->H()V

    :cond_14
    invoke-virtual {p0}, Ljcifs/smb/ba;->G()V

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public I()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/16 v0, 0x33

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v2, v1, v2}, Ljcifs/smb/ba;->a(IIII)I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ba;->a(IJ)V

    return-void
.end method

.method public J()I
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    iget v0, p0, Ljcifs/smb/ba;->t:I

    and-int/lit16 v0, v0, 0x7fff

    goto :goto_c
.end method

.method public K()V
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/ba;->J()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljcifs/smb/ba;->a(I)V

    return-void
.end method

.method a(IIII)I
    .registers 15

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Ljcifs/smb/ba;->e()V

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_26

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_26
    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance v8, Ljcifs/smb/ad;

    invoke-direct {v8}, Ljcifs/smb/ad;-><init>()V

    new-instance v0, Ljcifs/smb/ac;

    iget-object v1, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    iget v4, p0, Ljcifs/smb/ba;->y:I

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Ljcifs/smb/ac;-><init>(Ljava/lang/String;IIIIILjcifs/smb/t;)V

    instance-of v1, p0, Ljcifs/smb/bf;

    if-eqz v1, :cond_59

    iget v1, v0, Ljcifs/smb/ac;->b:I

    or-int/lit8 v1, v1, 0x16

    iput v1, v0, Ljcifs/smb/ac;->b:I

    iget v1, v0, Ljcifs/smb/ac;->c:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Ljcifs/smb/ac;->c:I

    iput-boolean v9, v8, Ljcifs/smb/ad;->N:Z

    :cond_59
    invoke-virtual {p0, v0, v8}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v0, v8, Ljcifs/smb/ad;->c:I

    iget v1, v8, Ljcifs/smb/ad;->D:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Ljcifs/smb/ba;->t:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/ba;->d:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/ba;->u:J

    iput-boolean v9, p0, Ljcifs/smb/ba;->x:Z

    :goto_6f
    return v0

    :cond_70
    new-instance v0, Ljcifs/smb/ai;

    invoke-direct {v0}, Ljcifs/smb/ai;-><init>()V

    new-instance v1, Ljcifs/smb/ah;

    iget-object v2, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p1, v7}, Ljcifs/smb/ah;-><init>(Ljava/lang/String;IILjcifs/smb/t;)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v0, v0, Ljcifs/smb/ai;->b:I

    goto :goto_6f
.end method

.method a()Ljcifs/b;
    .registers 3

    iget v0, p0, Ljcifs/smb/ba;->o:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljcifs/smb/ba;->b()Ljcifs/b;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    iget v1, p0, Ljcifs/smb/ba;->o:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_8
.end method

.method a(Ljava/lang/String;I)Ljcifs/smb/j;
    .registers 8

    invoke-virtual {p0}, Ljcifs/smb/ba;->e()V

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_22

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljcifs/smb/bx;

    invoke-direct {v0, p2}, Ljcifs/smb/bx;-><init>(I)V

    new-instance v1, Ljcifs/smb/bw;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/bw;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget-object v0, v0, Ljcifs/smb/bx;->a:Ljcifs/smb/j;

    :goto_3f
    return-object v0

    :cond_40
    new-instance v0, Ljcifs/smb/ak;

    iget-object v1, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v1, v1, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v1, v1, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v1, v1, Ljcifs/smb/bk;->n:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljcifs/smb/ak;-><init>(J)V

    new-instance v1, Ljcifs/smb/aj;

    invoke-direct {v1, p1}, Ljcifs/smb/aj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    goto :goto_3f
.end method

.method public a(I)V
    .registers 8

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    and-int/lit16 v1, p1, 0x30a7

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/ba;->a(IJJ)V

    return-void
.end method

.method a(IJ)V
    .registers 7

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1f

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_1f
    new-instance v0, Ljcifs/smb/w;

    invoke-direct {v0, p1, p2, p3}, Ljcifs/smb/w;-><init>(IJ)V

    invoke-direct {p0}, Ljcifs/smb/ba;->L()Ljcifs/smb/v;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    return-void
.end method

.method a(IJJ)V
    .registers 15

    const-wide/16 v7, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    iget v0, p0, Ljcifs/smb/ba;->t:I

    and-int/lit8 v2, v0, 0x10

    const/16 v3, 0x100

    if-eqz v2, :cond_29

    move v0, v1

    :goto_f
    invoke-virtual {p0, v1, v3, v2, v0}, Ljcifs/smb/ba;->a(IIII)I

    move-result v1

    new-instance v0, Ljcifs/smb/ca;

    or-int/2addr v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljcifs/smb/ca;-><init>(IIJJ)V

    new-instance v2, Ljcifs/smb/cb;

    invoke-direct {v2}, Ljcifs/smb/cb;-><init>()V

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    invoke-virtual {p0, v1, v7, v8}, Ljcifs/smb/ba;->a(IJ)V

    iput-wide v7, p0, Ljcifs/smb/ba;->u:J

    return-void

    :cond_29
    const/16 v0, 0x40

    goto :goto_f
.end method

.method a(J)V
    .registers 4

    invoke-virtual {p0}, Ljcifs/smb/ba;->h()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget v0, p0, Ljcifs/smb/ba;->j:I

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/ba;->a(IJ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/ba;->l:Z

    goto :goto_6
.end method

.method a(Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_16

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ljcifs/smb/ba;->u:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_51

    const/16 v1, 0x11

    iput v1, p0, Ljcifs/smb/ba;->t:I

    iput-wide v5, p0, Ljcifs/smb/ba;->r:J

    iput-wide v5, p0, Ljcifs/smb/ba;->s:J

    iput-boolean v0, p0, Ljcifs/smb/ba;->x:Z

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x101

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/ba;->a(Ljava/lang/String;I)Ljcifs/smb/j;

    move-result-object v1

    invoke-interface {v1}, Ljcifs/smb/j;->a()I

    move-result v2

    iput v2, p0, Ljcifs/smb/ba;->t:I

    invoke-interface {v1}, Ljcifs/smb/j;->b()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/ba;->r:J

    invoke-interface {v1}, Ljcifs/smb/j;->c()J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ba;->s:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/ba;->d:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/ba;->u:J

    iput-boolean v7, p0, Ljcifs/smb/ba;->x:Z

    :cond_51
    iget v1, p0, Ljcifs/smb/ba;->t:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Ljcifs/smb/ba;->K()V

    :cond_5a
    sget-object v1, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_79

    sget-object v1, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_79
    iget v1, p0, Ljcifs/smb/ba;->t:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b0

    :try_start_7f
    const-string v1, "*"

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Ljcifs/smb/ba;->a(Ljava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)[Ljcifs/smb/ba;

    move-result-object v1

    :goto_89
    array-length v2, v1

    if-ge v0, v2, :cond_9f

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljcifs/smb/ba;->E()V
    :try_end_91
    .catch Ljcifs/smb/SmbException; {:try_start_7f .. :try_end_91} :catch_94

    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    const v2, -0x3ffffff1

    if-eq v1, v2, :cond_9f

    throw v0

    :cond_9f
    new-instance v0, Ljcifs/smb/z;

    invoke-direct {v0, p1}, Ljcifs/smb/z;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/ba;->L()Ljcifs/smb/v;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    :goto_ab
    iput-wide v5, p0, Ljcifs/smb/ba;->w:J

    iput-wide v5, p0, Ljcifs/smb/ba;->u:J

    return-void

    :cond_b0
    new-instance v0, Ljcifs/smb/y;

    invoke-direct {v0, p1}, Ljcifs/smb/y;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/ba;->L()Ljcifs/smb/v;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    goto :goto_ab
.end method

.method a(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)V
    .registers 14

    if-eqz p6, :cond_5f

    instance-of v0, p6, Ljcifs/smb/g;

    if-eqz v0, :cond_5f

    move-object v0, p6

    check-cast v0, Ljcifs/smb/g;

    iget-object v1, v0, Ljcifs/smb/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object p3, v0, Ljcifs/smb/g;->a:Ljava/lang/String;

    :cond_f
    iget p4, v0, Ljcifs/smb/g;->b:I

    move v4, p4

    move-object v3, p3

    :goto_13
    :try_start_13
    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Ljcifs/smb/ba;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    :cond_26
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/ba;->c(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-nez v0, :cond_49

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/ba;->b(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)V
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_3b} :catch_3c
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_3b} :catch_52

    goto :goto_2e

    :catch_3c
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_49
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    :try_start_4e
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/ba;->d(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)V
    :try_end_51
    .catch Ljava/net/UnknownHostException; {:try_start_4e .. :try_end_51} :catch_3c
    .catch Ljava/net/MalformedURLException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_2e

    :catch_52
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5f
    move v4, p4

    move-object v3, p3

    goto :goto_13
.end method

.method public a(Ljcifs/smb/ba;)V
    .registers 7

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_20

    :cond_18
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-virtual {p0, v2}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;)V

    invoke-virtual {p1, v2}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;)V

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v1, p1, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    invoke-virtual {v0, v1}, Ljcifs/smb/bl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_65

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_65
    iput-wide v3, p0, Ljcifs/smb/ba;->w:J

    iput-wide v3, p0, Ljcifs/smb/ba;->u:J

    iput-wide v3, p1, Ljcifs/smb/ba;->u:J

    new-instance v0, Ljcifs/smb/an;

    iget-object v1, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    iget-object v2, p1, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/ba;->L()Ljcifs/smb/v;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    return-void
.end method

.method a(Ljcifs/smb/t;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v7, 0x0

    instance-of v0, p1, Ljcifs/smb/w;

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/ba;->e()V

    sget-object v0, Ljcifs/smb/ba;->f:Ljcifs/smb/d;

    iget-object v1, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v1, v1, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v1, v1, Ljcifs/smb/bj;->A:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v3, v3, Ljcifs/smb/bl;->c:Ljava/lang/String;

    iget-object v4, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    iget-object v5, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1, v3, v4, v5}, Ljcifs/smb/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v5

    if-eqz v5, :cond_13a

    if-eqz p1, :cond_162

    iget-byte v0, p1, Ljcifs/smb/t;->g:B

    sparse-switch v0, :sswitch_data_166

    const-string v0, "A:"

    move-object v1, v0

    :goto_2c
    move-object v4, v5

    :goto_2d
    :try_start_2d
    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4c

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DFS redirect: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_4c
    iget-object v0, v4, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/b;->a(Ljava/lang/String;)Ljcifs/b;

    move-result-object v0

    iget-object v3, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-static {v0, v3}, Ljcifs/smb/bj;->a(Ljcifs/b;I)Ljcifs/smb/bj;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/smb/bj;->b()V

    iget-object v3, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v3}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bh;

    move-result-object v0

    iget-object v3, v4, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljcifs/smb/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/bl;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    if-eq v4, v5, :cond_7a

    iget-object v0, v4, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v0, :cond_7a

    iget-object v0, v4, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    iget-object v3, v4, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_7a} :catch_8e

    :cond_7a
    move-object v1, v4

    :goto_7b
    if-eqz v2, :cond_a5

    throw v2

    :sswitch_7e
    move-object v0, p1

    check-cast v0, Ljcifs/smb/aq;

    iget-byte v0, v0, Ljcifs/smb/aq;->S:B

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_170

    const-string v0, "A:"

    move-object v1, v0

    goto :goto_2c

    :pswitch_8c
    move-object v1, v2

    goto :goto_2c

    :catch_8e
    move-exception v0

    instance-of v3, v0, Ljcifs/smb/SmbException;

    if-eqz v3, :cond_9c

    check-cast v0, Ljcifs/smb/SmbException;

    :goto_95
    iget-object v3, v4, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v3, v5, :cond_15f

    move-object v2, v0

    move-object v1, v3

    goto :goto_7b

    :cond_9c
    new-instance v3, Ljcifs/smb/SmbException;

    iget-object v6, v4, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-direct {v3, v6, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_95

    :cond_a5
    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_b1

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    :cond_b1
    iput-object v1, p0, Ljcifs/smb/ba;->A:Ljcifs/smb/DfsReferral;

    iget v0, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    if-gez v0, :cond_127

    iput v7, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    :cond_b9
    :goto_b9
    iget-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    iget v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string v0, "\\"

    :cond_cb
    iget-object v2, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_ee
    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    if-eqz p1, :cond_11b

    iget-object v1, p1, Ljcifs/smb/t;->A:Ljava/lang/String;

    if-eqz v1, :cond_11b

    iget-object v1, p1, Ljcifs/smb/t;->A:Ljava/lang/String;

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11b

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11b
    if-eqz p1, :cond_6

    iput-object v0, p1, Ljcifs/smb/t;->A:Ljava/lang/String;

    iget v0, p1, Ljcifs/smb/t;->m:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p1, Ljcifs/smb/t;->m:I

    goto/16 :goto_6

    :cond_127
    iget v0, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v2, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_b9

    iget-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    goto :goto_b9

    :cond_13a
    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-boolean v0, v0, Ljcifs/smb/bl;->h:Z

    if-eqz v0, :cond_155

    instance-of v0, p1, Ljcifs/smb/q;

    if-nez v0, :cond_155

    instance-of v0, p1, Ljcifs/smb/w;

    if-nez v0, :cond_155

    instance-of v0, p1, Ljcifs/smb/aa;

    if-nez v0, :cond_155

    new-instance v0, Ljcifs/smb/SmbException;

    const v1, -0x3ffffddb

    invoke-direct {v0, v1, v7}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    :cond_155
    if-eqz p1, :cond_6

    iget v0, p1, Ljcifs/smb/t;->m:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Ljcifs/smb/t;->m:I

    goto/16 :goto_6

    :cond_15f
    move-object v4, v3

    goto/16 :goto_2d

    :cond_162
    move-object v1, v2

    goto/16 :goto_2c

    nop

    :sswitch_data_166
    .sparse-switch
        0x25 -> :sswitch_7e
        0x32 -> :sswitch_7e
    .end sparse-switch

    :pswitch_data_170
    .packed-switch 0x10
        :pswitch_8c
    .end packed-switch
.end method

.method a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    .registers 5

    :goto_0
    invoke-virtual {p0, p1}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;)V

    :try_start_3
    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    invoke-virtual {v0, p1, p2}, Ljcifs/smb/bl;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_8
    .catch Ljcifs/smb/DfsReferral; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    iget-boolean v1, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    if-eqz v1, :cond_f

    throw v0

    :cond_f
    invoke-virtual {p1}, Ljcifs/smb/t;->e()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)[Ljcifs/smb/ba;
    .registers 12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/ba;->a(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljcifs/smb/ba;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljcifs/smb/ba;

    check-cast v0, [Ljcifs/smb/ba;

    return-object v0
.end method

.method b()Ljcifs/b;
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput v6, p0, Ljcifs/smb/ba;->o:I

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    const-string v3, "server"

    invoke-static {v2, v3}, Ljcifs/smb/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    new-array v0, v5, [Ljcifs/b;

    iput-object v0, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    iget-object v0, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    invoke-static {v3}, Ljcifs/b;->a(Ljava/lang/String;)Ljcifs/b;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Ljcifs/smb/ba;->c()Ljcifs/b;

    move-result-object v0

    :goto_36
    return-object v0

    :cond_37
    const-string v3, "address"

    invoke-static {v2, v3}, Ljcifs/smb/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_63

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    new-array v2, v5, [Ljcifs/b;

    iput-object v2, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    iget-object v2, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    new-instance v3, Ljcifs/b;

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v3, v0}, Ljcifs/b;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v6

    invoke-virtual {p0}, Ljcifs/smb/ba;->c()Ljcifs/b;

    move-result-object v0

    goto :goto_36

    :cond_63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a0

    :try_start_69
    const-string v0, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljcifs/netbios/g;->a(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljcifs/b;

    iput-object v1, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    iget-object v1, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljcifs/netbios/g;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/b;->a(Ljava/lang/String;)Ljcifs/b;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_83
    .catch Ljava/net/UnknownHostException; {:try_start_69 .. :try_end_83} :catch_88

    :goto_83
    invoke-virtual {p0}, Ljcifs/smb/ba;->c()Ljcifs/b;

    move-result-object v0

    goto :goto_36

    :catch_88
    move-exception v0

    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    throw v0

    :cond_97
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    invoke-static {v0, v5}, Ljcifs/b;->b(Ljava/lang/String;Z)[Ljcifs/b;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    goto :goto_83

    :cond_a0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_ae

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    :cond_ae
    invoke-static {v0, v5}, Ljcifs/b;->b(Ljava/lang/String;Z)[Ljcifs/b;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    goto :goto_83

    :cond_b5
    invoke-static {v0, v6}, Ljcifs/b;->b(Ljava/lang/String;Z)[Ljcifs/b;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    goto :goto_83
.end method

.method b(IIII)V
    .registers 6

    invoke-virtual {p0}, Ljcifs/smb/ba;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Ljcifs/smb/ba;->a(IIII)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ba;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/ba;->l:Z

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget v0, v0, Ljcifs/smb/bl;->i:I

    iput v0, p0, Ljcifs/smb/ba;->m:I

    goto :goto_6
.end method

.method b(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)V
    .registers 21

    iget-object v1, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v3, v1, :cond_34

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory must end with \'/\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_34
    invoke-virtual {p0}, Ljcifs/smb/ba;->q()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5a

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The requested list operations is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljcifs/smb/ba;->f:Ljcifs/smb/d;

    invoke-virtual {p0}, Ljcifs/smb/ba;->p()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v3, v5}, Ljcifs/smb/d;->a(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v1

    if-eqz v1, :cond_90

    :try_start_6d
    invoke-virtual {p0}, Ljcifs/smb/ba;->B()[Ljcifs/smb/h;

    move-result-object v3

    const/4 v1, 0x0

    :goto_72
    array-length v5, v3

    if-ge v1, v5, :cond_90

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_80

    invoke-virtual {v4, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_80} :catch_83

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :catch_83
    move-exception v1

    sget-object v3, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v3, Ljcifs/util/e;->a:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_90

    sget-object v3, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_90
    invoke-virtual {p0}, Ljcifs/smb/ba;->b()Ljcifs/b;

    move-result-object v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    :goto_97
    if-eqz v2, :cond_d6

    :try_start_99
    invoke-virtual {p0}, Ljcifs/smb/ba;->f()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_c4

    :try_start_9c
    invoke-virtual {p0}, Ljcifs/smb/ba;->C()[Ljcifs/smb/h;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_b2

    move-result-object v2

    :goto_a0
    const/4 v3, 0x0

    :goto_a1
    :try_start_a1
    array-length v5, v2

    if-ge v3, v5, :cond_d6

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_af

    invoke-virtual {v4, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    :catch_b2
    move-exception v2

    sget-object v3, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v3, Ljcifs/util/e;->a:I

    const/4 v5, 0x3

    if-lt v3, v5, :cond_bf

    sget-object v3, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_bf
    invoke-virtual {p0}, Ljcifs/smb/ba;->D()[Ljcifs/smb/h;
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_c2} :catch_c4

    move-result-object v2

    goto :goto_a0

    :catch_c4
    move-exception v1

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_d1

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_d1
    invoke-virtual {p0}, Ljcifs/smb/ba;->c()Ljcifs/b;

    move-result-object v2

    goto :goto_97

    :cond_d6
    if-eqz v1, :cond_f1

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f1

    instance-of v2, v1, Ljcifs/smb/SmbException;

    if-nez v2, :cond_ee

    new-instance v2, Ljcifs/smb/SmbException;

    iget-object v3, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_ee
    check-cast v1, Ljcifs/smb/SmbException;

    throw v1

    :cond_f1
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f9
    :goto_f9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_140

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljcifs/smb/h;

    invoke-interface {v2}, Ljcifs/smb/h;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz p5, :cond_114

    move-object/from16 v0, p5

    invoke-interface {v0, p0, v3}, Ljcifs/smb/be;->a(Ljcifs/smb/ba;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    :cond_114
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f9

    new-instance v1, Ljcifs/smb/ba;

    invoke-interface {v2}, Ljcifs/smb/h;->b()I

    move-result v4

    const/16 v5, 0x11

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ljcifs/smb/ba;-><init>(Ljcifs/smb/ba;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_136

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Ljcifs/smb/bb;->a(Ljcifs/smb/ba;)Z

    move-result v2

    if-eqz v2, :cond_f9

    :cond_136
    if-eqz p2, :cond_13c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    :cond_13c
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    :cond_140
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/16 v0, 0x2f

    const/16 v6, 0x2e

    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, v0, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    if-le v5, v1, :cond_23

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_23

    :cond_22
    :goto_22
    return v1

    :cond_23
    if-le v0, v1, :cond_2d

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_22

    :cond_2d
    if-ne v5, v0, :cond_37

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_37
    const/4 v1, 0x0

    goto :goto_22
.end method

.method c()Ljcifs/b;
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Ljcifs/smb/ba;->o:I

    iget-object v2, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    array-length v2, v2

    if-ge v1, v2, :cond_12

    iget-object v0, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    iget v1, p0, Ljcifs/smb/ba;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljcifs/smb/ba;->o:I

    aget-object v0, v0, v1

    :cond_12
    return-object v0
.end method

.method c(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v2, v0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_45

    const/4 v2, 0x0

    :goto_f
    if-nez v2, :cond_4a

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/ba;->e()V

    new-instance v2, Ljcifs/smb/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v3, v3, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v3, v3, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v3, v3, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-object v3, v3, Ljcifs/smb/bk;->e:Ljava/lang/String;

    const/high16 v4, -0x8000

    invoke-direct {v2, v3, v4}, Ljcifs/smb/k;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljcifs/smb/l;

    invoke-direct {v13}, Ljcifs/smb/l;-><init>()V

    move-object v14, v2

    :cond_2d
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v2, v13, Ljcifs/smb/ar;->P:I

    if-eqz v2, :cond_83

    iget v2, v13, Ljcifs/smb/ar;->P:I

    const/16 v3, 0xea

    if-eq v2, v3, :cond_83

    new-instance v2, Ljcifs/smb/SmbException;

    iget v3, v13, Ljcifs/smb/ar;->P:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v2

    :cond_45
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/ba;->q()I

    move-result v2

    goto :goto_f

    :cond_4a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_62

    new-instance v2, Ljcifs/smb/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Ljcifs/smb/k;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljcifs/smb/l;

    invoke-direct {v13}, Ljcifs/smb/l;-><init>()V

    move-object v14, v2

    goto :goto_2d

    :cond_62
    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested list operations is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_83
    iget v2, v13, Ljcifs/smb/ar;->P:I

    const/16 v3, 0xea

    if-ne v2, v3, :cond_b3

    const/4 v2, 0x1

    move/from16 v17, v2

    :goto_8c
    if-eqz v17, :cond_b7

    iget v2, v13, Ljcifs/smb/ar;->Q:I

    add-int/lit8 v2, v2, -0x1

    move v15, v2

    :goto_93
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_96
    move/from16 v0, v16

    if-ge v0, v15, :cond_ec

    iget-object v2, v13, Ljcifs/smb/ar;->R:[Ljcifs/smb/h;

    aget-object v3, v2, v16

    invoke-interface {v3}, Ljcifs/smb/h;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz p5, :cond_bb

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v4}, Ljcifs/smb/be;->a(Ljcifs/smb/ba;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_bb

    :cond_ae
    :goto_ae
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_96

    :cond_b3
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_8c

    :cond_b7
    iget v2, v13, Ljcifs/smb/ar;->Q:I

    move v15, v2

    goto :goto_93

    :cond_bb
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ae

    new-instance v2, Ljcifs/smb/ba;

    invoke-interface {v3}, Ljcifs/smb/h;->b()I

    move-result v5

    const/16 v6, 0x11

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Ljcifs/smb/ba;-><init>(Ljcifs/smb/ba;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_de

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljcifs/smb/bb;->a(Ljcifs/smb/ba;)Z

    move-result v3

    if-eqz v3, :cond_ae

    :cond_de
    if-eqz p2, :cond_e6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    :cond_e6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    :cond_ec
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/ba;->q()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f4

    :goto_f3
    return-void

    :cond_f4
    const/16 v2, -0x29

    iput-byte v2, v14, Ljcifs/smb/aq;->S:B

    const/4 v3, 0x0

    move-object v2, v13

    check-cast v2, Ljcifs/smb/l;

    iget-object v2, v2, Ljcifs/smb/l;->a:Ljava/lang/String;

    invoke-virtual {v14, v3, v2}, Ljcifs/smb/aq;->a(ILjava/lang/String;)V

    invoke-virtual {v13}, Ljcifs/smb/ar;->e()V

    if-nez v17, :cond_2d

    goto :goto_f3
.end method

.method public connect()V
    .registers 4

    invoke-virtual {p0}, Ljcifs/smb/ba;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    invoke-virtual {p0}, Ljcifs/smb/ba;->b()Ljcifs/b;

    :cond_d
    :goto_d
    :try_start_d
    invoke-virtual {p0}, Ljcifs/smb/ba;->f()V
    :try_end_10
    .catch Ljcifs/smb/SmbAuthException; {:try_start_d .. :try_end_10} :catch_11
    .catch Ljcifs/smb/SmbException; {:try_start_d .. :try_end_10} :catch_13

    goto :goto_6

    :catch_11
    move-exception v0

    throw v0

    :catch_13
    move-exception v0

    invoke-virtual {p0}, Ljcifs/smb/ba;->c()Ljcifs/b;

    move-result-object v1

    if-nez v1, :cond_1b

    throw v0

    :cond_1b
    sget-object v1, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_d

    sget-object v1, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_d
.end method

.method d(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/be;Ljcifs/smb/bb;)V
    .registers 24

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_3b

    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory must end with \'/\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3b
    new-instance v3, Ljcifs/smb/bm;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v3, v2, v0, v1}, Ljcifs/smb/bm;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Ljcifs/smb/bn;

    invoke-direct {v14}, Ljcifs/smb/bn;-><init>()V

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v4, 0x3

    if-lt v2, v4, :cond_6a

    sget-object v2, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFindFirstNext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Ljcifs/smb/aq;->A:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_6a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v15, v14, Ljcifs/smb/bn;->a:I

    new-instance v16, Ljcifs/smb/bp;

    iget v2, v14, Ljcifs/smb/bn;->aA:I

    iget-object v3, v14, Ljcifs/smb/bn;->az:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v2, v3}, Ljcifs/smb/bp;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x2

    iput-byte v2, v14, Ljcifs/smb/bn;->L:B

    :goto_7f
    const/4 v2, 0x0

    move v13, v2

    :goto_81
    iget v2, v14, Ljcifs/smb/bn;->Q:I

    if-ge v13, v2, :cond_f6

    iget-object v2, v14, Ljcifs/smb/bn;->R:[Ljcifs/smb/h;

    aget-object v3, v2, v13

    invoke-interface {v3}, Ljcifs/smb/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x3

    if-ge v2, v5, :cond_b4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    sget v5, Ljcifs/smb/ba;->a:I

    if-eq v2, v5, :cond_a0

    sget v5, Ljcifs/smb/ba;->b:I

    if-ne v2, v5, :cond_b4

    :cond_a0
    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, ".."

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    :cond_b0
    :goto_b0
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_81

    :cond_b4
    if-eqz p5, :cond_c0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v4}, Ljcifs/smb/be;->a(Ljcifs/smb/ba;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    :cond_c0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b0

    new-instance v2, Ljcifs/smb/ba;

    const/4 v5, 0x1

    invoke-interface {v3}, Ljcifs/smb/h;->c()I

    move-result v6

    invoke-interface {v3}, Ljcifs/smb/h;->d()J

    move-result-wide v7

    invoke-interface {v3}, Ljcifs/smb/h;->e()J

    move-result-wide v9

    invoke-interface {v3}, Ljcifs/smb/h;->f()J

    move-result-wide v11

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Ljcifs/smb/ba;-><init>(Ljcifs/smb/ba;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_e8

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljcifs/smb/bb;->a(Ljcifs/smb/ba;)Z

    move-result v3

    if-eqz v3, :cond_b0

    :cond_e8
    if-eqz p2, :cond_f0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_f0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_f6
    iget-boolean v2, v14, Ljcifs/smb/bn;->S:Z

    if-nez v2, :cond_fe

    iget v2, v14, Ljcifs/smb/bn;->Q:I

    if-nez v2, :cond_10d

    :cond_fe
    :try_start_fe
    new-instance v2, Ljcifs/smb/aa;

    invoke-direct {v2, v15}, Ljcifs/smb/aa;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Ljcifs/smb/ba;->L()Ljcifs/smb/v;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_10c
    .catch Ljcifs/smb/SmbException; {:try_start_fe .. :try_end_10c} :catch_122

    :cond_10c
    :goto_10c
    return-void

    :cond_10d
    iget v2, v14, Ljcifs/smb/bn;->aA:I

    iget-object v3, v14, Ljcifs/smb/bn;->az:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljcifs/smb/aq;->a(ILjava/lang/String;)V

    invoke-virtual {v14}, Ljcifs/smb/bn;->e()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Ljcifs/smb/ba;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    goto/16 :goto_7f

    :catch_122
    move-exception v2

    sget-object v3, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v3, Ljcifs/util/e;->a:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_10c

    sget-object v3, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v2, v3}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_10c
.end method

.method d()Z
    .registers 3

    iget v0, p0, Ljcifs/smb/ba;->o:I

    iget-object v1, p0, Ljcifs/smb/ba;->n:[Ljcifs/b;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method e()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/ba;->connect()V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_f

    return-void

    :catch_4
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Failed to connect to server"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_d
    move-exception v0

    throw v0

    :catch_f
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Failed to connect to server"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljcifs/smb/ba;

    if-eqz v0, :cond_47

    check-cast p1, Ljcifs/smb/ba;

    if-ne p0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    invoke-virtual {p1}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    :try_start_2c
    invoke-virtual {p0}, Ljcifs/smb/ba;->a()Ljcifs/b;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/ba;->a()Ljcifs/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/b;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_37} :catch_39

    move-result v0

    goto :goto_9

    :catch_39
    move-exception v0

    invoke-virtual {p0}, Ljcifs/smb/ba;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/ba;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9

    :cond_47
    const/4 v0, 0x0

    goto :goto_9
.end method

.method f()V
    .registers 12

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljcifs/smb/ba;->a()Ljcifs/b;

    move-result-object v4

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->f:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    :goto_12
    invoke-virtual {p0}, Ljcifs/smb/ba;->o()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    sget-object v1, Ljcifs/smb/ba;->f:Ljcifs/smb/d;

    iget-object v7, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v7, v7, Ljcifs/smb/bl;->c:Ljava/lang/String;

    iget-object v8, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v5, v7, v9, v8}, Ljcifs/smb/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_73

    move v1, v2

    :goto_27
    iput-boolean v1, v6, Ljcifs/smb/bl;->h:Z

    iget-object v1, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-boolean v1, v1, Ljcifs/smb/bl;->h:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iput v10, v1, Ljcifs/smb/bl;->a:I

    :cond_33
    :try_start_33
    sget-object v1, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v6, 0x3

    if-lt v1, v6, :cond_52

    sget-object v1, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doConnect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_52
    iget-object v1, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Ljcifs/smb/bl;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_59
    .catch Ljcifs/smb/SmbAuthException; {:try_start_33 .. :try_end_59} :catch_75

    :goto_59
    return-void

    :cond_5a
    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-static {v4, v0}, Ljcifs/smb/bj;->a(Ljcifs/b;I)Ljcifs/smb/bj;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bh;

    move-result-object v1

    iget-object v5, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    invoke-virtual {v1, v5, v9}, Ljcifs/smb/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/bl;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    goto :goto_12

    :cond_73
    move v1, v3

    goto :goto_27

    :catch_75
    move-exception v1

    iget-object v4, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-nez v4, :cond_8c

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bh;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Ljcifs/smb/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/bl;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    invoke-virtual {v0, v9, v9}, Ljcifs/smb/bl;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V

    goto :goto_59

    :cond_8c
    iget-object v4, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljcifs/smb/r;->a(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v4

    if-eqz v4, :cond_cc

    iput-object v4, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bh;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Ljcifs/smb/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/bl;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    sget-object v1, Ljcifs/smb/ba;->f:Ljcifs/smb/d;

    iget-object v4, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v4, v4, Ljcifs/smb/bl;->c:Ljava/lang/String;

    iget-object v6, p0, Ljcifs/smb/ba;->g:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v5, v4, v9, v6}, Ljcifs/smb/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_ca

    :goto_b8
    iput-boolean v2, v0, Ljcifs/smb/bl;->h:Z

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-boolean v0, v0, Ljcifs/smb/bl;->h:Z

    if-eqz v0, :cond_c4

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iput v10, v0, Ljcifs/smb/bl;->a:I

    :cond_c4
    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    invoke-virtual {v0, v9, v9}, Ljcifs/smb/bl;->b(Ljcifs/smb/t;Ljcifs/smb/t;)V

    goto :goto_59

    :cond_ca
    move v2, v3

    goto :goto_b8

    :cond_cc
    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-lt v0, v2, :cond_dd

    invoke-virtual {p0}, Ljcifs/smb/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_dd

    sget-object v0, Ljcifs/smb/ba;->c:Ljcifs/util/e;

    invoke-virtual {v1, v0}, Ljcifs/smb/SmbAuthException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_dd
    throw v1
.end method

.method g()Z
    .registers 3

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget v0, v0, Ljcifs/smb/bl;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getContentLength()I
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/ba;->F()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_c

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getDate()J
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/ba;->z()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    :goto_4
    return-wide v0

    :catch_5
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Ljcifs/smb/bc;

    invoke-direct {v0, p0}, Ljcifs/smb/bc;-><init>(Ljcifs/smb/ba;)V

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/ba;->z()J
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    :goto_4
    return-wide v0

    :catch_5
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Ljcifs/smb/bd;

    invoke-direct {v0, p0}, Ljcifs/smb/bd;-><init>(Ljcifs/smb/ba;)V

    return-object v0
.end method

.method h()Z
    .registers 3

    iget-boolean v0, p0, Ljcifs/smb/ba;->l:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljcifs/smb/ba;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Ljcifs/smb/ba;->m:I

    iget-object v1, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget v1, v1, Ljcifs/smb/bl;->i:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hashCode()I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/ba;->a()Ljcifs/b;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/b;->hashCode()I
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_7} :catch_17

    move-result v0

    :goto_8
    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :catch_17
    move-exception v0

    invoke-virtual {p0}, Ljcifs/smb/ba;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8
.end method

.method i()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->a(J)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2f

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    iget-object v0, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_16
    iget-object v1, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_21

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_21
    iget-object v1, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_42
    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_66
    const-string v0, "smb://"

    goto :goto_29
.end method

.method public k()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x2f

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "smb://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3c

    iget-object v0, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_40

    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    :cond_3c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_29

    :cond_40
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_47
    return-object v0

    :cond_48
    const-string v0, "smb://"

    goto :goto_47
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/lang/String;
    .registers 14

    const/4 v5, 0x0

    const/16 v12, 0x2e

    const/4 v6, 0x0

    const/16 v11, 0x2f

    const/4 v1, 0x1

    iget-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    if-nez v0, :cond_a1

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v0, v7

    new-array v8, v0, [C

    array-length v9, v7

    move v0, v6

    move v2, v6

    move v4, v6

    :goto_1c
    if-ge v4, v9, :cond_82

    packed-switch v0, :pswitch_data_dc

    move v3, v4

    :cond_22
    :goto_22
    add-int/lit8 v4, v3, 0x1

    goto :goto_1c

    :pswitch_25
    aget-char v0, v7, v4

    if-eq v0, v11, :cond_2b

    move-object v0, v5

    :goto_2a
    return-object v0

    :cond_2b
    add-int/lit8 v0, v2, 0x1

    aget-char v3, v7, v4

    aput-char v3, v8, v2

    move v2, v0

    move v3, v4

    move v0, v1

    goto :goto_22

    :pswitch_35
    aget-char v3, v7, v4

    if-ne v3, v11, :cond_3b

    move v3, v4

    goto :goto_22

    :cond_3b
    aget-char v3, v7, v4

    if-ne v3, v12, :cond_4c

    add-int/lit8 v3, v4, 0x1

    if-ge v3, v9, :cond_49

    add-int/lit8 v3, v4, 0x1

    aget-char v3, v7, v3

    if-ne v3, v11, :cond_4c

    :cond_49
    add-int/lit8 v3, v4, 0x1

    goto :goto_22

    :cond_4c
    add-int/lit8 v3, v4, 0x1

    if-ge v3, v9, :cond_73

    aget-char v3, v7, v4

    if-ne v3, v12, :cond_73

    add-int/lit8 v3, v4, 0x1

    aget-char v3, v7, v3

    if-ne v3, v12, :cond_73

    add-int/lit8 v3, v4, 0x2

    if-ge v3, v9, :cond_64

    add-int/lit8 v3, v4, 0x2

    aget-char v3, v7, v3

    if-ne v3, v11, :cond_73

    :cond_64
    add-int/lit8 v3, v4, 0x2

    if-eq v2, v1, :cond_22

    :cond_68
    add-int/lit8 v2, v2, -0x1

    if-le v2, v1, :cond_22

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v8, v4

    if-ne v4, v11, :cond_68

    goto :goto_22

    :cond_73
    const/4 v0, 0x2

    :pswitch_74
    aget-char v3, v7, v4

    if-ne v3, v11, :cond_79

    move v0, v1

    :cond_79
    add-int/lit8 v3, v2, 0x1

    aget-char v10, v7, v4

    aput-char v10, v8, v2

    move v2, v3

    move v3, v4

    goto :goto_22

    :cond_82
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v6, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    if-le v2, v1, :cond_d5

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v2, v11, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_a4

    iget-object v0, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    :cond_a1
    :goto_a1
    iget-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    goto :goto_2a

    :cond_a4
    if-ne v2, v0, :cond_b3

    iget-object v0, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    goto :goto_a1

    :cond_b3
    iget-object v3, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    aget-char v3, v8, v0

    if-ne v3, v11, :cond_d2

    :goto_c1
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    const/16 v1, 0x5c

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    goto :goto_a1

    :cond_d2
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    :cond_d5
    iput-object v5, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, Ljcifs/smb/ba;->i:Ljava/lang/String;

    goto :goto_a1

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_25
        :pswitch_35
        :pswitch_74
    .end packed-switch
.end method

.method public n()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smb://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ba;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    const-string v0, "smb://"

    goto :goto_2e
.end method

.method o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/ba;->A:Ljcifs/smb/DfsReferral;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljcifs/smb/ba;->A:Ljcifs/smb/DfsReferral;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljcifs/smb/ba;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public p()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method public q()I
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Ljcifs/smb/ba;->k:I

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_15

    iput v1, p0, Ljcifs/smb/ba;->k:I

    :cond_12
    :goto_12
    iget v0, p0, Ljcifs/smb/ba;->k:I

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Ljcifs/smb/ba;->e()V

    iget-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x10

    iput v0, p0, Ljcifs/smb/ba;->k:I

    goto :goto_12

    :cond_2b
    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    const-string v1, "LPT1:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x20

    iput v0, p0, Ljcifs/smb/ba;->k:I

    goto :goto_12

    :cond_3c
    iget-object v0, p0, Ljcifs/smb/ba;->h:Ljcifs/smb/bl;

    iget-object v0, v0, Ljcifs/smb/bl;->d:Ljava/lang/String;

    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 v0, 0x40

    iput v0, p0, Ljcifs/smb/ba;->k:I

    goto :goto_12

    :cond_4d
    const/16 v0, 0x8

    iput v0, p0, Ljcifs/smb/ba;->k:I

    goto :goto_12

    :cond_52
    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_69

    :cond_66
    iput v2, p0, Ljcifs/smb/ba;->k:I

    goto :goto_12

    :cond_69
    :try_start_69
    invoke-virtual {p0}, Ljcifs/smb/ba;->a()Ljcifs/b;
    :try_end_6c
    .catch Ljava/net/UnknownHostException; {:try_start_69 .. :try_end_6c} :catch_8c

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/b;->c()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljcifs/netbios/g;

    if-eqz v1, :cond_99

    invoke-virtual {v0}, Ljcifs/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/g;

    invoke-virtual {v0}, Ljcifs/netbios/g;->j()I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_87

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_99

    :cond_87
    iput v2, p0, Ljcifs/smb/ba;->k:I

    iget v0, p0, Ljcifs/smb/ba;->k:I

    goto :goto_14

    :catch_8c
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_99
    const/4 v0, 0x4

    iput v0, p0, Ljcifs/smb/ba;->k:I

    goto/16 :goto_12
.end method

.method r()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v3, 0x2

    iget v0, p0, Ljcifs/smb/ba;->k:I

    if-eq v0, v3, :cond_12

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    :cond_12
    iput v3, p0, Ljcifs/smb/ba;->k:I

    move v0, v1

    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-nez v0, :cond_42

    invoke-virtual {p0}, Ljcifs/smb/ba;->a()Ljcifs/b;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/b;->c()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljcifs/netbios/g;

    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Ljcifs/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/g;

    invoke-virtual {v0}, Ljcifs/netbios/g;->j()I

    move-result v0

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_3b

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_3f

    :cond_3b
    iput v3, p0, Ljcifs/smb/ba;->k:I

    move v0, v1

    goto :goto_15

    :cond_3f
    const/4 v0, 0x4

    iput v0, p0, Ljcifs/smb/ba;->k:I

    :cond_42
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public s()Z
    .registers 8

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    iget-wide v0, p0, Ljcifs/smb/ba;->u:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget-boolean v0, p0, Ljcifs/smb/ba;->x:Z

    :goto_f
    return v0

    :cond_10
    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/ba;->t:I

    iput-wide v5, p0, Ljcifs/smb/ba;->r:J

    iput-wide v5, p0, Ljcifs/smb/ba;->s:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/ba;->x:Z

    :try_start_1b
    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_36

    :goto_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/ba;->x:Z
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_2a} :catch_4c
    .catch Ljcifs/smb/SmbException; {:try_start_1b .. :try_end_2a} :catch_5c

    :goto_2a
    :sswitch_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/ba;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/ba;->u:J

    iget-boolean v0, p0, Ljcifs/smb/ba;->x:Z

    goto :goto_f

    :cond_36
    :try_start_36
    iget-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-nez v0, :cond_65

    invoke-virtual {p0}, Ljcifs/smb/ba;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/b;->a(Ljava/lang/String;Z)Ljcifs/b;

    goto :goto_27

    :catch_4c
    move-exception v0

    goto :goto_2a

    :cond_4e
    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/b;->a(Ljava/lang/String;)Ljcifs/b;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/b;->d()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/net/UnknownHostException; {:try_start_36 .. :try_end_5b} :catch_4c
    .catch Ljcifs/smb/SmbException; {:try_start_36 .. :try_end_5b} :catch_5c

    goto :goto_27

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_9a

    throw v0

    :cond_65
    :try_start_65
    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_79

    iget-object v0, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_79
    invoke-virtual {p0}, Ljcifs/smb/ba;->e()V

    goto :goto_27

    :cond_7d
    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/ba;->a(Ljava/lang/String;I)Ljcifs/smb/j;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/j;->a()I

    move-result v1

    iput v1, p0, Ljcifs/smb/ba;->t:I

    invoke-interface {v0}, Ljcifs/smb/j;->b()J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ba;->r:J

    invoke-interface {v0}, Ljcifs/smb/j;->c()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/ba;->s:J
    :try_end_99
    .catch Ljava/net/UnknownHostException; {:try_start_65 .. :try_end_99} :catch_4c
    .catch Ljcifs/smb/SmbException; {:try_start_65 .. :try_end_99} :catch_5c

    goto :goto_27

    :sswitch_data_9a
    .sparse-switch
        -0x3ffffff1 -> :sswitch_2a
        -0x3fffffcd -> :sswitch_2a
        -0x3fffffcc -> :sswitch_2a
        -0x3fffffc6 -> :sswitch_2a
    .end sparse-switch
.end method

.method public t()Z
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/ba;->q()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    move-result v0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/ba;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljcifs/smb/ba;->q()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Ljcifs/smb/ba;->t:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public v()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto :goto_c

    :cond_15
    iget v2, p0, Ljcifs/smb/ba;->t:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_c
.end method

.method public w()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_c
    return v1

    :cond_d
    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    iget v2, p0, Ljcifs/smb/ba;->t:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_18

    :goto_16
    move v1, v0

    goto :goto_c

    :cond_18
    move v0, v1

    goto :goto_16
.end method

.method public x()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_1d

    iget-object v2, p0, Ljcifs/smb/ba;->q:Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v0

    goto :goto_6

    :cond_1d
    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    iget v2, p0, Ljcifs/smb/ba;->t:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    :goto_27
    move v1, v0

    goto :goto_6

    :cond_29
    move v0, v1

    goto :goto_27
.end method

.method public y()J
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    iget-wide v0, p0, Ljcifs/smb/ba;->r:J

    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method public z()J
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/ba;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    invoke-virtual {p0}, Ljcifs/smb/ba;->s()Z

    iget-wide v0, p0, Ljcifs/smb/ba;->s:J

    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method
