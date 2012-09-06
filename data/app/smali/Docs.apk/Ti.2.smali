.class abstract LTi;
.super Ljava/lang/Object;
.source "SingleFeedFilter.java"


# static fields
.field public static final a:LTi;

.field public static final b:LTi;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 77
    new-instance v0, LTk;

    const-string v1, "all"

    invoke-direct {v0, v1}, LTk;-><init>(Ljava/lang/String;)V

    sput-object v0, LTi;->a:LTi;

    .line 81
    new-instance v0, LTl;

    const-string v1, "none"

    invoke-direct {v0, v1}, LTl;-><init>(Ljava/lang/String;)V

    sput-object v0, LTi;->b:LTi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, LTi;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;LTj;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, LTi;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(LTi;LTi;)LTi;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 53
    sget-object v0, LTi;->b:LTi;

    if-eq p0, v0, :cond_8

    sget-object v0, LTi;->b:LTi;

    if-ne p1, v0, :cond_b

    .line 54
    :cond_8
    sget-object p1, LTi;->b:LTi;

    .line 60
    :cond_a
    :goto_a
    return-object p1

    .line 55
    :cond_b
    sget-object v0, LTi;->a:LTi;

    if-eq p0, v0, :cond_a

    .line 57
    sget-object v0, LTi;->a:LTi;

    if-ne p1, v0, :cond_15

    move-object p1, p0

    .line 58
    goto :goto_a

    .line 60
    :cond_15
    new-instance v0, LTj;

    const-string v1, "Compose[%s, %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, LTj;-><init>(Ljava/lang/String;LTi;LTi;)V

    move-object p1, v0

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)LTi;
    .registers 4
    .parameter

    .prologue
    .line 131
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, LTn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LTn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Ljava/util/Date;Lle;)LTi;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    if-nez p0, :cond_8

    .line 99
    sget-object v0, LTi;->b:LTi;

    .line 106
    :goto_7
    return-object v0

    .line 100
    :cond_8
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 102
    sget-object v0, LTi;->b:LTi;

    goto :goto_7

    .line 103
    :cond_15
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 104
    sget-object v0, LTi;->a:LTi;

    goto :goto_7

    .line 106
    :cond_25
    new-instance v0, LTm;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncClipTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, LTm;-><init>(Ljava/lang/String;Ljava/util/Date;Lle;)V

    goto :goto_7
.end method

.method static synthetic a(Landroid/net/Uri$Builder;Ljava/util/List;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p0, p1}, LTi;->b(Landroid/net/Uri$Builder;Ljava/util/List;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)LTi;
    .registers 4
    .parameter

    .prologue
    .line 155
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, LTo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LTo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Landroid/net/Uri$Builder;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_4

    .line 152
    :cond_14
    return-void
.end method

.method public static c(Ljava/lang/String;)LTi;
    .registers 4
    .parameter

    .prologue
    .line 184
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, LTp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LTp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(LTi;)LTi;
    .registers 3
    .parameter

    .prologue
    .line 74
    invoke-static {p0, p1}, LTi;->a(LTi;LTi;)LTi;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 39
    const-string v0, "Filter[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LTi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
