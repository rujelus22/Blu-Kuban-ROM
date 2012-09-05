.class public final Lcom/coremobility/c/h;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30444443

    iput v0, p0, Lcom/coremobility/c/h;->m:I

    iput p1, p0, Lcom/coremobility/c/h;->a:I

    iput p2, p0, Lcom/coremobility/c/h;->b:I

    iput p3, p0, Lcom/coremobility/c/h;->c:I

    iput p4, p0, Lcom/coremobility/c/h;->d:I

    iput p5, p0, Lcom/coremobility/c/h;->e:I

    iput-object p6, p0, Lcom/coremobility/c/h;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/coremobility/c/h;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v1, 0x1a

    const-string v2, "CM+DMM%d n-ind %d %x %d %x %s %s"

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/coremobility/c/h;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lcom/coremobility/c/h;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/coremobility/c/h;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget v4, p0, Lcom/coremobility/c/h;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget v4, p0, Lcom/coremobility/c/h;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/coremobility/c/h;->f:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/coremobility/c/h;->f:Ljava/lang/String;

    :goto_3b
    aput-object v0, v3, v4

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/coremobility/c/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/coremobility/c/h;->g:Ljava/lang/String;

    :goto_44
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4a
    const-string v0, "null"

    goto :goto_3b

    :cond_4d
    const-string v0, "null"

    goto :goto_44
.end method
