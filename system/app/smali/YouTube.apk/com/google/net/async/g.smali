.class public final Lcom/google/net/async/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/net/async/f;

.field public static final b:Lcom/google/net/async/f;

.field public static final c:Lcom/google/net/async/f;

.field private static final d:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/google/net/async/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/net/async/g;->d:Ljava/util/logging/Logger;

    .line 173
    new-instance v0, Lcom/google/net/async/h;

    invoke-direct {v0}, Lcom/google/net/async/h;-><init>()V

    sput-object v0, Lcom/google/net/async/g;->a:Lcom/google/net/async/f;

    .line 206
    new-instance v0, Lcom/google/net/async/i;

    invoke-direct {v0}, Lcom/google/net/async/i;-><init>()V

    sput-object v0, Lcom/google/net/async/g;->b:Lcom/google/net/async/f;

    .line 234
    new-instance v0, Lcom/google/net/async/j;

    invoke-direct {v0}, Lcom/google/net/async/j;-><init>()V

    .line 233
    sput-object v0, Lcom/google/net/async/g;->c:Lcom/google/net/async/f;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/net/async/g;->d:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static a(Lcom/google/net/async/f;Ljava/lang/Exception;Lcom/google/net/async/u;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/google/net/async/k;

    invoke-direct {v3, p0, p1}, Lcom/google/net/async/k;-><init>(Lcom/google/net/async/f;Ljava/lang/Exception;)V

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/net/async/u;->a(JLjava/lang/Object;Lcom/google/net/async/c;)Lcom/google/net/async/b;

    .line 273
    return-void
.end method
