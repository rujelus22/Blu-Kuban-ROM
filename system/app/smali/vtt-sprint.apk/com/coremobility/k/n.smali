.class public final Lcom/coremobility/k/n;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30564c50

    iput v0, p0, Lcom/coremobility/k/n;->m:I

    iput p1, p0, Lcom/coremobility/k/n;->a:I

    iput p2, p0, Lcom/coremobility/k/n;->b:I

    iput p3, p0, Lcom/coremobility/k/n;->c:I

    iput p4, p0, Lcom/coremobility/k/n;->d:I

    iput-object p5, p0, Lcom/coremobility/k/n;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/coremobility/k/n;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v1, 0x1c

    const-string v2, "CM+VNM n-ind %d %x %d %x %s %s"

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/coremobility/k/n;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lcom/coremobility/k/n;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/coremobility/k/n;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget v4, p0, Lcom/coremobility/k/n;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/coremobility/k/n;->e:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/coremobility/k/n;->e:Ljava/lang/String;

    :goto_32
    aput-object v0, v3, v4

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/coremobility/k/n;->f:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/coremobility/k/n;->f:Ljava/lang/String;

    :goto_3b
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_41
    const-string v0, "null"

    goto :goto_32

    :cond_44
    const-string v0, "null"

    goto :goto_3b
.end method
