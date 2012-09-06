.class public Ljh;
.super Ljava/lang/Object;
.source "NavigationPathImpl.java"

# interfaces
.implements Ljg;


# instance fields
.field private final a:Ljava/lang/Thread;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lji;


# direct methods
.method public constructor <init>(Lji;)V
    .registers 3
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljh;->a:Ljava/util/List;

    .line 44
    iput-object p1, p0, Ljh;->a:Lji;

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljh;->a:Ljava/lang/Thread;

    .line 46
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Ljh;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljh;->a()V

    .line 52
    iget-object v0, p0, Ljh;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljh;->a()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljh;->a:Ljava/util/List;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 81
    const-string v0, "Path %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ljh;->a:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
