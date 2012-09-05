.class abstract Lcom/google/android/maps/driveabout/app/aF;
.super Ljava/lang/Object;


# instance fields
.field b:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public a(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aF;->b:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
