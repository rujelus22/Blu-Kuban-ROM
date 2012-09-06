.class public Ljcifs/dcerpc/a/b;
.super Ljcifs/dcerpc/a/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljcifs/dcerpc/a/r;

    invoke-direct {v3}, Ljcifs/dcerpc/a/r;-><init>()V

    const/4 v4, -0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljcifs/dcerpc/a/n;-><init>(Ljava/lang/String;ILjcifs/dcerpc/ndr/d;III)V

    iput v5, p0, Ljcifs/dcerpc/a/b;->f:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/a/b;->g:I

    return-void
.end method


# virtual methods
.method public c()[Ljcifs/smb/h;
    .registers 6

    iget-object v0, p0, Ljcifs/dcerpc/a/b;->d:Ljcifs/dcerpc/ndr/d;

    check-cast v0, Ljcifs/dcerpc/a/r;

    iget v1, v0, Ljcifs/dcerpc/a/r;->a:I

    new-array v2, v1, [Ljcifs/dcerpc/a/c;

    const/4 v1, 0x0

    :goto_9
    iget v3, v0, Ljcifs/dcerpc/a/r;->a:I

    if-ge v1, v3, :cond_1b

    new-instance v3, Ljcifs/dcerpc/a/c;

    iget-object v4, v0, Ljcifs/dcerpc/a/r;->b:[Ljcifs/dcerpc/a/p;

    aget-object v4, v4, v1

    invoke-direct {v3, p0, v4}, Ljcifs/dcerpc/a/c;-><init>(Ljcifs/dcerpc/a/b;Ljcifs/dcerpc/a/p;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-object v2
.end method
