.class public LTU;
.super Ljava/lang/Object;
.source "FeedProcessorFactoryImpl.java"

# interfaces
.implements LTT;


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private final a:Llu;


# direct methods
.method public constructor <init>(Llu;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LTU;->a:Llu;

    .line 27
    return-void
.end method


# virtual methods
.method public a(LTF;Landroid/content/SyncResult;LkG;Ljava/lang/Boolean;)LTN;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, LVt;

    iget-object v3, p0, LTU;->a:Llu;

    move-object v1, p3

    move-object v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LVt;-><init>(LkG;Landroid/content/SyncResult;Llu;LTF;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public a(LkG;LTN;)LTN;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, LTv;

    invoke-direct {v0, p1, p2}, LTv;-><init>(LkG;LTN;)V

    return-object v0
.end method

.method public a(LkG;Ljava/util/Set;LTN;)LTN;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "LTN;",
            ")",
            "LTN;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, LTK;

    invoke-direct {v0, p1, p2, p3}, LTK;-><init>(LkG;Ljava/util/Set;LTN;)V

    return-object v0
.end method

.method public bridge synthetic a(LTN;)LVu;
    .registers 3
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0, p1}, LTU;->a(LTN;)LVv;

    move-result-object v0

    return-object v0
.end method

.method public a(LTN;)LVv;
    .registers 5
    .parameter

    .prologue
    .line 52
    new-instance v0, LVv;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, LVv;-><init>(LTN;J)V

    return-object v0
.end method
