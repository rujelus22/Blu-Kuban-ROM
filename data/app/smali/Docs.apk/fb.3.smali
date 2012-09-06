.class public Lfb;
.super Ljava/lang/Object;
.source "FeatureCheckerImpl.java"

# interfaces
.implements LFY;
.implements LeZ;


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private final a:LFX;

.field private final a:LdX;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LeV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LdX;LFX;)V
    .registers 4
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, LakX;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lfb;->a:Ljava/util/Set;

    .line 29
    iput-object p1, p0, Lfb;->a:LdX;

    .line 30
    iput-object p2, p0, Lfb;->a:LFX;

    .line 31
    invoke-interface {p2, p0}, LFX;->a(LFY;)V

    .line 32
    invoke-virtual {p0}, Lfb;->a()V

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    .line 37
    invoke-static {}, LakX;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 40
    iget-object v0, p0, Lfb;->a:LFX;

    const-string v2, "disableFeatures"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v3, :cond_4e

    aget-object v4, v2, v0

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 41
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 46
    :cond_27
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LeV;->valueOf(Ljava/lang/String;)LeV;

    move-result-object v5

    .line 47
    if-nez v5, :cond_4a

    .line 48
    const-string v5, "FeatureCheckerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t disable feature, not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 51
    :cond_4a
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 54
    :cond_4e
    iget-object v2, p0, Lfb;->a:Ljava/util/Set;

    monitor-enter v2

    .line 55
    :try_start_51
    iget-object v0, p0, Lfb;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 56
    iget-object v0, p0, Lfb;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 57
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_75

    .line 58
    const-string v0, "FeatureCheckerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configured disabled features: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 57
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public a(LeV;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lfb;->a:Ljava/util/Set;

    monitor-enter v1

    .line 67
    :try_start_4
    iget-object v2, p0, Lfb;->a:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 68
    monitor-exit v1

    .line 71
    :cond_d
    :goto_d
    return v0

    .line 70
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_21

    .line 71
    iget-object v1, p0, Lfb;->a:LdX;

    iget-object v2, p1, LeV;->a:LdX;

    invoke-virtual {v1, v2}, LdX;->a(LdX;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, p0}, LeV;->a(LeZ;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    .line 70
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method
