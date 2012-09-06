.class public Lcom/google/android/apps/analytics/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/apps/analytics/b;


# instance fields
.field private b:I

.field private c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/apps/analytics/b;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/b;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/b;->c:Ljava/util/Random;

    return-void
.end method

.method public static a()Lcom/google/android/apps/analytics/b;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/b;->a:Lcom/google/android/apps/analytics/b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/b;->c:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/b;->b:I

    iget v0, p0, Lcom/google/android/apps/analytics/b;->b:I

    return v0
.end method
