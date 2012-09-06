.class Lj/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/maps/driveabout/vector/aV;

.field public b:I

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/aV;IIJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p1, p0, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    .line 723
    iput p2, p0, Lj/b;->b:I

    .line 724
    iput p3, p0, Lj/b;->c:I

    .line 725
    iput-wide p4, p0, Lj/b;->d:J

    .line 726
    return-void
.end method

.method public constructor <init>(Lj/b;)V
    .registers 4
    .parameter

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iget-object v0, p1, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    iput-object v0, p0, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    .line 730
    iget v0, p1, Lj/b;->b:I

    iput v0, p0, Lj/b;->b:I

    .line 731
    iget v0, p1, Lj/b;->c:I

    iput v0, p0, Lj/b;->c:I

    .line 732
    iget-wide v0, p1, Lj/b;->d:J

    iput-wide v0, p0, Lj/b;->d:J

    .line 733
    return-void
.end method
