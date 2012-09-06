.class LhP;
.super Ljava/util/HashMap;
.source "CriterionFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "LhV;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LhO;


# direct methods
.method constructor <init>(LhO;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, LhP;->a:LhO;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v0, "childrenOfCollection"

    new-instance v1, LhQ;

    invoke-direct {v1, p0}, LhQ;-><init>(LhP;)V

    invoke-virtual {p0, v0, v1}, LhP;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "entriesFilter"

    new-instance v1, LhR;

    invoke-direct {v1, p0}, LhR;-><init>(LhP;)V

    invoke-virtual {p0, v0, v1}, LhP;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "searchCriterion"

    new-instance v1, LhS;

    invoke-direct {v1, p0}, LhS;-><init>(LhP;)V

    invoke-virtual {p0, v0, v1}, LhP;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "account"

    new-instance v1, LhT;

    invoke-direct {v1, p0}, LhT;-><init>(LhP;)V

    invoke-virtual {p0, v0, v1}, LhP;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "notInTrash"

    new-instance v1, LhU;

    invoke-direct {v1, p0}, LhU;-><init>(LhP;)V

    invoke-virtual {p0, v0, v1}, LhP;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method
