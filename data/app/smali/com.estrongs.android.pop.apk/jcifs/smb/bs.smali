.class Ljcifs/smb/bs;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Ljcifs/smb/br;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljcifs/smb/br;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Ljcifs/smb/bs;->d:Ljcifs/smb/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bs;->b:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/bs;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a([BII)I
    .registers 10

    const/4 v4, 0x3

    const v5, 0x8000

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljcifs/smb/t;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/bs;->e:I

    iget v0, p0, Ljcifs/smb/bs;->e:I

    if-eq v0, v4, :cond_35

    iget v0, p0, Ljcifs/smb/bs;->e:I

    if-eq v0, v1, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " referral not supported. Please report this to jcifs at samba dot org."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/bs;->f:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/bs;->g:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/bs;->h:I

    add-int/lit8 v0, v0, 0x2

    iget v3, p0, Ljcifs/smb/bs;->e:I

    if-ne v3, v4, :cond_ac

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/bs;->i:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/bs;->a:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/bs;->j:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/bs;->k:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/t;->f([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/bs;->l:I

    add-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Ljcifs/smb/bs;->d:Ljcifs/smb/br;

    iget v0, p0, Ljcifs/smb/bs;->j:I

    add-int v4, p2, v0

    iget-object v0, p0, Ljcifs/smb/bs;->d:Ljcifs/smb/br;

    iget v0, v0, Ljcifs/smb/br;->m:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_a8

    move v0, v1

    :goto_89
    invoke-virtual {v3, p1, v4, p3, v0}, Ljcifs/smb/br;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bs;->b:Ljava/lang/String;

    iget v0, p0, Ljcifs/smb/bs;->l:I

    if-lez v0, :cond_a5

    iget-object v0, p0, Ljcifs/smb/bs;->d:Ljcifs/smb/br;

    iget v3, p0, Ljcifs/smb/bs;->l:I

    add-int/2addr v3, p2

    iget-object v4, p0, Ljcifs/smb/bs;->d:Ljcifs/smb/br;

    iget v4, v4, Ljcifs/smb/br;->m:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_aa

    :goto_9f
    invoke-virtual {v0, p1, v3, p3, v1}, Ljcifs/smb/br;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bs;->c:Ljava/lang/String;

    :cond_a5
    :goto_a5
    iget v0, p0, Ljcifs/smb/bs;->f:I

    return v0

    :cond_a8
    move v0, v2

    goto :goto_89

    :cond_aa
    move v1, v2

    goto :goto_9f

    :cond_ac
    iget v3, p0, Ljcifs/smb/bs;->e:I

    if-ne v3, v1, :cond_a5

    iget-object v3, p0, Ljcifs/smb/bs;->d:Ljcifs/smb/br;

    iget-object v4, p0, Ljcifs/smb/bs;->d:Ljcifs/smb/br;

    iget v4, v4, Ljcifs/smb/br;->m:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_c0

    :goto_b9
    invoke-virtual {v3, p1, v0, p3, v1}, Ljcifs/smb/br;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bs;->c:Ljava/lang/String;

    goto :goto_a5

    :cond_c0
    move v1, v2

    goto :goto_b9
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referral[version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serverType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",proximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ttl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altPathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nodeOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bs;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bs;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bs;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bs;->c:Ljava/lang/String;

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
