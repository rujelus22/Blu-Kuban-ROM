.class public final Lic;
.super Lhf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhf",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lnd;


# direct methods
.method public constructor <init>(Lnd;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lhf;-><init>()V

    .line 27
    iput-object p1, p0, Lic;->a:Lnd;

    .line 28
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
    .line 44
    iget-object v0, p0, Lic;->a:Lnd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "abstract types can only be instantiated with additional type information"

    invoke-virtual {p2, v0, v1}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0
.end method

.method public final a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 5
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
    .line 36
    invoke-virtual {p3, p1, p2}, Lht;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
