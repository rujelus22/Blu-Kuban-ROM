.class final Laos;
.super Ljava/lang/Object;
.source "ConstructorInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<",
            "Laqt;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Laop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laop",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Laph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laph",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:[LapO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LapO",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Laos;Laoy;Lapb;Laoo;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Laos;->a(Laoy;Lapb;Laoo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Laoy;Lapb;Laoo;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "Laoo",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Laos;->a:[LapO;

    invoke-static {p1, p2, v0}, LapO;->a(Laoy;Lapb;[LapO;)[Ljava/lang/Object;

    move-result-object v0

    .line 109
    iget-object v1, p0, Laos;->a:Laop;

    invoke-interface {v1, v0}, Laop;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    invoke-virtual {p3, v0}, Laoo;->b(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_21

    .line 112
    :try_start_f
    invoke-virtual {p3}, Laoo;->c()V

    .line 116
    invoke-virtual {p3, v0}, Laoo;->a(Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Laos;->a:Laph;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Laph;->a(Ljava/lang/Object;Laoy;Lapb;Z)V

    .line 119
    iget-object v1, p0, Laos;->a:Laph;

    invoke-virtual {v1, v0, p1}, Laph;->a(Ljava/lang/Object;Laoy;)V

    .line 121
    return-object v0

    .line 112
    :catchall_21
    move-exception v0

    invoke-virtual {p3}, Laoo;->c()V

    throw v0
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_26} :catch_26

    .line 122
    :catch_26
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 126
    :cond_31
    iget-object v1, p0, Laos;->a:Laop;

    invoke-interface {v1}, Laop;->a()Laqt;

    move-result-object v1

    invoke-virtual {p1, v1}, Laoy;->a(Ljava/lang/Object;)Laoy;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoy;->a(Ljava/lang/Throwable;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()LaiE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiE",
            "<",
            "Laqt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Laos;->a:LaiE;

    return-object v0
.end method

.method a()Laop;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laop",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Laos;->a:Laop;

    return-object v0
.end method

.method a(Laoy;Lapb;Ljava/lang/Class;ZLapD;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "Ljava/lang/Class",
            "<*>;Z",
            "LapD",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p2, p0}, Lapb;->a(Ljava/lang/Object;)Laoo;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Laoo;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 69
    if-nez p4, :cond_15

    .line 70
    invoke-virtual {p1, p3}, Laoy;->g(Ljava/lang/Class;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 73
    :cond_15
    invoke-virtual {v1, p1, p3}, Laoo;->a(Laoy;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    :cond_19
    :goto_19
    return-object v0

    .line 79
    :cond_1a
    invoke-virtual {v1}, Laoo;->a()Ljava/lang/Object;

    move-result-object v0

    .line 80
    if-nez v0, :cond_19

    .line 84
    invoke-virtual {v1}, Laoo;->b()V

    .line 87
    :try_start_23
    invoke-virtual {p5}, LapD;->a()Z

    move-result v0

    if-nez v0, :cond_34

    .line 88
    invoke-direct {p0, p1, p2, v1}, Laos;->a(Laoy;Lapb;Laoo;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_44

    move-result-object v0

    .line 97
    invoke-virtual {v1}, Laoo;->a()V

    .line 98
    invoke-virtual {v1}, Laoo;->c()V

    goto :goto_19

    .line 90
    :cond_34
    :try_start_34
    new-instance v0, Laot;

    invoke-direct {v0, p0, p1, p2, v1}, Laot;-><init>(Laos;Laoy;Lapb;Laoo;)V

    invoke-virtual {p5, p1, p2, v0}, LapD;->a(Laoy;Lapb;LapF;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_44

    move-result-object v0

    .line 97
    invoke-virtual {v1}, Laoo;->a()V

    .line 98
    invoke-virtual {v1}, Laoo;->c()V

    goto :goto_19

    .line 97
    :catchall_44
    move-exception v0

    invoke-virtual {v1}, Laoo;->a()V

    .line 98
    invoke-virtual {v1}, Laoo;->c()V

    throw v0
.end method
