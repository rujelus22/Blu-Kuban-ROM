.class public Ljcifs/dcerpc/a/a;
.super Ljcifs/dcerpc/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    const/16 v2, 0xc8

    const v3, 0xffff

    new-instance v4, Ljcifs/dcerpc/a/h;

    invoke-direct {v4}, Ljcifs/dcerpc/a/h;-><init>()V

    new-instance v5, Ljcifs/dcerpc/ndr/c;

    invoke-direct {v5, v6}, Ljcifs/dcerpc/ndr/c;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/dcerpc/a/k;-><init>(Ljava/lang/String;IILjcifs/dcerpc/a/h;Ljcifs/dcerpc/ndr/c;)V

    iget-object v0, p0, Ljcifs/dcerpc/a/a;->l:Ljcifs/dcerpc/a/h;

    iget v1, p0, Ljcifs/dcerpc/a/a;->c:I

    iput v1, v0, Ljcifs/dcerpc/a/h;->a:I

    iget-object v0, p0, Ljcifs/dcerpc/a/a;->l:Ljcifs/dcerpc/a/h;

    new-instance v1, Ljcifs/dcerpc/a/g;

    invoke-direct {v1}, Ljcifs/dcerpc/a/g;-><init>()V

    iput-object v1, v0, Ljcifs/dcerpc/a/h;->b:Ljcifs/dcerpc/ndr/d;

    iput v6, p0, Ljcifs/dcerpc/a/a;->f:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/a/a;->g:I

    return-void
.end method


# virtual methods
.method public c()[Ljcifs/smb/h;
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/dcerpc/a/a;->l:Ljcifs/dcerpc/a/h;

    iget-object v0, v0, Ljcifs/dcerpc/a/h;->b:Ljcifs/dcerpc/ndr/d;

    check-cast v0, Ljcifs/dcerpc/a/g;

    iget v1, v0, Ljcifs/dcerpc/a/g;->a:I

    new-array v3, v1, [Ljcifs/smb/bi;

    move v1, v2

    :goto_c
    iget v4, v0, Ljcifs/dcerpc/a/g;->a:I

    if-ge v1, v4, :cond_21

    new-instance v4, Ljcifs/smb/bi;

    iget-object v5, v0, Ljcifs/dcerpc/a/g;->b:[Ljcifs/dcerpc/a/j;

    aget-object v5, v5, v1

    iget-object v5, v5, Ljcifs/dcerpc/a/j;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v2, v6}, Ljcifs/smb/bi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_21
    return-object v3
.end method
