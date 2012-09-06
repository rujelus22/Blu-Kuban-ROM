.class public LVR;
.super Ljava/lang/Object;
.source "ChangeLogSyncAlgorithm.java"

# interfaces
.implements LVT;


# instance fields
.field private final a:LTF;

.field private final a:LTT;


# direct methods
.method public constructor <init>(LTF;LTT;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, LVR;->a:LTT;

    .line 31
    iput-object p1, p0, LVR;->a:LTF;

    .line 32
    return-void
.end method


# virtual methods
.method public a(LTM;LkG;Landroid/content/SyncResult;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, LVR;->a:LTT;

    iget-object v1, p0, LVR;->a:LTT;

    iget-object v2, p0, LVR;->a:LTF;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, p3, p2, v3}, LTT;->a(LTF;Landroid/content/SyncResult;LkG;Ljava/lang/Boolean;)LTN;

    move-result-object v1

    invoke-interface {v0, p2, v1}, LTT;->a(LkG;LTN;)LTN;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://docs.google.com/feeds/default/private/changes?showroot=true&start-index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, LkG;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-interface {p1, v1, v2, v0, v3}, LTM;->a(Ljava/lang/String;Ljava/lang/String;LTN;I)V

    .line 45
    return-void
.end method

.method public a(Landroid/content/SyncResult;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    return-void
.end method
