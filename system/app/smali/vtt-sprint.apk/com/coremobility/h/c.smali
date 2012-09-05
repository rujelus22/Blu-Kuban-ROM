.class public final Lcom/coremobility/h/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:[Ljava/lang/String;

.field public b:I

.field final synthetic c:Lcom/coremobility/h/a;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/coremobility/h/a;)V
    .registers 5

    iput-object p1, p0, Lcom/coremobility/h/c;->c:Lcom/coremobility/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "startup"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "empty"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pending retry"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "<stopped>"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/coremobility/h/c;->a:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/h/c;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/h/c;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/h/c;->e:I

    return-void
.end method

.method public final a(I)V
    .registers 4

    iget v0, p0, Lcom/coremobility/h/c;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/coremobility/h/c;->c:Lcom/coremobility/h/a;

    iget-object v0, v0, Lcom/coremobility/h/a;->d:Lcom/coremobility/h/f;

    iget v1, p0, Lcom/coremobility/h/c;->e:I

    invoke-virtual {v0, v1, p1}, Lcom/coremobility/h/f;->a(II)Lcom/coremobility/integration/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :goto_12
    iput p1, p0, Lcom/coremobility/h/c;->e:I

    return-void

    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_12
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/coremobility/h/c;->e:I

    return v0
.end method
