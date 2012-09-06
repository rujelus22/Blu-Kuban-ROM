.class abstract Ljcifs/smb/aq;
.super Ljcifs/smb/t;

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final a:I


# instance fields
.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field P:B

.field Q:I

.field R:I

.field S:B

.field T:Ljava/lang/String;

.field U:I

.field V:[B

.field private aA:Z

.field private aB:I

.field private aC:I

.field private az:Z

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.smb.client.transaction_buf_size"

    const v1, 0xffff

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/lit16 v0, v0, -0x200

    sput v0, Ljcifs/smb/aq;->a:I

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/t;-><init>()V

    iput v1, p0, Ljcifs/smb/aq;->b:I

    iput v1, p0, Ljcifs/smb/aq;->c:I

    iput v1, p0, Ljcifs/smb/aq;->d:I

    iput-boolean v2, p0, Ljcifs/smb/aq;->az:Z

    iput-boolean v2, p0, Ljcifs/smb/aq;->aA:Z

    sget v0, Ljcifs/smb/aq;->a:I

    iput v0, p0, Ljcifs/smb/aq;->O:I

    iput v1, p0, Ljcifs/smb/aq;->Q:I

    iput v2, p0, Ljcifs/smb/aq;->R:I

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/aq;->T:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Ljcifs/smb/aq;->N:I

    const/16 v0, 0x3d

    iput v0, p0, Ljcifs/smb/aq;->D:I

    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/aq;->E:I

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/aq;->e()V

    return-void
.end method

.method abstract c([BI)I
.end method

.method abstract d([BI)I
.end method

.method abstract e([BI)I
.end method

.method e()V
    .registers 2

    invoke-super {p0}, Ljcifs/smb/t;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/aq;->az:Z

    iput-boolean v0, p0, Ljcifs/smb/aq;->aA:Z

    return-void
.end method

.method public hasMoreElements()Z
    .registers 2

    iget-boolean v0, p0, Ljcifs/smb/aq;->az:Z

    return v0
.end method

.method n([BI)I
    .registers 9

    const/16 v5, 0x26

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/smb/aq;->L:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, Ljcifs/smb/aq;->M:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v2, p0, Ljcifs/smb/aq;->g:B

    if-eq v2, v5, :cond_49

    iget v2, p0, Ljcifs/smb/aq;->N:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/aq;->O:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    iget-byte v3, p0, Ljcifs/smb/aq;->P:B

    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v2, p0, Ljcifs/smb/aq;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/aq;->Q:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    :cond_49
    iget v2, p0, Ljcifs/smb/aq;->F:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/aq;->G:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v2, p0, Ljcifs/smb/aq;->g:B

    if-ne v2, v5, :cond_65

    iget v2, p0, Ljcifs/smb/aq;->H:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :cond_65
    iget v2, p0, Ljcifs/smb/aq;->I:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v2, v0, 0x2

    iget v0, p0, Ljcifs/smb/aq;->I:I

    if-nez v0, :cond_86

    move v0, v1

    :goto_72
    int-to-long v3, v0

    invoke-static {v3, v4, p1, v2}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget-byte v2, p0, Ljcifs/smb/aq;->g:B

    if-ne v2, v5, :cond_89

    iget v1, p0, Ljcifs/smb/aq;->K:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/aq;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :goto_84
    sub-int/2addr v0, p2

    return v0

    :cond_86
    iget v0, p0, Ljcifs/smb/aq;->J:I

    goto :goto_72

    :cond_89
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Ljcifs/smb/aq;->R:I

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/aq;->c([BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_84
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 5

    const/16 v3, -0x60

    const/4 v1, 0x0

    iget-boolean v0, p0, Ljcifs/smb/aq;->aA:Z

    if-eqz v0, :cond_bb

    iput-boolean v1, p0, Ljcifs/smb/aq;->aA:Z

    iget v0, p0, Ljcifs/smb/aq;->D:I

    iget v2, p0, Ljcifs/smb/aq;->R:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/aq;->G:I

    iget-byte v0, p0, Ljcifs/smb/aq;->g:B

    if-eq v0, v3, :cond_a6

    iget-byte v0, p0, Ljcifs/smb/aq;->g:B

    const/16 v2, 0x25

    if-ne v0, v2, :cond_31

    invoke-virtual {p0}, Ljcifs/smb/aq;->f()Z

    move-result v0

    if-nez v0, :cond_31

    iget v0, p0, Ljcifs/smb/aq;->G:I

    iget-object v2, p0, Ljcifs/smb/aq;->T:Ljava/lang/String;

    iget v3, p0, Ljcifs/smb/aq;->G:I

    invoke-virtual {p0, v2, v3}, Ljcifs/smb/aq;->a(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/aq;->G:I

    :cond_31
    :goto_31
    iget v0, p0, Ljcifs/smb/aq;->G:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/aq;->c:I

    iget v0, p0, Ljcifs/smb/aq;->c:I

    if-nez v0, :cond_b1

    move v0, v1

    :goto_3c
    iput v0, p0, Ljcifs/smb/aq;->c:I

    iget v0, p0, Ljcifs/smb/aq;->G:I

    iget v2, p0, Ljcifs/smb/aq;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/aq;->G:I

    iget-object v0, p0, Ljcifs/smb/aq;->V:[B

    iget v2, p0, Ljcifs/smb/aq;->aB:I

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/aq;->d([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/aq;->L:I

    iget v0, p0, Ljcifs/smb/aq;->L:I

    iput v0, p0, Ljcifs/smb/aq;->aC:I

    iget v0, p0, Ljcifs/smb/aq;->U:I

    iget v2, p0, Ljcifs/smb/aq;->G:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/aq;->L:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Ljcifs/smb/aq;->F:I

    iget v2, p0, Ljcifs/smb/aq;->F:I

    sub-int v2, v0, v2

    iget v0, p0, Ljcifs/smb/aq;->G:I

    iget v3, p0, Ljcifs/smb/aq;->F:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/aq;->J:I

    iget v0, p0, Ljcifs/smb/aq;->J:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/aq;->d:I

    iget v0, p0, Ljcifs/smb/aq;->d:I

    if-nez v0, :cond_b6

    move v0, v1

    :goto_76
    iput v0, p0, Ljcifs/smb/aq;->d:I

    iget v0, p0, Ljcifs/smb/aq;->J:I

    iget v3, p0, Ljcifs/smb/aq;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/aq;->J:I

    iget-object v0, p0, Ljcifs/smb/aq;->V:[B

    iget v3, p0, Ljcifs/smb/aq;->aC:I

    invoke-virtual {p0, v0, v3}, Ljcifs/smb/aq;->e([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/aq;->M:I

    iget v0, p0, Ljcifs/smb/aq;->M:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/aq;->I:I

    :goto_91
    iget v0, p0, Ljcifs/smb/aq;->H:I

    iget v2, p0, Ljcifs/smb/aq;->F:I

    add-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/aq;->L:I

    if-lt v0, v2, :cond_a5

    iget v0, p0, Ljcifs/smb/aq;->K:I

    iget v2, p0, Ljcifs/smb/aq;->I:I

    add-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/aq;->M:I

    if-lt v0, v2, :cond_a5

    iput-boolean v1, p0, Ljcifs/smb/aq;->az:Z

    :cond_a5
    return-object p0

    :cond_a6
    iget-byte v0, p0, Ljcifs/smb/aq;->g:B

    if-ne v0, v3, :cond_31

    iget v0, p0, Ljcifs/smb/aq;->G:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/aq;->G:I

    goto :goto_31

    :cond_b1
    iget v0, p0, Ljcifs/smb/aq;->c:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_3c

    :cond_b6
    iget v0, p0, Ljcifs/smb/aq;->d:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_76

    :cond_bb
    iget-byte v0, p0, Ljcifs/smb/aq;->g:B

    if-eq v0, v3, :cond_133

    const/16 v0, 0x26

    iput-byte v0, p0, Ljcifs/smb/aq;->g:B

    :goto_c3
    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/aq;->G:I

    iget v0, p0, Ljcifs/smb/aq;->L:I

    iget v2, p0, Ljcifs/smb/aq;->H:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_e2

    iget v0, p0, Ljcifs/smb/aq;->G:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/aq;->c:I

    iget v0, p0, Ljcifs/smb/aq;->c:I

    if-nez v0, :cond_138

    move v0, v1

    :goto_d9
    iput v0, p0, Ljcifs/smb/aq;->c:I

    iget v0, p0, Ljcifs/smb/aq;->G:I

    iget v2, p0, Ljcifs/smb/aq;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/aq;->G:I

    :cond_e2
    iget v0, p0, Ljcifs/smb/aq;->H:I

    iget v2, p0, Ljcifs/smb/aq;->F:I

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/aq;->H:I

    iget v0, p0, Ljcifs/smb/aq;->U:I

    iget v2, p0, Ljcifs/smb/aq;->G:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/aq;->c:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljcifs/smb/aq;->L:I

    iget v3, p0, Ljcifs/smb/aq;->H:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Ljcifs/smb/aq;->F:I

    iget v2, p0, Ljcifs/smb/aq;->F:I

    sub-int v2, v0, v2

    iget v0, p0, Ljcifs/smb/aq;->G:I

    iget v3, p0, Ljcifs/smb/aq;->F:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/aq;->J:I

    iget v0, p0, Ljcifs/smb/aq;->J:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljcifs/smb/aq;->d:I

    iget v0, p0, Ljcifs/smb/aq;->d:I

    if-nez v0, :cond_13d

    move v0, v1

    :goto_112
    iput v0, p0, Ljcifs/smb/aq;->d:I

    iget v0, p0, Ljcifs/smb/aq;->J:I

    iget v3, p0, Ljcifs/smb/aq;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/aq;->J:I

    iget v0, p0, Ljcifs/smb/aq;->K:I

    iget v3, p0, Ljcifs/smb/aq;->I:I

    add-int/2addr v0, v3

    iput v0, p0, Ljcifs/smb/aq;->K:I

    iget v0, p0, Ljcifs/smb/aq;->d:I

    sub-int v0, v2, v0

    iget v2, p0, Ljcifs/smb/aq;->M:I

    iget v3, p0, Ljcifs/smb/aq;->K:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/aq;->I:I

    goto/16 :goto_91

    :cond_133
    const/16 v0, -0x5f

    iput-byte v0, p0, Ljcifs/smb/aq;->g:B

    goto :goto_c3

    :cond_138
    iget v0, p0, Ljcifs/smb/aq;->c:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_d9

    :cond_13d
    iget v0, p0, Ljcifs/smb/aq;->d:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_112
.end method

.method o([BI)I
    .registers 8

    const/4 v4, 0x0

    iget v1, p0, Ljcifs/smb/aq;->c:I

    iget-byte v0, p0, Ljcifs/smb/aq;->g:B

    const/16 v2, 0x25

    if-ne v0, v2, :cond_5b

    invoke-virtual {p0}, Ljcifs/smb/aq;->f()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Ljcifs/smb/aq;->T:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/aq;->a(Ljava/lang/String;[BI)I

    move-result v0

    add-int/2addr v0, p2

    :goto_16
    iget v2, p0, Ljcifs/smb/aq;->F:I

    if-lez v2, :cond_33

    move v2, v0

    move v0, v1

    :goto_1c
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_27

    add-int/lit8 v0, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v0

    move v0, v1

    goto :goto_1c

    :cond_27
    iget-object v0, p0, Ljcifs/smb/aq;->V:[B

    iget v1, p0, Ljcifs/smb/aq;->aB:I

    iget v3, p0, Ljcifs/smb/aq;->F:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/aq;->F:I

    add-int/2addr v0, v2

    :cond_33
    iget v1, p0, Ljcifs/smb/aq;->I:I

    if-lez v1, :cond_59

    iget v1, p0, Ljcifs/smb/aq;->d:I

    move v2, v0

    move v0, v1

    :goto_3b
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_46

    add-int/lit8 v0, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v0

    move v0, v1

    goto :goto_3b

    :cond_46
    iget-object v0, p0, Ljcifs/smb/aq;->V:[B

    iget v1, p0, Ljcifs/smb/aq;->aC:I

    iget v3, p0, Ljcifs/smb/aq;->I:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/aq;->aC:I

    iget v1, p0, Ljcifs/smb/aq;->I:I

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/aq;->aC:I

    iget v0, p0, Ljcifs/smb/aq;->I:I

    add-int/2addr v0, v2

    :cond_59
    sub-int/2addr v0, p2

    return v0

    :cond_5b
    move v0, p2

    goto :goto_16
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
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/smb/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxSetupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljcifs/smb/aq;->P:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->b:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aq;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
