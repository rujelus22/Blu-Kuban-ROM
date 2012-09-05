.class public final Lkx;
.super Llm;
.source "a"

# interfaces
.implements Lhp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lhp;"
    }
.end annotation


# static fields
.field protected static final a:[Lkw;


# instance fields
.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final c:[Lkw;

.field protected final d:[Lkw;

.field protected e:Lkt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lkw;

    sput-object v0, Lkx;->a:[Lkw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lkw;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkw;

    invoke-direct {p0, p1, v0}, Lkx;-><init>(Ljava/lang/Class;[Lkw;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Lkw;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lkw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkx;-><init>(Ljava/lang/Class;[Lkw;[Lkw;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Lkw;[Lkw;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lkw;",
            "[",
            "Lkw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Llm;-><init>(Ljava/lang/Class;)V

    .line 77
    iput-object p2, p0, Lkx;->c:[Lkw;

    .line 79
    iput-object p1, p0, Lkx;->b:Ljava/lang/Class;

    .line 80
    iput-object p3, p0, Lkx;->d:[Lkw;

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lkx;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lkx;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lkx;

    sget-object v1, Lkx;->a:[Lkw;

    invoke-direct {v0, p0, v1}, Lkx;-><init>(Ljava/lang/Class;[Lkw;)V

    return-object v0
.end method

.method private b(Ljava/lang/Object;Lez;Lhs;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lkx;->d:[Lkw;

    if-eqz v0, :cond_1a

    invoke-virtual {p3}, Lhs;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 150
    iget-object v0, p0, Lkx;->d:[Lkw;

    .line 155
    :goto_c
    const/4 v1, 0x0

    .line 157
    :try_start_d
    array-length v2, v0

    :goto_e
    if-ge v1, v2, :cond_1d

    .line 158
    aget-object v3, v0, v1

    .line 159
    if-eqz v3, :cond_17

    .line 160
    invoke-virtual {v3, p1, p2, p3}, Lkw;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_27
    .catch Ljava/lang/StackOverflowError; {:try_start_d .. :try_end_17} :catch_35

    .line 157
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 152
    :cond_1a
    iget-object v0, p0, Lkx;->c:[Lkw;

    goto :goto_c

    .line 163
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lkx;->e:Lkt;

    if-eqz v2, :cond_26

    .line 164
    iget-object v2, p0, Lkx;->e:Lkt;

    invoke-virtual {v2, p1, p2, p3}, Lkt;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_27
    .catch Ljava/lang/StackOverflowError; {:try_start_1d .. :try_end_26} :catch_35

    .line 176
    :cond_26
    :goto_26
    return-void

    .line 166
    :catch_27
    move-exception v2

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lkw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lkx;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_26

    .line 173
    :catch_35
    move-exception v2

    new-instance v2, Lhg;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v2, v3}, Lhg;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance v3, Lhg$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lkw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lhg$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lhg;->a(Lhg$a;)V

    .line 175
    throw v2
.end method


# virtual methods
.method public final a([Lkw;)Lkx;
    .registers 5
    .parameter

    .prologue
    .line 105
    if-nez p1, :cond_4

    move-object v0, p0

    .line 108
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lkx;

    iget-object v1, p0, Lkx;->b:Ljava/lang/Class;

    iget-object v2, p0, Lkx;->c:[Lkw;

    invoke-direct {v0, v1, v2, p1}, Lkx;-><init>(Ljava/lang/Class;[Lkw;[Lkw;)V

    goto :goto_3
.end method

.method public final a(Lhs;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    iget-object v1, p0, Lkx;->c:[Lkw;

    array-length v2, v1

    move v3, v0

    :goto_5
    if-ge v3, v2, :cond_65

    .line 223
    iget-object v0, p0, Lkx;->c:[Lkw;

    aget-object v4, v0, v3

    .line 224
    invoke-virtual {v4}, Lkw;->b()Z

    move-result v0

    if-nez v0, :cond_34

    .line 225
    invoke-virtual {v4}, Lkw;->c()Lnd;

    move-result-object v0

    .line 234
    if-nez v0, :cond_38

    .line 235
    invoke-virtual {v4}, Lkw;->d()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lnd;->n()Z

    move-result v1

    if-nez v1, :cond_38

    .line 242
    invoke-virtual {v0}, Lnd;->d()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v0}, Lnd;->f()I

    move-result v1

    if-lez v1, :cond_34

    .line 243
    :cond_31
    invoke-virtual {v4, v0}, Lkw;->a(Lnd;)V

    .line 222
    :cond_34
    :goto_34
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 248
    :cond_38
    invoke-virtual {p1, v0}, Lhs;->a(Lnd;)Lhj;

    move-result-object v1

    .line 252
    invoke-virtual {v0}, Lnd;->d()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 253
    invoke-virtual {v0}, Lnd;->e()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhu;

    .line 254
    if-eqz v0, :cond_6f

    .line 256
    instance-of v5, v1, Lkz;

    if-eqz v5, :cond_6f

    .line 259
    check-cast v1, Lkz;

    if-nez v0, :cond_60

    move-object v0, v1

    .line 264
    :goto_57
    iget-object v1, p0, Lkx;->c:[Lkw;

    invoke-virtual {v4, v0}, Lkw;->a(Lhj;)Lkw;

    move-result-object v0

    aput-object v0, v1, v3

    goto :goto_34

    .line 259
    :cond_60
    invoke-virtual {v1, v0}, Lkz;->a(Lhu;)Lkz;

    move-result-object v0

    goto :goto_57

    .line 268
    :cond_65
    iget-object v0, p0, Lkx;->e:Lkt;

    if-eqz v0, :cond_6e

    .line 269
    iget-object v0, p0, Lkx;->e:Lkt;

    invoke-virtual {v0, p1}, Lkt;->a(Lhs;)V

    .line 271
    :cond_6e
    return-void

    :cond_6f
    move-object v0, v1

    goto :goto_57
.end method

.method public final a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p2}, Lez;->d()V

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lkx;->b(Ljava/lang/Object;Lez;Lhs;)V

    .line 132
    invoke-virtual {p2}, Lez;->e()V

    .line 133
    return-void
.end method

.method public final a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p4, p1, p2}, Lhu;->b(Ljava/lang/Object;Lez;)V

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lkx;->b(Ljava/lang/Object;Lez;Lhs;)V

    .line 142
    invoke-virtual {p4, p2}, Lhu;->b(Lez;)V

    .line 143
    return-void
.end method

.method public final a(Lkt;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lkx;->e:Lkt;

    .line 113
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanSerializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkx;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
