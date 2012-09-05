.class public Lcom/coremobility/integration/g;
.super Ljava/lang/Exception;


# instance fields
.field public a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/g;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/g;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/coremobility/integration/g;->a:Ljava/lang/Throwable;

    return-void
.end method
