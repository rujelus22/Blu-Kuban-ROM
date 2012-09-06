.class final LapD;
.super Ljava/lang/Object;
.source "ProvisionListenerStackCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:[LaqN;


# instance fields
.field private final a:Lang;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lang",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:[LaqN;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [LaqN;

    sput-object v0, LapD;->a:[LaqN;

    return-void
.end method

.method static synthetic a(LapD;)[LaqN;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LapD;->b:[LaqN;

    return-object v0
.end method


# virtual methods
.method public a(Laoy;Lapb;LapF;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "LapF",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, LapE;

    invoke-direct {v1, p0, p1, p2, p3}, LapE;-><init>(LapD;Laoy;Lapb;LapF;)V

    .line 53
    const/4 v0, 0x0

    .line 55
    :try_start_6
    invoke-virtual {v1}, LapE;->a()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_3f

    .line 60
    :goto_9
    iget-object v2, v1, LapE;->a:LaoE;

    if-eqz v2, :cond_10

    .line 61
    iget-object v0, v1, LapE;->a:LaoE;

    throw v0

    .line 62
    :cond_10
    if-eqz v0, :cond_3c

    .line 63
    iget-object v2, v1, LapE;->a:LaqN;

    if-eqz v2, :cond_39

    iget-object v1, v1, LapE;->a:LaqN;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 65
    :goto_1c
    const-string v2, "Error notifying ProvisionListener %s of %s.%n Reason: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, LapD;->a:Lang;

    invoke-interface {v4}, Lang;->a()Lant;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-virtual {p1, v0, v2, v3}, Laoy;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 63
    :cond_39
    const-string v1, "(unknown)"

    goto :goto_1c

    .line 70
    :cond_3c
    iget-object v0, v1, LapE;->a:Ljava/lang/Object;

    return-object v0

    .line 56
    :catch_3f
    move-exception v0

    goto :goto_9
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, LapD;->b:[LaqN;

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
