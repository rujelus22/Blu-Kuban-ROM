.class public final Lme$a;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# static fields
.field public static final a:Lme$a;


# instance fields
.field private final b:Ljava/lang/reflect/Field;

.field private final c:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 463
    new-instance v0, Lme$a;

    invoke-direct {v0}, Lme$a;-><init>()V

    sput-object v0, Lme$a;->a:Lme$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const-class v0, Ljava/util/EnumSet;

    const-string v1, "elementType"

    const-class v2, Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lme$a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lme$a;->b:Ljava/lang/reflect/Field;

    .line 473
    const-class v0, Ljava/util/EnumMap;

    const-string v1, "elementType"

    const-class v2, Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lme$a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lme$a;->c:Ljava/lang/reflect/Field;

    .line 474
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 498
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 499
    :catch_5
    move-exception v0

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 506
    .line 508
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 509
    array-length v1, v0

    move v2, v5

    :goto_8
    if-ge v2, v1, :cond_43

    aget-object v3, v0, v2

    .line 510
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p2, :cond_30

    move-object v1, v3

    .line 516
    :goto_1d
    if-nez v1, :cond_41

    .line 517
    array-length v2, v0

    move-object v3, v1

    move v1, v5

    :goto_22
    if-ge v1, v2, :cond_37

    aget-object v4, v0, v1

    .line 518
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p2, :cond_34

    .line 520
    if-eqz v3, :cond_33

    move-object v0, v6

    .line 530
    :cond_2f
    :goto_2f
    return-object v0

    .line 509
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_33
    move-object v3, v4

    .line 517
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_37
    move-object v0, v3

    .line 525
    :goto_38
    if-eqz v0, :cond_2f

    .line 527
    const/4 v1, 0x1

    :try_start_3b
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_2f

    :catch_3f
    move-exception v1

    goto :goto_2f

    :cond_41
    move-object v0, v1

    goto :goto_38

    :cond_43
    move-object v1, v6

    goto :goto_1d
.end method


# virtual methods
.method public final a(Ljava/util/EnumMap;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<**>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lme$a;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    .line 489
    iget-object v0, p0, Lme$a;->c:Ljava/lang/reflect/Field;

    invoke-static {p1, v0}, Lme$a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 491
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not figure out type for EnumMap (odd JDK platform?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/EnumSet;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lme$a;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    .line 480
    iget-object v0, p0, Lme$a;->b:Ljava/lang/reflect/Field;

    invoke-static {p1, v0}, Lme$a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 482
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not figure out type for EnumSet (odd JDK platform?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
