.class public final Lcom/coremobility/c/p;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30444444

    iput v0, p0, Lcom/coremobility/c/p;->m:I

    iput p1, p0, Lcom/coremobility/c/p;->a:I

    iput p2, p0, Lcom/coremobility/c/p;->b:I

    iput-object p3, p0, Lcom/coremobility/c/p;->c:Ljava/lang/String;

    iput p4, p0, Lcom/coremobility/c/p;->d:I

    iput-object p5, p0, Lcom/coremobility/c/p;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v1, 0x1a

    const-string v2, "CM+DMM%d r-cnf( %d, %s ) %d %s"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/coremobility/c/p;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lcom/coremobility/c/p;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/coremobility/c/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/coremobility/c/p;->c:Ljava/lang/String;

    :goto_20
    aput-object v0, v3, v4

    const/4 v0, 0x3

    iget v4, p0, Lcom/coremobility/c/p;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/coremobility/c/p;->e:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/coremobility/c/p;->e:Ljava/lang/String;

    :goto_32
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_38
    const-string v0, "null"

    goto :goto_20

    :cond_3b
    const-string v0, "null"

    goto :goto_32
.end method
