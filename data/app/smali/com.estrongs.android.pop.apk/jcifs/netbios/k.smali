.class public Ljcifs/netbios/k;
.super Ljcifs/netbios/l;


# instance fields
.field private c:Ljcifs/netbios/b;

.field private d:Ljcifs/netbios/b;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/netbios/l;-><init>()V

    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0}, Ljcifs/netbios/b;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/k;->c:Ljcifs/netbios/b;

    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0}, Ljcifs/netbios/b;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/k;->d:Ljcifs/netbios/b;

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/b;Ljcifs/netbios/b;)V
    .registers 4

    invoke-direct {p0}, Ljcifs/netbios/l;-><init>()V

    const/16 v0, 0x81

    iput v0, p0, Ljcifs/netbios/k;->a:I

    iput-object p1, p0, Ljcifs/netbios/k;->c:Ljcifs/netbios/b;

    iput-object p2, p0, Ljcifs/netbios/k;->d:Ljcifs/netbios/b;

    return-void
.end method


# virtual methods
.method a([BI)I
    .registers 5

    iget-object v0, p0, Ljcifs/netbios/k;->c:Ljcifs/netbios/b;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/b;->a([BI)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Ljcifs/netbios/k;->d:Ljcifs/netbios/b;

    invoke-virtual {v1, p1, v0}, Ljcifs/netbios/b;->a([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method
