.class public Ljcifs/smb/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/smb/bb;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I


# virtual methods
.method public a(Ljcifs/smb/ba;)Z
    .registers 4

    invoke-virtual {p1}, Ljcifs/smb/ba;->J()I

    move-result v0

    iget v1, p0, Ljcifs/smb/g;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
