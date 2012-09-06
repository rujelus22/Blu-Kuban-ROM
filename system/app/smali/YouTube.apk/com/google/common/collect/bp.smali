.class final Lcom/google/common/collect/bp;
.super Lcom/google/common/collect/cb;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/common/collect/BstSide;

.field private transient c:Lcom/google/common/base/Optional;

.field private transient d:Lcom/google/common/base/Optional;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/google/common/collect/bp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/common/collect/bp;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bp;)V
    .registers 7
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/cb;-><init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/cb;)V

    .line 64
    iput-object p2, p0, Lcom/google/common/collect/bp;->b:Lcom/google/common/collect/BstSide;

    .line 65
    sget-boolean v2, Lcom/google/common/collect/bp;->a:Z

    if-nez v2, :cond_1c

    if-nez p2, :cond_18

    move v2, v0

    :goto_e
    if-nez p3, :cond_1a

    :goto_10
    if-eq v2, v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    move v2, v1

    goto :goto_e

    :cond_1a
    move v0, v1

    goto :goto_10

    .line 66
    :cond_1c
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bp;B)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v0}, Lcom/google/common/collect/bp;-><init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bp;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bp;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/google/common/collect/bp;->b(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bp;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/google/common/collect/cc;
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/common/collect/bq;

    invoke-direct {v0}, Lcom/google/common/collect/bq;-><init>()V

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bp;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->b()Lcom/google/common/collect/bw;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/google/common/collect/bp;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bw;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-direct {v1, v0, p1, p0}, Lcom/google/common/collect/bp;-><init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bp;)V

    return-object v1
.end method

.method private c(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .registers 5
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->b()Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bw;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 70
    invoke-static {p0, p1}, Lcom/google/common/collect/bp;->b(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bp;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    .line 72
    :goto_12
    invoke-virtual {v0}, Lcom/google/common/collect/bp;->b()Lcom/google/common/collect/bw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/collect/bw;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 73
    invoke-static {v0, v1}, Lcom/google/common/collect/bp;->b(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bp;

    move-result-object v0

    goto :goto_12

    .line 75
    :cond_21
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 82
    :goto_25
    return-object v0

    .line 78
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/common/collect/bp;->b:Lcom/google/common/collect/BstSide;

    if-ne v0, p1, :cond_32

    .line 79
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->d()Lcom/google/common/collect/cb;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bp;

    move-object p0, v0

    goto :goto_26

    .line 81
    :cond_32
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->c()Lcom/google/common/collect/cb;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bp;

    .line 82
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_25
.end method

.method private d(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .registers 4
    .parameter

    .prologue
    .line 88
    sget-object v0, Lcom/google/common/collect/br;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 96
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :pswitch_11
    iget-object v0, p0, Lcom/google/common/collect/bp;->c:Lcom/google/common/base/Optional;

    .line 91
    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/common/collect/bp;->c(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bp;->c:Lcom/google/common/base/Optional;

    .line 94
    :cond_1b
    :goto_1b
    return-object v0

    .line 93
    :pswitch_1c
    iget-object v0, p0, Lcom/google/common/collect/bp;->d:Lcom/google/common/base/Optional;

    .line 94
    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/common/collect/bp;->c(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bp;->d:Lcom/google/common/base/Optional;

    goto :goto_1b

    .line 88
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/BstSide;)Z
    .registers 3
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/common/collect/bp;->d(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bp;
    .registers 3
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bp;->a(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 114
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 116
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/common/collect/bp;->d(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bp;

    return-object v0
.end method
