.class Ljcifs/smb/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/smb/h;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field final synthetic f:Ljcifs/smb/l;


# direct methods
.method constructor <init>(Ljcifs/smb/l;)V
    .registers 2

    iput-object p1, p0, Ljcifs/smb/m;->f:Ljcifs/smb/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 3

    iget v0, p0, Ljcifs/smb/m;->d:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x4

    goto :goto_8
.end method

.method public c()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public d()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerInfo1[name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",versionMajor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",versionMinor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/m;->d:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",commentOrMasterBrowser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/m;->e:Ljava/lang/String;

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
