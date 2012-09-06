.class public LMe;
.super Lanf;
.source "DocListDatabaseModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 20
    const-class v0, LMb;

    invoke-virtual {p0, v0}, LMe;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)V

    .line 21
    const-class v0, Ljava/lang/String;

    const-class v1, LLZ;

    invoke-static {v0, v1}, Lant;->a(Ljava/lang/Class;Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-virtual {p0, v0}, LMe;->a(Lant;)LanU;

    move-result-object v0

    const-string v1, "DocList.db"

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Object;)V

    .line 22
    return-void
.end method
