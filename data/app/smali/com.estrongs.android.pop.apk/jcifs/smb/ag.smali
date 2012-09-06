.class abstract Ljcifs/smb/ag;
.super Ljcifs/smb/aq;


# instance fields
.field c:I


# virtual methods
.method n([BI)I
    .registers 9

    const/16 v5, -0x5f

    const/4 v1, 0x0

    iget-byte v0, p0, Ljcifs/smb/ag;->g:B

    if-eq v0, v5, :cond_7d

    add-int/lit8 v0, p2, 0x1

    iget-byte v2, p0, Ljcifs/smb/ag;->P:B

    aput-byte v2, p1, p2

    :goto_d
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v2, p0, Ljcifs/smb/ag;->L:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Ljcifs/smb/ag;->M:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-byte v2, p0, Ljcifs/smb/ag;->g:B

    if-eq v2, v5, :cond_39

    iget v2, p0, Ljcifs/smb/ag;->N:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Ljcifs/smb/ag;->O:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    :cond_39
    iget v2, p0, Ljcifs/smb/ag;->F:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v2, v0, 0x4

    iget v0, p0, Ljcifs/smb/ag;->F:I

    if-nez v0, :cond_82

    move v0, v1

    :goto_46
    int-to-long v3, v0

    invoke-static {v3, v4, p1, v2}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v0, v2, 0x4

    iget-byte v2, p0, Ljcifs/smb/ag;->g:B

    if-ne v2, v5, :cond_58

    iget v2, p0, Ljcifs/smb/ag;->H:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    :cond_58
    iget v2, p0, Ljcifs/smb/ag;->I:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v2, v0, 0x4

    iget v0, p0, Ljcifs/smb/ag;->I:I

    if-nez v0, :cond_85

    move v0, v1

    :goto_65
    int-to-long v3, v0

    invoke-static {v3, v4, p1, v2}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v0, v2, 0x4

    iget-byte v2, p0, Ljcifs/smb/ag;->g:B

    if-ne v2, v5, :cond_88

    iget v2, p0, Ljcifs/smb/ag;->K:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ag;->b(J[BI)V

    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    :goto_7b
    sub-int/2addr v0, p2

    return v0

    :cond_7d
    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    goto :goto_d

    :cond_82
    iget v0, p0, Ljcifs/smb/ag;->G:I

    goto :goto_46

    :cond_85
    iget v0, p0, Ljcifs/smb/ag;->J:I

    goto :goto_65

    :cond_88
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/ag;->R:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/ag;->c:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ag;->a(J[BI)V

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ag;->c([BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_7b
.end method
