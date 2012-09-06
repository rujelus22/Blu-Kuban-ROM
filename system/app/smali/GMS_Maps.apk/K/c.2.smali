.class public Lk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/c;->a:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lk/h;

    invoke-direct {v0}, Lk/h;-><init>()V

    invoke-static {v0}, Lk/c;->a(Lk/a;)V

    .line 38
    new-instance v0, Lk/f;

    invoke-direct {v0}, Lk/f;-><init>()V

    invoke-static {v0}, Lk/c;->a(Lk/a;)V

    .line 39
    new-instance v0, Lk/d;

    invoke-direct {v0}, Lk/d;-><init>()V

    invoke-static {v0}, Lk/c;->a(Lk/a;)V

    .line 40
    new-instance v0, Lk/i;

    invoke-direct {v0}, Lk/i;-><init>()V

    invoke-static {v0}, Lk/c;->a(Lk/a;)V

    .line 41
    new-instance v0, Lk/e;

    invoke-direct {v0}, Lk/e;-><init>()V

    invoke-static {v0}, Lk/c;->a(Lk/a;)V

    .line 42
    new-instance v0, Lk/g;

    invoke-direct {v0}, Lk/g;-><init>()V

    invoke-static {v0}, Lk/c;->a(Lk/a;)V

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lk/a;
    .registers 2
    .parameter

    .prologue
    .line 56
    sget-object v0, Lk/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a;

    return-object v0
.end method

.method private static a(Lk/a;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lk/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
