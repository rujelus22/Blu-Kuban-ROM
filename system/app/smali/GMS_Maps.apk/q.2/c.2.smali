.class public Lq/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lq/c;->a:Ljava/util/HashMap;

    new-instance v0, Lq/h;

    invoke-direct {v0}, Lq/h;-><init>()V

    invoke-static {v0}, Lq/c;->a(Lq/a;)V

    new-instance v0, Lq/f;

    invoke-direct {v0}, Lq/f;-><init>()V

    invoke-static {v0}, Lq/c;->a(Lq/a;)V

    new-instance v0, Lq/d;

    invoke-direct {v0}, Lq/d;-><init>()V

    invoke-static {v0}, Lq/c;->a(Lq/a;)V

    new-instance v0, Lq/i;

    invoke-direct {v0}, Lq/i;-><init>()V

    invoke-static {v0}, Lq/c;->a(Lq/a;)V

    new-instance v0, Lq/e;

    invoke-direct {v0}, Lq/e;-><init>()V

    invoke-static {v0}, Lq/c;->a(Lq/a;)V

    new-instance v0, Lq/g;

    invoke-direct {v0}, Lq/g;-><init>()V

    invoke-static {v0}, Lq/c;->a(Lq/a;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lq/a;
    .registers 2

    sget-object v0, Lq/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/a;

    return-object v0
.end method

.method private static a(Lq/a;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lq/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
