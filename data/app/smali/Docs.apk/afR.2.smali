.class public final LafR;
.super Ljava/lang/Object;
.source "Splitter.java"


# instance fields
.field private final a:I

.field private final a:LafW;

.field private final a:Lafl;

.field private final a:Z


# direct methods
.method private constructor <init>(LafW;)V
    .registers 5
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    sget-object v1, Lafl;->n:Lafl;

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, LafR;-><init>(LafW;ZLafl;I)V

    .line 106
    return-void
.end method

.method private constructor <init>(LafW;ZLafl;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, LafR;->a:LafW;

    .line 111
    iput-boolean p2, p0, LafR;->a:Z

    .line 112
    iput-object p3, p0, LafR;->a:Lafl;

    .line 113
    iput p4, p0, LafR;->a:I

    .line 114
    return-void
.end method

.method static synthetic a(LafR;)I
    .registers 2
    .parameter

    .prologue
    .line 98
    iget v0, p0, LafR;->a:I

    return v0
.end method

.method public static a(Lafl;)LafR;
    .registers 3
    .parameter

    .prologue
    .line 139
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, LafR;

    new-instance v1, LafS;

    invoke-direct {v1, p0}, LafS;-><init>(Lafl;)V

    invoke-direct {v0, v1}, LafR;-><init>(LafW;)V

    return-object v0
.end method

.method static synthetic a(LafR;)Lafl;
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, LafR;->a:Lafl;

    return-object v0
.end method

.method static synthetic a(LafR;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, LafR;->a(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, LafR;->a:LafW;

    invoke-interface {v0, p0, p1}, LafW;->a(LafR;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LafR;)Z
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, LafR;->a:Z

    return v0
.end method


# virtual methods
.method public a()LafR;
    .registers 6

    .prologue
    .line 302
    new-instance v0, LafR;

    iget-object v1, p0, LafR;->a:LafW;

    const/4 v2, 0x1

    iget-object v3, p0, LafR;->a:Lafl;

    iget v4, p0, LafR;->a:I

    invoke-direct {v0, v1, v2, v3, v4}, LafR;-><init>(LafW;ZLafl;I)V

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v0, LafU;

    invoke-direct {v0, p0, p1}, LafU;-><init>(LafR;Ljava/lang/CharSequence;)V

    return-object v0
.end method
