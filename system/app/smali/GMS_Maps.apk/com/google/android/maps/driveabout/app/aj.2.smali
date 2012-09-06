.class abstract Lcom/google/android/maps/driveabout/app/aJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput p1, p0, Lcom/google/android/maps/driveabout/app/aJ;->b:I

    .line 484
    return-void
.end method


# virtual methods
.method protected abstract a(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 491
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aJ;->b:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
