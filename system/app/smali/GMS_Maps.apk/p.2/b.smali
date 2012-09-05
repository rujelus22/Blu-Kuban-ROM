.class Lp/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/android/maps/driveabout/vector/aU;

.field public b:I

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/aU;IIJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iput p2, p0, Lp/b;->b:I

    iput p3, p0, Lp/b;->c:I

    iput-wide p4, p0, Lp/b;->d:J

    return-void
.end method

.method public constructor <init>(Lp/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iput-object v0, p0, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget v0, p1, Lp/b;->b:I

    iput v0, p0, Lp/b;->b:I

    iget v0, p1, Lp/b;->c:I

    iput v0, p0, Lp/b;->c:I

    iget-wide v0, p1, Lp/b;->d:J

    iput-wide v0, p0, Lp/b;->d:J

    return-void
.end method
