.class public final LaeZ;
.super LadL;
.source "Discussion.java"


# instance fields
.field private a:Lafa;
    .annotation runtime Laes;
    .end annotation
.end field

.field private a:Lafd;
    .annotation runtime Laes;
    .end annotation
.end field

.field private a:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field

.field private b:Lafd;
    .annotation runtime Laes;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field

.field private c:Lafd;
    .annotation runtime Laes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 280
    invoke-direct {p0}, LadL;-><init>()V

    .line 440
    return-void
.end method


# virtual methods
.method public a(Lafd;)LaeZ;
    .registers 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, LaeZ;->a:Lafd;

    .line 362
    return-object p0
.end method

.method public a(Ljava/lang/String;)LaeZ;
    .registers 2
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, LaeZ;->a:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public a()Lafa;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, LaeZ;->a:Lafa;

    return-object v0
.end method

.method public a()Lafd;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, LaeZ;->a:Lafd;

    return-object v0
.end method

.method public b(Lafd;)LaeZ;
    .registers 2
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, LaeZ;->b:Lafd;

    .line 383
    return-object p0
.end method

.method public b(Ljava/lang/String;)LaeZ;
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, LaeZ;->b:Ljava/lang/String;

    .line 434
    return-object p0
.end method

.method public b()Lafd;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, LaeZ;->b:Lafd;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, LaeZ;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lafd;)LaeZ;
    .registers 2
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, LaeZ;->c:Lafd;

    .line 400
    return-object p0
.end method

.method public c()Lafd;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, LaeZ;->c:Lafd;

    return-object v0
.end method
