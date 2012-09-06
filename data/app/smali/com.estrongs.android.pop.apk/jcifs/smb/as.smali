.class Ljcifs/smb/as;
.super Ljcifs/smb/b;


# static fields
.field private static H:[B

.field private static final c:Z


# instance fields
.field private D:Z

.field private E:Ljava/lang/String;

.field private F:[B

.field private G:I

.field b:Ljava/lang/String;

.field private d:Ljcifs/smb/bh;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/as;->c:Z

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_9c

    sput-object v0, Ljcifs/smb/as;->H:[B

    const-string v0, "jcifs.smb.client.TreeConnectAndX.CheckDirectory"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v1, Ljcifs/smb/as;->H:[B

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_23
    const-string v0, "jcifs.smb.client.TreeConnectAndX.CreateDirectory"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    sget-object v1, Ljcifs/smb/as;->H:[B

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_34
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Delete"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    sget-object v1, Ljcifs/smb/as;->H:[B

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_45
    const-string v0, "jcifs.smb.client.TreeConnectAndX.DeleteDirectory"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    sget-object v1, Ljcifs/smb/as;->H:[B

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_56
    const-string v0, "jcifs.smb.client.TreeConnectAndX.OpenAndX"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    sget-object v1, Ljcifs/smb/as;->H:[B

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_67
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Rename"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    sget-object v1, Ljcifs/smb/as;->H:[B

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_78
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Transaction"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_89

    sget-object v1, Ljcifs/smb/as;->H:[B

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_89
    const-string v0, "jcifs.smb.client.TreeConnectAndX.QueryInformation"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9b

    sget-object v1, Ljcifs/smb/as;->H:[B

    const/16 v2, 0x8

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_9b
    return-void

    :array_9c
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljcifs/smb/bh;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/t;)V
    .registers 6

    invoke-direct {p0, p4}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/as;->D:Z

    iput-object p1, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iput-object p2, p0, Ljcifs/smb/as;->b:Ljava/lang/String;

    iput-object p3, p0, Ljcifs/smb/as;->E:Ljava/lang/String;

    const/16 v0, 0x75

    iput-byte v0, p0, Ljcifs/smb/as;->g:B

    return-void
.end method


# virtual methods
.method a(B)I
    .registers 4

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0xff

    sparse-switch v1, :sswitch_data_38

    :goto_6
    return v0

    :sswitch_7
    sget-object v1, Ljcifs/smb/as;->H:[B

    aget-byte v0, v1, v0

    goto :goto_6

    :sswitch_c
    sget-object v0, Ljcifs/smb/as;->H:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    goto :goto_6

    :sswitch_12
    sget-object v0, Ljcifs/smb/as;->H:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    goto :goto_6

    :sswitch_18
    sget-object v0, Ljcifs/smb/as;->H:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    goto :goto_6

    :sswitch_1e
    sget-object v0, Ljcifs/smb/as;->H:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    goto :goto_6

    :sswitch_24
    sget-object v0, Ljcifs/smb/as;->H:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    goto :goto_6

    :sswitch_2a
    sget-object v0, Ljcifs/smb/as;->H:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    goto :goto_6

    :sswitch_30
    sget-object v0, Ljcifs/smb/as;->H:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    goto :goto_6

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_c
        0x1 -> :sswitch_18
        0x6 -> :sswitch_12
        0x7 -> :sswitch_24
        0x8 -> :sswitch_30
        0x10 -> :sswitch_7
        0x25 -> :sswitch_2a
        0x2d -> :sswitch_1e
    .end sparse-switch
.end method

.method n([BI)I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v2, v2, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->g:I

    if-nez v2, :cond_82

    iget-object v2, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v2, v2, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v2, :cond_20

    iget-object v2, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, v2, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_82

    :cond_20
    iget-object v2, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v2, v2, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-boolean v2, v2, Ljcifs/smb/bk;->h:Z

    if-eqz v2, :cond_55

    iget-object v2, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v3, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v3, v3, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v3, v3, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-object v3, v3, Ljcifs/smb/bk;->p:[B

    invoke-virtual {v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/as;->F:[B

    iget-object v2, p0, Ljcifs/smb/as;->F:[B

    array-length v2, v2

    iput v2, p0, Ljcifs/smb/as;->G:I

    :goto_41
    add-int/lit8 v2, p2, 0x1

    iget-boolean v3, p0, Ljcifs/smb/as;->D:Z

    if-eqz v3, :cond_85

    :goto_47
    aput-byte v0, p1, p2

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v1, p0, Ljcifs/smb/as;->G:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/as;->a(J[BI)V

    const/4 v0, 0x4

    return v0

    :cond_55
    sget-boolean v2, Ljcifs/smb/as;->c:Z

    if-eqz v2, :cond_61

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Plain text passwords are disabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    iget-object v2, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, v2, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Ljcifs/smb/as;->F:[B

    iget-object v2, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v2, v2, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, v2, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/as;->F:[B

    invoke-virtual {p0, v2, v3, v1}, Ljcifs/smb/as;->a(Ljava/lang/String;[BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/as;->G:I

    goto :goto_41

    :cond_82
    iput v0, p0, Ljcifs/smb/as;->G:I

    goto :goto_41

    :cond_85
    move v0, v1

    goto :goto_47
.end method

.method o([BI)I
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v0, v0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->g:I

    if-nez v0, :cond_50

    iget-object v0, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Ljcifs/smb/as;->d:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_50

    :cond_1f
    iget-object v0, p0, Ljcifs/smb/as;->F:[B

    iget v2, p0, Ljcifs/smb/as;->G:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/as;->G:I

    add-int/2addr v0, p2

    :goto_29
    iget-object v2, p0, Ljcifs/smb/as;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, Ljcifs/smb/as;->a(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr v0, v2

    :try_start_30
    iget-object v2, p0, Ljcifs/smb/as;->E:Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Ljcifs/smb/as;->E:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_42} :catch_55

    iget-object v2, p0, Ljcifs/smb/as;->E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    sub-int v0, v2, p2

    :goto_4f
    return v0

    :cond_50
    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    goto :goto_29

    :catch_55
    move-exception v0

    move v0, v1

    goto :goto_4f
.end method

.method p([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method q([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComTreeConnectAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",disconnectTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/as;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",passwordLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/as;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/as;->F:[B

    iget v3, p0, Ljcifs/smb/as;->G:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljcifs/util/d;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/as;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/as;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
