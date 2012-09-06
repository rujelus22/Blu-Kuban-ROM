.class LanZ;
.super Ljava/lang/Object;
.source "Annotations.java"


# instance fields
.field private a:LafH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafH",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Laoa;

    invoke-direct {v0, p0}, Laoa;-><init>(LanZ;)V

    iput-object v0, p0, LanZ;->a:LafH;

    .line 104
    new-instance v0, Lajl;

    invoke-direct {v0}, Lajl;-><init>()V

    invoke-virtual {v0}, Lajl;->a()Lajl;

    move-result-object v0

    iget-object v1, p0, LanZ;->a:LafH;

    invoke-virtual {v0, v1}, Lajl;->a(LafH;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, LanZ;->a:Ljava/util/Map;

    .line 111
    iput-object p1, p0, LanZ;->a:Ljava/util/Collection;

    .line 112
    return-void
.end method

.method static synthetic a(LanZ;)Ljava/util/Collection;
    .registers 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, LanZ;->a:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, LanZ;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
