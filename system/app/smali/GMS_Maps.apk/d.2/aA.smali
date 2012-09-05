.class Ld/aA;
.super Ljava/lang/Object;

# interfaces
.implements Ld/aB;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ld/aA;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".*_nomap$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ld/aA;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ld/aA;

    invoke-direct {v0}, Ld/aA;-><init>()V

    sput-object v0, Ld/aA;->b:Ld/aA;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ld/aA;
    .registers 1

    sget-object v0, Ld/aA;->b:Ld/aA;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v2, Ld/aA;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_24
    return-void
.end method
