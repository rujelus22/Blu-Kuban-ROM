.class Lcom/google/android/apps/analytics/B;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;JII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/analytics/B;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/analytics/B;->b:J

    iput p4, p0, Lcom/google/android/apps/analytics/B;->c:I

    iput p5, p0, Lcom/google/android/apps/analytics/B;->d:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/B;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/B;->b:J

    return-wide v0
.end method

.method c()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/B;->c:I

    return v0
.end method

.method d()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/B;->d:I

    return v0
.end method
