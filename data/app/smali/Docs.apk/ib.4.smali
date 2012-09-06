.class public Lib;
.super Ljava/lang/Object;
.source "CriterionSetSerializerImpl.java"

# interfaces
.implements LhZ;


# instance fields
.field private final a:LhM;


# direct methods
.method public constructor <init>(LhM;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lib;->a:LhM;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)LhW;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, LhX;

    invoke-direct {v2}, LhX;-><init>()V

    move v0, v1

    .line 47
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "criterion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 70
    invoke-virtual {v2}, LhX;->a()LhW;

    move-result-object v0

    return-object v0

    .line 52
    :cond_28
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 53
    if-nez v3, :cond_46

    .line 54
    new-instance v2, Lia;

    const-string v3, "Error loading Criterion %d from %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lia;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_46
    :try_start_46
    iget-object v4, p0, Lib;->a:LhM;

    invoke-interface {v4, v3}, LhM;->a(Landroid/os/Bundle;)LhK;
    :try_end_4b
    .catch LhN; {:try_start_46 .. :try_end_4b} :catch_52

    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, LhX;->a(LhK;)LhX;

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_a

    .line 61
    :catch_52
    move-exception v0

    .line 62
    new-instance v1, Lia;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading Criterion from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lia;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/os/Bundle;LhW;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-interface {p2}, LhW;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhK;

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "criterion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 34
    invoke-interface {v0, v4}, LhK;->a(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 37
    goto :goto_c

    .line 38
    :cond_3a
    return-void
.end method
