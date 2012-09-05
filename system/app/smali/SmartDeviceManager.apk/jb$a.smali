.class public final Ljb$a;
.super Lhf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhf",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lht;

.field final b:Lhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lht;Lhf;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lht;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lhf;-><init>()V

    .line 396
    iput-object p1, p0, Ljb$a;->a:Lht;

    .line 397
    iput-object p2, p0, Ljb$a;->b:Lhf;

    .line 398
    return-void
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Ljb$a;->b:Lhf;

    iget-object v1, p0, Ljb$a;->a:Lht;

    invoke-virtual {v0, p1, p2, v1}, Lhf;->a(Lfd;Lhc;Lht;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
