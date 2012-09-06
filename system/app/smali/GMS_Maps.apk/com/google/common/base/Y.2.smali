.class public final Lcom/google/common/base/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/b;

.field private final b:Z

.field private final c:Lcom/google/common/base/ag;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/base/ag;)V
    .registers 5
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/base/b;->o:Lcom/google/common/base/b;

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/base/Y;-><init>(Lcom/google/common/base/ag;ZLcom/google/common/base/b;I)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/ag;ZLcom/google/common/base/b;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/common/base/Y;->c:Lcom/google/common/base/ag;

    .line 107
    iput-boolean p2, p0, Lcom/google/common/base/Y;->b:Z

    .line 108
    iput-object p3, p0, Lcom/google/common/base/Y;->a:Lcom/google/common/base/b;

    .line 109
    iput p4, p0, Lcom/google/common/base/Y;->d:I

    .line 110
    return-void
.end method

.method public static a(C)Lcom/google/common/base/Y;
    .registers 2
    .parameter

    .prologue
    .line 121
    invoke-static {p0}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Y;->a(Lcom/google/common/base/b;)Lcom/google/common/base/Y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/common/base/b;)Lcom/google/common/base/Y;
    .registers 3
    .parameter

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/google/common/base/Y;

    new-instance v1, Lcom/google/common/base/Z;

    invoke-direct {v1, p0}, Lcom/google/common/base/Z;-><init>(Lcom/google/common/base/b;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Y;-><init>(Lcom/google/common/base/ag;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/base/Y;)Lcom/google/common/base/ag;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/base/Y;->c:Lcom/google/common/base/ag;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/base/Y;)Lcom/google/common/base/b;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/base/Y;->a:Lcom/google/common/base/b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/base/Y;)Z
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/common/base/Y;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/google/common/base/Y;)I
    .registers 2
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/google/common/base/Y;->d:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .registers 3
    .parameter

    .prologue
    .line 364
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v0, Lcom/google/common/base/ab;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/ab;-><init>(Lcom/google/common/base/Y;Ljava/lang/CharSequence;)V

    return-object v0
.end method
