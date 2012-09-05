.class public Lkv;
.super Lhr;
.source "a"


# static fields
.field protected static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lhj",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lhj",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field public static final d:Lkv;


# instance fields
.field protected c:Ljj;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkv;->a:Ljava/util/HashMap;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkv;->b:Ljava/util/HashMap;

    .line 65
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llr$n;

    invoke-direct {v3}, Llr$n;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lls;->a:Lls;

    .line 67
    sget-object v2, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v2, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lkv;->a:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llr$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Llr$a;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llr$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Llr$a;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Llr$f;

    invoke-direct {v1}, Llr$f;-><init>()V

    .line 76
    sget-object v2, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Lkv;->a:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$g;->a:Llr$g;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$g;->a:Llr$g;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$e;->a:Llr$e;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$e;->a:Llr$e;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$e;->a:Llr$e;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$e;->a:Llr$e;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$d;->a:Llr$d;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$d;->a:Llr$d;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$c;->a:Llr$c;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$c;->a:Llr$c;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Llr$i;

    invoke-direct {v1}, Llr$i;-><init>()V

    .line 93
    sget-object v2, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v2, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$b;->a:Llr$b;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$p;->a:Llr$p;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llr$l;

    invoke-direct {v3}, Llr$l;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Time;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Llr$m;

    invoke-direct {v3}, Llr$m;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llr$p;->a:Llr$p;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [Z

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$b;

    invoke-direct {v3}, Lku$b;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [B

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$c;

    invoke-direct {v3}, Lku$c;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [C

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$d;

    invoke-direct {v3}, Lku$d;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [S

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$j;

    invoke-direct {v3}, Lku$j;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [I

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$g;

    invoke-direct {v3}, Lku$g;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [J

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$h;

    invoke-direct {v3}, Lku$h;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [F

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$f;

    invoke-direct {v3}, Lku$f;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [D

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$e;

    invoke-direct {v3}, Lku$e;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lku$i;->b:Lku$i;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v2, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lku$k;

    invoke-direct {v3}, Lku$k;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lla$d;->e:Lla$d;

    .line 121
    sget-object v2, Lla$b;->e:Lla$b;

    .line 123
    sget-object v3, Lkv;->a:Ljava/util/HashMap;

    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v3, Lkv;->a:Ljava/util/HashMap;

    const-class v4, Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Llh;->a:Llh;

    .line 130
    sget-object v3, Lkv;->a:Ljava/util/HashMap;

    const-class v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v3, Lkv;->a:Ljava/util/HashMap;

    const-class v4, Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v3, Lkv;->a:Ljava/util/HashMap;

    const-class v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v3, Lkv;->a:Ljava/util/HashMap;

    const-class v4, Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v3, Lkv;->a:Ljava/util/HashMap;

    const-class v4, Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lkv;->a:Ljava/util/HashMap;

    const-class v3, Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Llf;

    invoke-direct {v1}, Llf;-><init>()V

    invoke-virtual {v1}, Llf;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_296
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 143
    instance-of v4, v2, Lhj;

    if-eqz v4, :cond_2be

    .line 144
    sget-object v4, Lkv;->a:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Lhj;

    move-object v1, v0

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_296

    .line 145
    :cond_2be
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_2d4

    .line 147
    check-cast v2, Ljava/lang/Class;

    .line 148
    sget-object v4, Lkv;->b:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_296

    .line 150
    :cond_2d4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error: unrecognized value of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_2f5
    sget-object v1, Lkv;->b:Ljava/util/HashMap;

    const-class v2, Lnm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Llr$o;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Lkv;

    invoke-direct {v1}, Lkv;-><init>()V

    sput-object v1, Lkv;->d:Lkv;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Lhr;-><init>()V

    .line 159
    sget-object v0, Ljj;->a:Ljj;

    iput-object v0, p0, Lkv;->c:Ljj;

    .line 179
    return-void
.end method

.method protected static a(Lhq;Ljk;)Lhj;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhq;",
            "Ljk;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lhq;->a()Lgy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgy;->b(Ljk;)Ljava/lang/Object;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_7a

    .line 430
    instance-of v2, v1, Lhj;

    if-eqz v2, :cond_14

    .line 431
    move-object v0, v1

    check-cast v0, Lhj;

    move-object p0, v0

    move-object v1, p0

    .line 445
    :goto_13
    return-object v1

    .line 436
    :cond_14
    instance-of v2, v1, Ljava/lang/Class;

    if-nez v2, :cond_3f

    .line 437
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotationIntrospector returned value of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    :cond_3f
    check-cast v1, Ljava/lang/Class;

    .line 440
    const-class v2, Lhj;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 441
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotationIntrospector returned Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; expected Class<JsonSerializer>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    :cond_6c
    sget-object v2, Lhq$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhq$a;

    invoke-virtual {p0, v2}, Lhq;->a(Lhq$a;)Z

    move-result v2

    invoke-static {v1, v2}, Lme;->a(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhj;

    move-object v1, p0

    goto :goto_13

    .line 445
    :cond_7a
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected static a(Lhq;Lju;Lhu;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 563
    if-eqz p2, :cond_5

    move v0, v2

    .line 570
    :goto_4
    return v0

    .line 566
    :cond_5
    invoke-virtual {p0}, Lhq;->a()Lgy;

    move-result-object v0

    invoke-virtual {p1}, Lju;->c()Ljl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgy;->d(Ljk;)Lhx$b;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_1b

    .line 568
    sget-object v1, Lhx$b;->STATIC:Lhx$b;

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_4

    :cond_19
    move v0, v2

    goto :goto_4

    .line 570
    :cond_1b
    sget-object v0, Lhq$a;->USE_STATIC_TYPING:Lhq$a;

    invoke-virtual {p0, v0}, Lhq;->a(Lhq$a;)Z

    move-result v0

    goto :goto_4
.end method

.method private d(Lnd;Lhq;Lju;)Lhj;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            "Lju;",
            ")",
            "Lhj",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p2}, Lhq;->a()Lgy;

    move-result-object v0

    .line 456
    invoke-virtual {p1}, Lnd;->e()Lnd;

    move-result-object v1

    .line 457
    invoke-virtual {p0, v1, p2}, Lkv;->b(Lnd;Lhq;)Lhu;

    move-result-object v1

    .line 458
    invoke-static {p2, p3, v1}, Lkv;->a(Lhq;Lju;Lhu;)Z

    move-result v2

    .line 459
    invoke-virtual {p3}, Lju;->c()Ljl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgy;->b(Ljl;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v2, v1}, Llh;->a([Ljava/lang/String;Lnd;ZLhu;)Llh;

    move-result-object v0

    return-object v0
.end method

.method private e(Lnd;Lhq;Lju;)Lhj;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            "Lju;",
            ")",
            "Lhj",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, Lnd;->e()Lnd;

    move-result-object v0

    .line 488
    invoke-virtual {p0, v0, p2}, Lkv;->b(Lnd;Lhq;)Lhu;

    move-result-object v1

    .line 489
    invoke-static {p2, p3, v1}, Lkv;->a(Lhq;Lju;Lhu;)Z

    move-result v2

    new-instance v3, Lku$i;

    invoke-direct {v3, v0, v2, v1}, Lku$i;-><init>(Lnd;ZLhu;)V

    return-object v3
.end method

.method private f(Lnd;Lhq;Lju;)Lhj;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            "Lju;",
            ")",
            "Lhj",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p1}, Lnd;->e()Lnd;

    move-result-object v0

    .line 497
    invoke-virtual {p0, v0, p2}, Lkv;->b(Lnd;Lhq;)Lhu;

    move-result-object v1

    .line 498
    invoke-static {p2, p3, v1}, Lkv;->a(Lhq;Lju;Lhu;)Z

    move-result v2

    new-instance v3, Lla$d;

    invoke-direct {v3, v0, v2, v1}, Lla$d;-><init>(Lnd;ZLhu;)V

    return-object v3
.end method

.method private g(Lnd;Lhq;Lju;)Lhj;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            "Lju;",
            ")",
            "Lhj",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 505
    invoke-virtual {p1}, Lnd;->e()Lnd;

    move-result-object v0

    .line 506
    invoke-virtual {p0, v0, p2}, Lkv;->b(Lnd;Lhq;)Lhu;

    move-result-object v1

    .line 507
    invoke-static {p2, p3, v1}, Lkv;->a(Lhq;Lju;Lhu;)Z

    move-result v2

    new-instance v3, Lla$b;

    invoke-direct {v3, v0, v2, v1}, Lla$b;-><init>(Lnd;ZLhu;)V

    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lhq;)Lhj;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lhq;",
            ")",
            "Lhj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkv;->a(Lnd;Lhq;)Lhj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lnd;Lhq;)Lhj;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p2, p1}, Lhq;->a(Lnd;)Lgz;

    move-result-object v0

    check-cast v0, Lju;

    .line 209
    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v1

    invoke-static {p2, v1}, Lkv;->a(Lhq;Ljk;)Lhj;

    move-result-object v1

    .line 210
    if-nez v1, :cond_21

    .line 212
    invoke-virtual {p0, p1, p2, v0}, Lkv;->a(Lnd;Lhq;Lju;)Lhj;

    move-result-object v1

    .line 213
    if-nez v1, :cond_21

    .line 217
    invoke-virtual {p0, p1, p2, v0}, Lkv;->b(Lnd;Lhq;Lju;)Lhj;

    move-result-object v1

    .line 218
    if-nez v1, :cond_21

    .line 220
    invoke-virtual {p0, p1, p2, v0}, Lkv;->c(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    .line 224
    :goto_20
    return-object v0

    :cond_21
    move-object v0, v1

    goto :goto_20
.end method

.method public final a(Lnd;Lhq;Lju;)Lhj;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            "Lju;",
            ")",
            "Lhj",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 277
    sget-object v0, Lkv;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    .line 278
    if-nez v0, :cond_22

    .line 279
    sget-object v2, Lkv;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 280
    if-eqz v1, :cond_22

    .line 282
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_2d

    .line 295
    :cond_22
    if-eqz v0, :cond_74

    .line 296
    sget-object v1, Llh;->a:Llh;

    if-ne v0, v1, :cond_59

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lkv;->d(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    .line 312
    :cond_2c
    :goto_2c
    return-object v0

    .line 283
    :catch_2d
    move-exception v0

    .line 284
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate standard serializer (of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 299
    :cond_59
    sget-object v1, Lku$i;->b:Lku$i;

    if-ne v0, v1, :cond_62

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lkv;->e(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    goto :goto_2c

    .line 302
    :cond_62
    sget-object v1, Lla$d;->e:Lla$d;

    if-ne v0, v1, :cond_6b

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lkv;->f(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    goto :goto_2c

    .line 305
    :cond_6b
    sget-object v1, Lla$b;->e:Lla$b;

    if-ne v0, v1, :cond_2c

    .line 306
    invoke-direct {p0, p1, p2, p3}, Lkv;->g(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    goto :goto_2c

    .line 310
    :cond_74
    iget-object v0, p0, Lkv;->c:Ljj;

    invoke-virtual {v0, p1}, Ljj;->a(Lnd;)Lhj;

    move-result-object v0

    goto :goto_2c
.end method

.method public final b(Lnd;Lhq;Lju;)Lhj;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            "Lju;",
            ")",
            "Lhj",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 325
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    .line 340
    const-class v1, Lhh;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 341
    const-class v1, Lhi;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 342
    sget-object v0, Llr$k;->a:Llr$k;

    .line 389
    :goto_17
    return-object v0

    .line 344
    :cond_18
    sget-object v0, Llr$j;->a:Llr$j;

    goto :goto_17

    .line 346
    :cond_1b
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 347
    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 348
    invoke-virtual {p1}, Lnd;->g()Lnd;

    move-result-object v0

    invoke-virtual {p1}, Lnd;->e()Lnd;

    move-result-object v1

    invoke-virtual {v0}, Lnd;->k()Z

    move-result v2

    if-eqz v2, :cond_151

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lhq;->a()Lgy;

    move-result-object v2

    invoke-static {v0, v2}, Lmf;->a(Ljava/lang/Class;Lgy;)Lmf;

    move-result-object v0

    :goto_45
    invoke-virtual {p0, v1, p2}, Lkv;->b(Lnd;Lhq;)Lhu;

    move-result-object v2

    new-instance v3, Llb;

    invoke-static {p2, p3, v2}, Lkv;->a(Lhq;Lju;Lhu;)Z

    move-result v4

    invoke-direct {v3, v1, v4, v0, v2}, Llb;-><init>(Lnd;ZLmf;Lhu;)V

    move-object v0, v3

    goto :goto_17

    .line 350
    :cond_54
    invoke-direct {p0, p1, p2, p3}, Lkv;->d(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    goto :goto_17

    .line 352
    :cond_59
    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lkv;->e(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    goto :goto_17

    .line 355
    :cond_66
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 356
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_7e

    const-class v1, Ljava/util/AbstractList;

    if-eq v0, v1, :cond_7e

    const-class v1, Ljava/util/RandomAccess;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 357
    :cond_7e
    invoke-direct {p0, p1, p2, p3}, Lkv;->f(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    goto :goto_17

    .line 359
    :cond_83
    invoke-direct {p0, p1, p2, p3}, Lkv;->g(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    goto :goto_17

    .line 362
    :cond_88
    invoke-virtual {p3}, Lju;->f()Ljp;

    move-result-object v1

    .line 363
    if-eqz v1, :cond_9c

    .line 364
    invoke-static {p2, v1}, Lkv;->a(Lhq;Ljk;)Lhj;

    move-result-object v0

    .line 365
    new-instance v2, Llg;

    iget-object v1, v1, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-direct {v2, v1, v0}, Llg;-><init>(Ljava/lang/reflect/Method;Lhj;)V

    move-object v0, v2

    goto/16 :goto_17

    .line 369
    :cond_9c
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 370
    sget-object v0, Llr$i;->a:Llr$i;

    goto/16 :goto_17

    .line 372
    :cond_a8
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 375
    invoke-virtual {p2}, Lhq;->a()Lgy;

    move-result-object v1

    sget-object v2, Lhq$a;->WRITE_ENUMS_USING_TO_STRING:Lhq$a;

    invoke-virtual {p2, v2}, Lhq;->a(Lhq$a;)Z

    move-result v2

    if-eqz v2, :cond_108

    invoke-static {v0}, Lme;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    if-eqz p0, :cond_eb

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_cf
    if-ge v2, v1, :cond_dd

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_cf

    :cond_dd
    new-instance v1, Lmf;

    invoke-direct {v1, v0}, Lmf;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    :goto_e3
    new-instance v1, Llc;

    invoke-direct {v1, v0}, Llc;-><init>(Lmf;)V

    move-object v0, v1

    goto/16 :goto_17

    :cond_eb
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not determine enum constants for Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_108
    invoke-static {v0, v1}, Lmf;->a(Ljava/lang/Class;Lgy;)Lmf;

    move-result-object v0

    goto :goto_e3

    .line 377
    :cond_10d
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 378
    sget-object v0, Llr$b;->a:Llr$b;

    goto/16 :goto_17

    .line 380
    :cond_119
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 381
    sget-object v0, Llr$p;->a:Llr$p;

    goto/16 :goto_17

    .line 383
    :cond_125
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 384
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 385
    invoke-virtual {p1}, Lnd;->e()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->k()Z

    move-result v1

    if-nez v1, :cond_140

    move-object v0, v3

    :cond_140
    new-instance v1, Lla$c;

    invoke-direct {v1, v0}, Lla$c;-><init>(Lnd;)V

    move-object v0, v1

    goto/16 :goto_17

    .line 387
    :cond_148
    invoke-direct {p0, p1, p2, p3}, Lkv;->g(Lnd;Lhq;Lju;)Lhj;

    move-result-object v0

    goto/16 :goto_17

    :cond_14e
    move-object v0, v3

    .line 389
    goto/16 :goto_17

    :cond_151
    move-object v0, v3

    goto/16 :goto_45
.end method

.method public final b(Lnd;Lhq;)Lhu;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhq;->b(Ljava/lang/Class;)Lgz;

    move-result-object p0

    check-cast p0, Lju;

    .line 236
    invoke-virtual {p0}, Lju;->c()Ljl;

    move-result-object v0

    .line 237
    invoke-virtual {p2}, Lhq;->a()Lgy;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0}, Lgy;->d(Ljl;)Lke;

    move-result-object v2

    .line 243
    if-nez v2, :cond_23

    .line 244
    invoke-virtual {p2}, Lhq;->c()Lke;

    move-result-object v0

    move-object v1, v0

    move-object v0, v4

    .line 248
    :goto_1f
    if-nez v1, :cond_2d

    move-object v0, v4

    :goto_22
    return-object v0

    .line 246
    :cond_23
    invoke-virtual {p2}, Lhq;->e()Lkc;

    move-result-object v3

    invoke-virtual {v3, v0, p2, v1}, Lkc;->a(Ljl;Lhl;Lgy;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v2

    goto :goto_1f

    .line 248
    :cond_2d
    invoke-interface {v1, p1, v0}, Lke;->a(Lnd;Ljava/util/Collection;)Lhu;

    move-result-object v0

    goto :goto_22
.end method

.method public final c(Lnd;Lhq;Lju;)Lhj;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            "Lju;",
            ")",
            "Lhj",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    .line 406
    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 407
    invoke-virtual {p1, v2}, Lnd;->b(I)Lnd;

    move-result-object v0

    if-nez v0, :cond_19

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    :cond_19
    invoke-virtual {p0, v0, p2}, Lkv;->b(Lnd;Lhq;)Lhu;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lkv;->a(Lhq;Lju;Lhu;)Z

    move-result v2

    new-instance v3, Lla$f;

    invoke-direct {v3, v0, v2, v1}, Lla$f;-><init>(Lnd;ZLhu;)V

    move-object v0, v3

    .line 415
    :goto_27
    return-object v0

    .line 409
    :cond_28
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 410
    invoke-virtual {p1, v2}, Lnd;->b(I)Lnd;

    move-result-object v0

    if-nez v0, :cond_3c

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    :cond_3c
    invoke-virtual {p0, v0, p2}, Lkv;->b(Lnd;Lhq;)Lhu;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lkv;->a(Lhq;Lju;Lhu;)Z

    move-result v2

    new-instance v3, Lla$e;

    invoke-direct {v3, v0, v2, v1}, Lla$e;-><init>(Lnd;ZLhu;)V

    move-object v0, v3

    goto :goto_27

    .line 412
    :cond_4b
    const-class v1, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 413
    sget-object v0, Lls;->a:Lls;

    goto :goto_27

    .line 415
    :cond_56
    const/4 v0, 0x0

    goto :goto_27
.end method
