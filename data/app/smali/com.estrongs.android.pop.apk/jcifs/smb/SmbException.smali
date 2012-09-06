.class public Ljcifs/smb/SmbException;
.super Ljava/io/IOException;

# interfaces
.implements Ljcifs/smb/cm;
.implements Ljcifs/smb/f;
.implements Ljcifs/smb/p;


# instance fields
.field private rootCause:Ljava/lang/Throwable;

.field private status:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    if-eqz p2, :cond_e

    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByWinerrCode(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_13

    :goto_b
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void

    :cond_e
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_13
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    goto :goto_b
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const v0, -0x3fffffff

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    const v0, -0x3fffffff

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method static getMessageByCode(I)Ljava/lang/String;
    .registers 6

    const/high16 v1, -0x4000

    const/4 v2, 0x0

    if-nez p0, :cond_8

    const-string v0, "NT_STATUS_SUCCESS"

    :goto_7
    return-object v0

    :cond_8
    and-int v0, p0, v1

    if-ne v0, v1, :cond_2f

    const/4 v1, 0x1

    sget-object v0, Ljcifs/smb/SmbException;->e_:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-lt v0, v1, :cond_56

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Ljcifs/smb/SmbException;->e_:[I

    aget v3, v3, v2

    if-le p0, v3, :cond_21

    add-int/lit8 v1, v2, 0x1

    goto :goto_12

    :cond_21
    sget-object v0, Ljcifs/smb/SmbException;->e_:[I

    aget v0, v0, v2

    if-ge p0, v0, :cond_2a

    add-int/lit8 v0, v2, -0x1

    goto :goto_12

    :cond_2a
    sget-object v0, Ljcifs/smb/SmbException;->f_:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_7

    :cond_2f
    sget-object v0, Ljcifs/smb/SmbException;->a:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_35
    if-lt v0, v1, :cond_56

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Ljcifs/smb/SmbException;->a:[[I

    aget-object v4, v4, v3

    aget v4, v4, v2

    if-le p0, v4, :cond_46

    add-int/lit8 v1, v3, 0x1

    goto :goto_35

    :cond_46
    sget-object v0, Ljcifs/smb/SmbException;->a:[[I

    aget-object v0, v0, v3

    aget v0, v0, v2

    if-ge p0, v0, :cond_51

    add-int/lit8 v0, v3, -0x1

    goto :goto_35

    :cond_51
    sget-object v0, Ljcifs/smb/SmbException;->b:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_7

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method static getMessageByWinerrCode(I)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Ljcifs/smb/SmbException;->a_:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-lt v0, v1, :cond_23

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Ljcifs/smb/SmbException;->a_:[I

    aget v3, v3, v2

    if-le p0, v3, :cond_15

    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_15
    sget-object v0, Ljcifs/smb/SmbException;->a_:[I

    aget v0, v0, v2

    if-ge p0, v0, :cond_1e

    add-int/lit8 v0, v2, -0x1

    goto :goto_6

    :cond_1e
    sget-object v0, Ljcifs/smb/SmbException;->b_:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_22
    return-object v0

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method static getStatusByCode(I)I
    .registers 6

    const/4 v2, 0x0

    const/high16 v0, -0x4000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    :goto_6
    return p0

    :cond_7
    sget-object v0, Ljcifs/smb/SmbException;->a:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_d
    if-lt v0, v1, :cond_31

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Ljcifs/smb/SmbException;->a:[[I

    aget-object v4, v4, v3

    aget v4, v4, v2

    if-le p0, v4, :cond_1e

    add-int/lit8 v1, v3, 0x1

    goto :goto_d

    :cond_1e
    sget-object v0, Ljcifs/smb/SmbException;->a:[[I

    aget-object v0, v0, v3

    aget v0, v0, v2

    if-ge p0, v0, :cond_29

    add-int/lit8 v0, v3, -0x1

    goto :goto_d

    :cond_29
    sget-object v0, Ljcifs/smb/SmbException;->a:[[I

    aget-object v0, v0, v3

    const/4 v1, 0x1

    aget p0, v0, v1

    goto :goto_6

    :cond_31
    const p0, -0x3fffffff

    goto :goto_6
.end method


# virtual methods
.method public getNtStatus()I
    .registers 2

    iget v0, p0, Ljcifs/smb/SmbException;->status:I

    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method
