.class public Ljcifs/smb/SmbException;
.super Ljava/io/IOException;
.source "SmbException.java"

# interfaces
.implements Ljcifs/smb/NtStatus;
.implements Ljcifs/smb/DosError;
.implements Ljcifs/smb/WinError;


# instance fields
.field private rootCause:Ljava/lang/Throwable;

.field private status:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 132
    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;)V
    .registers 4
    .parameter "errcode"
    .parameter "rootCause"

    .prologue
    .line 134
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    .line 136
    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    .line 137
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter "errcode"
    .parameter "winerr"

    .prologue
    .line 148
    if-eqz p2, :cond_e

    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByWinerrCode(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 149
    if-eqz p2, :cond_13

    .end local p1
    :goto_b
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    .line 150
    return-void

    .line 148
    .restart local p1
    :cond_e
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 149
    :cond_13
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    goto :goto_b
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    const v0, -0x3fffffff

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    .line 141
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "msg"
    .parameter "rootCause"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    .line 145
    const v0, -0x3fffffff

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    .line 146
    return-void
.end method

.method static getMessageByCode(I)Ljava/lang/String;
    .registers 7
    .parameter "errcode"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x4000

    .line 49
    if-nez p0, :cond_8

    .line 50
    const-string v3, "NT_STATUS_SUCCESS"

    .line 84
    :goto_7
    return-object v3

    .line 52
    :cond_8
    and-int v3, p0, v4

    if-ne v3, v4, :cond_2f

    .line 53
    const/4 v2, 0x1

    .line 54
    .local v2, min:I
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 56
    .local v0, max:I
    :goto_12
    if-lt v0, v2, :cond_56

    .line 57
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 59
    .local v1, mid:I
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    aget v3, v3, v1

    if-le p0, v3, :cond_21

    .line 60
    add-int/lit8 v2, v1, 0x1

    goto :goto_12

    .line 61
    :cond_21
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    aget v3, v3, v1

    if-ge p0, v3, :cond_2a

    .line 62
    add-int/lit8 v0, v1, -0x1

    goto :goto_12

    .line 64
    :cond_2a
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto :goto_7

    .line 68
    .end local v0           #max:I
    .end local v1           #mid:I
    .end local v2           #min:I
    :cond_2f
    const/4 v2, 0x0

    .line 69
    .restart local v2       #min:I
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 71
    .restart local v0       #max:I
    :goto_35
    if-lt v0, v2, :cond_56

    .line 72
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 74
    .restart local v1       #mid:I
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    aget v3, v3, v5

    if-le p0, v3, :cond_46

    .line 75
    add-int/lit8 v2, v1, 0x1

    goto :goto_35

    .line 76
    :cond_46
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    aget v3, v3, v5

    if-ge p0, v3, :cond_51

    .line 77
    add-int/lit8 v0, v1, -0x1

    goto :goto_35

    .line 79
    :cond_51
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_MESSAGES:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto :goto_7

    .line 84
    .end local v1           #mid:I
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {p0, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7
.end method

.method static getMessageByWinerrCode(I)Ljava/lang/String;
    .registers 6
    .parameter "errcode"

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, min:I
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 112
    .local v0, max:I
    :goto_6
    if-lt v0, v2, :cond_23

    .line 113
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 115
    .local v1, mid:I
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    aget v3, v3, v1

    if-le p0, v3, :cond_15

    .line 116
    add-int/lit8 v2, v1, 0x1

    goto :goto_6

    .line 117
    :cond_15
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    aget v3, v3, v1

    if-ge p0, v3, :cond_1e

    .line 118
    add-int/lit8 v0, v1, -0x1

    goto :goto_6

    .line 120
    :cond_1e
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_MESSAGES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 124
    .end local v1           #mid:I
    :goto_22
    return-object v3

    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_22
.end method

.method static getStatusByCode(I)I
    .registers 6
    .parameter "errcode"

    .prologue
    const/4 v4, 0x0

    .line 87
    const/high16 v3, -0x4000

    and-int/2addr v3, p0

    if-eqz v3, :cond_7

    .line 106
    .end local p0
    .local v0, max:I
    .local v1, mid:I
    .local v2, min:I
    :goto_6
    return p0

    .line 90
    .end local v0           #max:I
    .end local v1           #mid:I
    .end local v2           #min:I
    .restart local p0
    :cond_7
    const/4 v2, 0x0

    .line 91
    .restart local v2       #min:I
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 93
    .restart local v0       #max:I
    :goto_d
    if-lt v0, v2, :cond_31

    .line 94
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 96
    .restart local v1       #mid:I
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    aget v3, v3, v4

    if-le p0, v3, :cond_1e

    .line 97
    add-int/lit8 v2, v1, 0x1

    goto :goto_d

    .line 98
    :cond_1e
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    aget v3, v3, v4

    if-ge p0, v3, :cond_29

    .line 99
    add-int/lit8 v0, v1, -0x1

    goto :goto_d

    .line 101
    :cond_29
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget p0, v3, v4

    goto :goto_6

    .line 106
    .end local v1           #mid:I
    :cond_31
    const p0, -0x3fffffff

    goto :goto_6
.end method


# virtual methods
.method public getNtStatus()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Ljcifs/smb/SmbException;->status:I

    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 159
    iget-object v2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    if-eqz v2, :cond_2f

    .line 160
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 161
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 162
    .local v0, pw:Ljava/io/PrintWriter;
    iget-object v2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .end local v0           #pw:Ljava/io/PrintWriter;
    .end local v1           #sw:Ljava/io/StringWriter;
    :goto_2e
    return-object v2

    :cond_2f
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e
.end method
