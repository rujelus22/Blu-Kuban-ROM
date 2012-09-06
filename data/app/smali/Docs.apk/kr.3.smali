.class public Lkr;
.super Ljava/lang/Object;
.source "FileCacheStore.java"

# interfaces
.implements Lkp;


# instance fields
.field private final a:LXP;

.field private final a:Ljava/io/File;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lkq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXP;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lkr;->a:Ljava/util/Set;

    .line 62
    iput-object p1, p0, Lkr;->a:LXP;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apps_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lkr;->a:Ljava/io/File;

    .line 65
    return-void
.end method

.method static synthetic a(Lkr;)LXP;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lkr;->a:LXP;

    return-object v0
.end method

.method static synthetic a(Lkr;)Ljava/io/File;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lkr;->a:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lkq;
    .registers 4
    .parameter

    .prologue
    .line 69
    new-instance v0, Lkt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkt;-><init>(Lkr;Ljava/lang/String;Lks;)V

    .line 70
    iget-object v1, p0, Lkr;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lkr;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkq;

    .line 77
    invoke-interface {v0}, Lkq;->a()V

    goto :goto_6

    .line 79
    :cond_16
    iget-object v0, p0, Lkr;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    iget-object v0, p0, Lkr;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 81
    return-void
.end method
