.class public final Lie;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lie$e;,
        Lie$f;,
        Lie$h;,
        Lie$g;,
        Lie$i;,
        Lie$c;,
        Lie$b;,
        Lie$d;,
        Lie$j;,
        Lie$a;
    }
.end annotation


# static fields
.field static final b:Lie;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lie;

    invoke-direct {v0}, Lie;-><init>()V

    sput-object v0, Lie;->b:Lie;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lie;->a:Ljava/util/HashMap;

    .line 28
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lie$b;

    invoke-direct {v1}, Lie$b;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 34
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lie$c;

    invoke-direct {v1}, Lie$c;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 35
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lie$i;

    invoke-direct {v1}, Lie$i;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 36
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lie$g;

    invoke-direct {v1}, Lie$g;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 37
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lie$h;

    invoke-direct {v1}, Lie$h;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 39
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lie$f;

    invoke-direct {v1}, Lie$f;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 40
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lie$e;

    invoke-direct {v1}, Lie$e;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 42
    const-class v0, Ljava/lang/String;

    new-instance v1, Lie$j;

    invoke-direct {v1}, Lie$j;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 46
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lie$d;

    invoke-direct {v1}, Lie$d;-><init>()V

    invoke-direct {p0, v0, v1}, Lie;->a(Ljava/lang/Class;Lhf;)V

    .line 47
    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lie;->b:Lie;

    iget-object v0, v0, Lie;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lhf;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lhf",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lie;->a:Ljava/util/HashMap;

    invoke-static {p1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
