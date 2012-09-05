.class final Lil$a;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field protected final a:Lnd;

.field protected final b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/reflect/Method;

.field protected d:Lhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljm;Ljp;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-eqz p1, :cond_1a

    .line 146
    invoke-virtual {p1}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lil$a;->b:Ljava/lang/reflect/Constructor;

    .line 147
    iput-object v2, p0, Lil$a;->c:Ljava/lang/reflect/Method;

    .line 148
    invoke-virtual {p1, v1}, Ljm;->b(I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    iput-object v0, p0, Lil$a;->a:Lnd;

    .line 152
    :goto_19
    return-void

    .line 149
    :cond_1a
    if-eqz p2, :cond_2d

    .line 150
    iput-object v2, p0, Lil$a;->b:Ljava/lang/reflect/Constructor;

    .line 151
    iget-object v0, p2, Ljp;->a:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lil$a;->c:Ljava/lang/reflect/Method;

    .line 152
    invoke-virtual {p2, v1}, Ljp;->b(I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    iput-object v0, p0, Lil$a;->a:Lnd;

    goto :goto_19

    .line 154
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: neither delegating constructor nor factory method passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 168
    iget-object v0, p0, Lil$a;->d:Lhf;

    invoke-virtual {v0, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    :try_start_7
    iget-object v1, p0, Lil$a;->b:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_18

    .line 171
    iget-object v1, p0, Lil$a;->b:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    :goto_17
    return-object v0

    .line 174
    :cond_18
    iget-object v1, p0, Lil$a;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_26

    move-result-object v0

    goto :goto_17

    .line 175
    :catch_26
    move-exception v0

    invoke-static {v0}, Lme;->a(Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 177
    goto :goto_17
.end method

.method public final a()Lnd;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lil$a;->a:Lnd;

    return-object v0
.end method

.method public final a(Lhf;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iput-object p1, p0, Lil$a;->d:Lhf;

    .line 163
    return-void
.end method
