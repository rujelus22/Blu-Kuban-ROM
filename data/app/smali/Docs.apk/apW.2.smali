.class public final LapW;
.super Ljava/lang/Object;
.source "SourceProvider.java"


# static fields
.field public static final a:LapW;

.field public static final a:Ljava/lang/Object;


# instance fields
.field private final a:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-string v0, "[unknown source]"

    sput-object v0, LapW;->a:Ljava/lang/Object;

    .line 38
    new-instance v0, LapW;

    const-class v1, LapW;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LaiE;->a(Ljava/lang/Object;)LaiE;

    move-result-object v1

    invoke-direct {v0, v1}, LapW;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, LapW;->a:LapW;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, LaiE;->a(Ljava/lang/Iterable;)LaiE;

    move-result-object v0

    iput-object v0, p0, LapW;->a:LaiE;

    .line 43
    return-void
.end method

.method private static varargs a([Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    array-length v2, p0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_14

    aget-object v3, p0, v0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 56
    :cond_14
    return-object v1
.end method


# virtual methods
.method public varargs a([Ljava/lang/Class;)LapW;
    .registers 5
    .parameter

    .prologue
    .line 47
    new-instance v0, LapW;

    iget-object v1, p0, LapW;->a:LaiE;

    invoke-static {p1}, LapW;->a([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, LaiT;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, LapW;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public a()Ljava/lang/StackTraceElement;
    .registers 7

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1f

    aget-object v3, v1, v0

    .line 65
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v5, p0, LapW;->a:LaiE;

    invoke-virtual {v5, v4}, LaiE;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 67
    return-object v3

    .line 64
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 70
    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
