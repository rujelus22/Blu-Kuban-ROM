.class public final Lcom/coremobility/integration/message/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/message/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/integration/message/e;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/message/e;->c:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/message/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremobility/integration/message/e;->c:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/message/e;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/message/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/message/e;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/coremobility/integration/message/e;->c:J

    return-wide v0
.end method
