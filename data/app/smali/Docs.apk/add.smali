.class final Ladd;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# instance fields
.field final a:Laed;

.field final a:Laef;

.field final a:Ljava/lang/StringBuilder;

.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ladc;Ljava/lang/StringBuilder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 804
    new-array v1, v3, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ladd;->a:Ljava/util/List;

    .line 805
    invoke-static {v0, v3}, Laef;->a(Ljava/lang/Class;Z)Laef;

    move-result-object v0

    iput-object v0, p0, Ladd;->a:Laef;

    .line 806
    iput-object p2, p0, Ladd;->a:Ljava/lang/StringBuilder;

    .line 807
    new-instance v0, Laed;

    invoke-direct {v0, p1}, Laed;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ladd;->a:Laed;

    .line 808
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 814
    iget-object v0, p0, Ladd;->a:Laed;

    invoke-virtual {v0}, Laed;->a()V

    .line 815
    return-void
.end method
