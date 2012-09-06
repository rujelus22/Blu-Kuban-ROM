.class final Lvk;
.super Ljava/lang/Object;
.source "JsCacheImpl.java"


# instance fields
.field private final a:J

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lvk;->a:Ljava/util/Set;

    .line 161
    iput-object p2, p0, Lvk;->a:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lvk;->b:Ljava/lang/String;

    .line 163
    iput-wide p4, p0, Lvk;->a:J

    .line 164
    iput-object p6, p0, Lvk;->c:Ljava/lang/String;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lvj;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct/range {p0 .. p6}, Lvk;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lvk;)J
    .registers 3
    .parameter

    .prologue
    .line 151
    iget-wide v0, p0, Lvk;->a:J

    return-wide v0
.end method

.method static synthetic a(Lvk;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lvk;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lvk;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lvk;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lvk;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lvk;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lvk;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lvk;->c:Ljava/lang/String;

    return-object v0
.end method
