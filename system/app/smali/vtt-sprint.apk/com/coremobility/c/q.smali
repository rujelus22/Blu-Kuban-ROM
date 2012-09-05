.class public final Lcom/coremobility/c/q;
.super Lcom/coremobility/integration/c/c;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/coremobility/integration/c/c;-><init>()V

    const v0, 0x30444338

    iput v0, p0, Lcom/coremobility/c/q;->m:I

    iput p1, p0, Lcom/coremobility/c/q;->a:I

    iput-object p2, p0, Lcom/coremobility/c/q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v1, 0x1a

    const-string v2, "CM+DMM%d retrieve %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/coremobility/c/q;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/coremobility/c/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coremobility/c/q;->b:Ljava/lang/String;

    :goto_17
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1d
    const-string v0, "null"

    goto :goto_17
.end method
