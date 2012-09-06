.class abstract Ljcifs/netbios/f;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:[Ljcifs/netbios/g;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Ljcifs/netbios/b;

.field r:Ljcifs/netbios/b;

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:Ljava/net/InetAddress;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljcifs/netbios/f;->n:Z

    iput-boolean v0, p0, Ljcifs/netbios/f;->p:Z

    iput v0, p0, Ljcifs/netbios/f;->f:I

    iput v0, p0, Ljcifs/netbios/f;->t:I

    return-void
.end method

.method static a(I[BI)V
    .registers 5

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method static d([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static e([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static f([BI)I
    .registers 3

    invoke-static {p0, p1}, Ljcifs/netbios/f;->d([BI)I

    move-result v0

    return v0
.end method


# virtual methods
.method abstract a([BI)I
.end method

.method abstract b([BI)I
.end method

.method abstract c([BI)I
.end method

.method g([BI)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/f;->i([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/f;->a([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method h([BI)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/f;->j([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/f;->b([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method i([BI)I
    .registers 8

    const/16 v1, 0x80

    const/4 v2, 0x0

    iget v0, p0, Ljcifs/netbios/f;->c:I

    invoke-static {v0, p1, p2}, Ljcifs/netbios/f;->a(I[BI)V

    add-int/lit8 v3, p2, 0x2

    iget-boolean v0, p0, Ljcifs/netbios/f;->k:Z

    if-eqz v0, :cond_61

    move v0, v1

    :goto_f
    iget v4, p0, Ljcifs/netbios/f;->d:I

    shl-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x78

    add-int/2addr v4, v0

    iget-boolean v0, p0, Ljcifs/netbios/f;->l:Z

    if-eqz v0, :cond_63

    const/4 v0, 0x4

    :goto_1b
    add-int/2addr v4, v0

    iget-boolean v0, p0, Ljcifs/netbios/f;->m:Z

    if-eqz v0, :cond_65

    const/4 v0, 0x2

    :goto_21
    add-int/2addr v4, v0

    iget-boolean v0, p0, Ljcifs/netbios/f;->n:Z

    if-eqz v0, :cond_67

    const/4 v0, 0x1

    :goto_27
    add-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-boolean v3, p0, Ljcifs/netbios/f;->o:Z

    if-eqz v3, :cond_69

    :goto_33
    iget-boolean v3, p0, Ljcifs/netbios/f;->p:Z

    if-eqz v3, :cond_39

    const/16 v2, 0x10

    :cond_39
    add-int/2addr v1, v2

    iget v2, p0, Ljcifs/netbios/f;->e:I

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    iget v0, p0, Ljcifs/netbios/f;->f:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Ljcifs/netbios/f;->a(I[BI)V

    iget v0, p0, Ljcifs/netbios/f;->g:I

    add-int/lit8 v1, p2, 0x6

    invoke-static {v0, p1, v1}, Ljcifs/netbios/f;->a(I[BI)V

    iget v0, p0, Ljcifs/netbios/f;->h:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Ljcifs/netbios/f;->a(I[BI)V

    iget v0, p0, Ljcifs/netbios/f;->i:I

    add-int/lit8 v1, p2, 0xa

    invoke-static {v0, p1, v1}, Ljcifs/netbios/f;->a(I[BI)V

    const/16 v0, 0xc

    return v0

    :cond_61
    move v0, v2

    goto :goto_f

    :cond_63
    move v0, v2

    goto :goto_1b

    :cond_65
    move v0, v2

    goto :goto_21

    :cond_67
    move v0, v2

    goto :goto_27

    :cond_69
    move v1, v2

    goto :goto_33
.end method

.method j([BI)I
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljcifs/netbios/f;->d([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/f;->c:I

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_84

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Ljcifs/netbios/f;->k:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljcifs/netbios/f;->d:I

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_86

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Ljcifs/netbios/f;->l:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_88

    move v0, v1

    :goto_31
    iput-boolean v0, p0, Ljcifs/netbios/f;->m:Z

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8a

    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Ljcifs/netbios/f;->n:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8c

    move v0, v1

    :goto_49
    iput-boolean v0, p0, Ljcifs/netbios/f;->o:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_8e

    :goto_55
    iput-boolean v1, p0, Ljcifs/netbios/f;->p:Z

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Ljcifs/netbios/f;->e:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/f;->f:I

    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/f;->g:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/f;->h:I

    add-int/lit8 v0, p2, 0xa

    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/f;->i:I

    const/16 v0, 0xc

    return v0

    :cond_84
    move v0, v2

    goto :goto_11

    :cond_86
    move v0, v2

    goto :goto_26

    :cond_88
    move v0, v2

    goto :goto_31

    :cond_8a
    move v0, v2

    goto :goto_3c

    :cond_8c
    move v0, v2

    goto :goto_49

    :cond_8e
    move v1, v2

    goto :goto_55
.end method

.method k([BI)I
    .registers 5

    iget-object v0, p0, Ljcifs/netbios/f;->q:Ljcifs/netbios/b;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/b;->a([BI)I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Ljcifs/netbios/f;->s:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/f;->a(I[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/netbios/f;->t:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/f;->a(I[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method l([BI)I
    .registers 5

    iget-object v0, p0, Ljcifs/netbios/f;->q:Ljcifs/netbios/b;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/b;->b([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/f;->s:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/f;->t:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method m([BI)I
    .registers 6

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Ljcifs/netbios/f;->q:Ljcifs/netbios/b;

    iput-object v0, p0, Ljcifs/netbios/f;->r:Ljcifs/netbios/b;

    add-int/lit8 v0, p2, 0x2

    :goto_e
    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/f;->u:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/f;->v:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/netbios/f;->e([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/f;->w:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/netbios/f;->d([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/f;->x:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/netbios/f;->x:I

    div-int/lit8 v1, v1, 0x6

    new-array v1, v1, [Ljcifs/netbios/g;

    iput-object v1, p0, Ljcifs/netbios/f;->b:[Ljcifs/netbios/g;

    iget v1, p0, Ljcifs/netbios/f;->x:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    iput v2, p0, Ljcifs/netbios/f;->a:I

    :goto_3c
    if-ge v0, v1, :cond_52

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/f;->c([BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Ljcifs/netbios/f;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/netbios/f;->a:I

    goto :goto_3c

    :cond_4a
    iget-object v0, p0, Ljcifs/netbios/f;->r:Ljcifs/netbios/b;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/b;->b([BI)I

    move-result v0

    add-int/2addr v0, p2

    goto :goto_e

    :cond_52
    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x4

    iget v0, p0, Ljcifs/netbios/f;->d:I

    sparse-switch v0, :sswitch_data_1e6

    iget v0, p0, Ljcifs/netbios/f;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iget v1, p0, Ljcifs/netbios/f;->e:I

    packed-switch v1, :pswitch_data_1f0

    :pswitch_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/netbios/f;->e:I

    invoke-static {v2, v7}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_2a
    iget v1, p0, Ljcifs/netbios/f;->s:I

    packed-switch v1, :pswitch_data_202

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/netbios/f;->s:I

    invoke-static {v2, v6}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_48
    iget v2, p0, Ljcifs/netbios/f;->u:I

    sparse-switch v2, :sswitch_data_20a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/netbios/f;->u:I

    invoke-static {v3, v6}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_66
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nameTrnId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljcifs/netbios/f;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isResponse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Ljcifs/netbios/f;->k:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",opCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isAuthAnswer="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/f;->l:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isTruncated="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/f;->m:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isRecurAvailable="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/f;->o:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isRecurDesired="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/f;->n:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isBroadcast="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Ljcifs/netbios/f;->p:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",resultCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/f;->e:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",questionCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/f;->f:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",answerCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/f;->g:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",authorityCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/f;->h:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",additionalCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/f;->i:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",questionName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ljcifs/netbios/f;->q:Ljcifs/netbios/b;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",questionType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",questionClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Ljcifs/netbios/f;->t:I

    if-ne v0, v7, :cond_1af

    const-string v0, "IN"

    :goto_129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recordName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/netbios/f;->r:Ljcifs/netbios/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recordClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Ljcifs/netbios/f;->v:I

    if-ne v0, v7, :cond_1ca

    const-string v0, "IN"

    :goto_14f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/f;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rDataLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/f;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v3

    :sswitch_173
    const-string v0, "QUERY"

    goto/16 :goto_d

    :sswitch_177
    const-string v0, "WACK"

    goto/16 :goto_d

    :pswitch_17b
    const-string v1, "FMT_ERR"

    goto/16 :goto_2a

    :pswitch_17f
    const-string v1, "SRV_ERR"

    goto/16 :goto_2a

    :pswitch_183
    const-string v1, "IMP_ERR"

    goto/16 :goto_2a

    :pswitch_187
    const-string v1, "RFS_ERR"

    goto/16 :goto_2a

    :pswitch_18b
    const-string v1, "ACT_ERR"

    goto/16 :goto_2a

    :pswitch_18f
    const-string v1, "CFT_ERR"

    goto/16 :goto_2a

    :pswitch_193
    const-string v1, "NB"

    goto/16 :goto_48

    :pswitch_197
    const-string v1, "NBSTAT"

    goto/16 :goto_48

    :sswitch_19b
    const-string v2, "A"

    goto/16 :goto_66

    :sswitch_19f
    const-string v2, "NS"

    goto/16 :goto_66

    :sswitch_1a3
    const-string v2, "NULL"

    goto/16 :goto_66

    :sswitch_1a7
    const-string v2, "NB"

    goto/16 :goto_66

    :sswitch_1ab
    const-string v2, "NBSTAT"

    goto/16 :goto_66

    :cond_1af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Ljcifs/netbios/f;->t:I

    invoke-static {v4, v6}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_129

    :cond_1ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/netbios/f;->v:I

    invoke-static {v2, v6}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14f

    nop

    :sswitch_data_1e6
    .sparse-switch
        0x0 -> :sswitch_173
        0x7 -> :sswitch_177
    .end sparse-switch

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_17f
        :pswitch_12
        :pswitch_183
        :pswitch_187
        :pswitch_18b
        :pswitch_18f
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x20
        :pswitch_193
        :pswitch_197
    .end packed-switch

    :sswitch_data_20a
    .sparse-switch
        0x1 -> :sswitch_19b
        0x2 -> :sswitch_19f
        0xa -> :sswitch_1a3
        0x20 -> :sswitch_1a7
        0x21 -> :sswitch_1ab
    .end sparse-switch
.end method
