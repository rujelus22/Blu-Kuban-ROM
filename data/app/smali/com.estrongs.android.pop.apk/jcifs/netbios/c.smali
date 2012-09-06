.class Ljcifs/netbios/c;
.super Ljcifs/netbios/f;


# direct methods
.method constructor <init>(Ljcifs/netbios/b;)V
    .registers 3

    invoke-direct {p0}, Ljcifs/netbios/f;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/c;->q:Ljcifs/netbios/b;

    const/16 v0, 0x20

    iput v0, p0, Ljcifs/netbios/c;->s:I

    return-void
.end method


# virtual methods
.method a([BI)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/c;->k([BI)I

    move-result v0

    return v0
.end method

.method b([BI)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/c;->l([BI)I

    move-result v0

    return v0
.end method

.method c([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameQueryRequest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/netbios/f;->toString()Ljava/lang/String;

    move-result-object v2

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
