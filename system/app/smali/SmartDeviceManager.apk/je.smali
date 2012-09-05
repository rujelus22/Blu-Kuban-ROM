.class final Lje;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnd;",
            "Lhk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lje;->a:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljd$a;

    invoke-direct {v0}, Ljd$a;-><init>()V

    invoke-direct {p0, v0}, Lje;->a(Ljd;)V

    .line 32
    new-instance v0, Ljd$b;

    invoke-direct {v0}, Ljd$b;-><init>()V

    invoke-direct {p0, v0}, Lje;->a(Ljd;)V

    .line 33
    new-instance v0, Ljd$c;

    invoke-direct {v0}, Ljd$c;-><init>()V

    invoke-direct {p0, v0}, Lje;->a(Ljd;)V

    .line 34
    new-instance v0, Ljd$i;

    invoke-direct {v0}, Ljd$i;-><init>()V

    invoke-direct {p0, v0}, Lje;->a(Ljd;)V

    .line 35
    new-instance v0, Ljd$g;

    invoke-direct {v0}, Ljd$g;-><init>()V

    invoke-direct {p0, v0}, Lje;->a(Ljd;)V

    .line 36
    new-instance v0, Ljd$h;

    invoke-direct {v0}, Ljd$h;-><init>()V

    invoke-direct {p0, v0}, Lje;->a(Ljd;)V

    .line 37
    new-instance v0, Ljd$f;

    invoke-direct {v0}, Ljd$f;-><init>()V

    invoke-direct {p0, v0}, Lje;->a(Ljd;)V

    .line 38
    new-instance v0, Ljd$d;

    invoke-direct {v0}, Ljd$d;-><init>()V

    invoke-direct {p0, v0}, Lje;->a(Ljd;)V

    .line 39
    return-void
.end method

.method private a(Ljd;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Ljd;->a()Ljava/lang/Class;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lje;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
