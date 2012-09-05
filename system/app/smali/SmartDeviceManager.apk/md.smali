.class public final Lmd;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd$c;,
        Lmd$d;,
        Lmd$f;,
        Lmd$e;,
        Lmd$g;,
        Lmd$b;,
        Lmd$a;
    }
.end annotation


# instance fields
.field public a:Lmd$a;

.field public b:Lmd$b;

.field public c:Lmd$g;

.field public d:Lmd$e;

.field public e:Lmd$f;

.field public f:Lmd$d;

.field public g:Lmd$c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lmd;->a:Lmd$a;

    .line 18
    iput-object v0, p0, Lmd;->b:Lmd$b;

    .line 19
    iput-object v0, p0, Lmd;->c:Lmd$g;

    .line 20
    iput-object v0, p0, Lmd;->d:Lmd$e;

    .line 21
    iput-object v0, p0, Lmd;->e:Lmd$f;

    .line 23
    iput-object v0, p0, Lmd;->f:Lmd$d;

    .line 24
    iput-object v0, p0, Lmd;->g:Lmd$c;

    .line 26
    return-void
.end method

.method public static a([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 147
    if-eqz p0, :cond_13

    .line 148
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, p0, v2

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 152
    :cond_13
    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    if-nez p0, :cond_b

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    :goto_7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object v0

    :cond_b
    move-object v0, p0

    goto :goto_7
.end method
