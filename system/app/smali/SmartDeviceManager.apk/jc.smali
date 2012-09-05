.class final Ljc;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field final a:Ljava/util/HashMap;
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
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljc;->a:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljh;

    invoke-direct {v0}, Ljh;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 22
    new-instance v0, Lja$s;

    invoke-direct {v0}, Lja$s;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 23
    new-instance v0, Lja$i;

    invoke-direct {v0}, Lja$i;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 26
    new-instance v0, Lja$e;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lja$e;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 27
    new-instance v0, Lja$f;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Lja$f;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 28
    new-instance v0, Lja$p;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, v1, v2}, Lja$p;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 29
    new-instance v0, Lja$h;

    const-class v1, Ljava/lang/Character;

    invoke-direct {v0, v1, v2}, Lja$h;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 30
    new-instance v0, Lja$l;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lja$l;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 31
    new-instance v0, Lja$m;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lja$m;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 32
    new-instance v0, Lja$k;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lja$k;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 33
    new-instance v0, Lja$j;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v2}, Lja$j;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 38
    new-instance v0, Lja$e;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lja$e;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 39
    new-instance v0, Lja$f;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lja$f;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 40
    new-instance v0, Lja$p;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lja$p;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 41
    new-instance v0, Lja$h;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lja$h;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 42
    new-instance v0, Lja$l;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lja$l;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 43
    new-instance v0, Lja$m;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lja$m;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 44
    new-instance v0, Lja$k;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lja$k;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 45
    new-instance v0, Lja$j;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lja$j;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 48
    new-instance v0, Lja$n;

    invoke-direct {v0}, Lja$n;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 49
    new-instance v0, Lja$c;

    invoke-direct {v0}, Lja$c;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 50
    new-instance v0, Lja$d;

    invoke-direct {v0}, Lja$d;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 52
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 53
    new-instance v0, Lja$q;

    invoke-direct {v0}, Lja$q;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 54
    new-instance v0, Lja$g;

    invoke-direct {v0}, Lja$g;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 58
    new-instance v0, Lja$g;

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Lja$g;-><init>(Ljava/lang/Class;)V

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-direct {p0, v0, v1}, Ljc;->a(Lja;Ljava/lang/Class;)V

    .line 62
    new-instance v0, Lis$e;

    invoke-direct {v0}, Lis$e;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 63
    new-instance v0, Lis$d;

    invoke-direct {v0}, Lis$d;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 64
    new-instance v0, Lis$c;

    invoke-direct {v0}, Lis$c;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 65
    new-instance v0, Lis$a;

    invoke-direct {v0}, Lis$a;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 66
    new-instance v0, Lis$b;

    invoke-direct {v0}, Lis$b;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 71
    new-instance v0, Lja$r;

    invoke-direct {v0}, Lja$r;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 74
    new-instance v0, Lja$t;

    invoke-direct {v0}, Lja$t;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 76
    new-instance v0, Lja$a;

    invoke-direct {v0}, Lja$a;-><init>()V

    invoke-direct {p0, v0}, Ljc;->a(Lja;)V

    .line 77
    return-void
.end method

.method private a(Lja;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lja;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljc;->a(Lja;Ljava/lang/Class;)V

    .line 90
    return-void
.end method

.method private a(Lja;Ljava/lang/Class;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .line 97
    iget-object v0, p0, Ljc;->a:Ljava/util/HashMap;

    invoke-static {p2}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method
