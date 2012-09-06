.class public Ljcifs/smb/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/smb/h;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/smb/bi;->b:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/bi;->c:I

    iput-object p3, p0, Ljcifs/smb/bi;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/bi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 3

    iget v0, p0, Ljcifs/smb/bi;->c:I

    const v1, 0xffff

    and-int/2addr v0, v1

    packed-switch v0, :pswitch_data_12

    :pswitch_9
    const/16 v0, 0x8

    :goto_b
    return v0

    :pswitch_c
    const/16 v0, 0x20

    goto :goto_b

    :pswitch_f
    const/16 v0, 0x10

    goto :goto_b

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_f
    .end packed-switch
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

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljcifs/smb/bi;

    if-eqz v0, :cond_f

    check-cast p1, Ljcifs/smb/bi;

    iget-object v0, p0, Ljcifs/smb/bi;->b:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/bi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public f()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljcifs/smb/bi;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbShareInfo[netName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bi;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/bi;->c:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bi;->d:Ljava/lang/String;

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
