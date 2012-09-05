.class final Lil$d;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "d"
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

.field protected final b:Ljava/lang/reflect/Method;

.field protected final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljm;Ljp;)V
    .registers 6
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
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lil$d;->a:Ljava/lang/Class;

    .line 38
    if-nez p2, :cond_11

    move-object v0, v1

    :goto_9
    iput-object v0, p0, Lil$d;->c:Ljava/lang/reflect/Constructor;

    .line 39
    if-nez p3, :cond_16

    move-object v0, v1

    :goto_e
    iput-object v0, p0, Lil$d;->b:Ljava/lang/reflect/Method;

    .line 40
    return-void

    .line 38
    :cond_11
    invoke-virtual {p2}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_9

    .line 39
    :cond_16
    iget-object v0, p3, Ljp;->a:Ljava/lang/reflect/Method;

    goto :goto_e
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lil$d;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_11

    .line 46
    iget-object v0, p0, Lil$d;->c:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    :goto_10
    return-object v0

    .line 48
    :cond_11
    iget-object v0, p0, Lil$d;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_28

    .line 49
    iget-object v0, p0, Lil$d;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lil$d;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_10

    .line 51
    :catch_24
    move-exception v0

    invoke-static {v0}, Lme;->a(Ljava/lang/Throwable;)V

    .line 54
    :cond_28
    const/4 v0, 0x0

    goto :goto_10
.end method
