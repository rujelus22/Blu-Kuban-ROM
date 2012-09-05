.class final Lil$b;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "b"
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/reflect/Method;

.field protected final e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljm;Ljp;Ljm;Ljp;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljm;",
            "Ljp;",
            "Ljm;",
            "Ljp;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lil$b;->a:Ljava/lang/Class;

    .line 77
    if-nez p2, :cond_1b

    move-object v0, v1

    :goto_9
    iput-object v0, p0, Lil$b;->b:Ljava/lang/reflect/Constructor;

    .line 78
    if-nez p4, :cond_20

    move-object v0, v1

    :goto_e
    iput-object v0, p0, Lil$b;->c:Ljava/lang/reflect/Constructor;

    .line 79
    if-nez p3, :cond_25

    move-object v0, v1

    :goto_13
    iput-object v0, p0, Lil$b;->d:Ljava/lang/reflect/Method;

    .line 80
    if-nez p5, :cond_28

    move-object v0, v1

    :goto_18
    iput-object v0, p0, Lil$b;->e:Ljava/lang/reflect/Method;

    .line 81
    return-void

    .line 77
    :cond_1b
    invoke-virtual {p2}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_9

    .line 78
    :cond_20
    invoke-virtual {p4}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_e

    .line 79
    :cond_25
    iget-object v0, p3, Ljp;->a:Ljava/lang/reflect/Method;

    goto :goto_13

    .line 80
    :cond_28
    iget-object v0, p5, Ljp;->a:Ljava/lang/reflect/Method;

    goto :goto_18
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 7
    .parameter

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lil$b;->b:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_15

    .line 88
    iget-object v0, p0, Lil$b;->b:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    :goto_14
    return-object v0

    .line 90
    :cond_15
    iget-object v0, p0, Lil$b;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_30

    .line 91
    iget-object v0, p0, Lil$b;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lil$b;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    goto :goto_14

    .line 93
    :catch_2c
    move-exception v0

    invoke-static {v0}, Lme;->a(Ljava/lang/Throwable;)V

    .line 97
    :cond_30
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lil$b;->a(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method public final a(J)Ljava/lang/Object;
    .registers 8
    .parameter

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lil$b;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_15

    .line 108
    iget-object v0, p0, Lil$b;->c:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    :goto_14
    return-object v0

    .line 110
    :cond_15
    iget-object v0, p0, Lil$b;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_30

    .line 111
    iget-object v0, p0, Lil$b;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lil$b;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    goto :goto_14

    .line 113
    :catch_2c
    move-exception v0

    invoke-static {v0}, Lme;->a(Ljava/lang/Throwable;)V

    .line 116
    :cond_30
    const/4 v0, 0x0

    goto :goto_14
.end method
