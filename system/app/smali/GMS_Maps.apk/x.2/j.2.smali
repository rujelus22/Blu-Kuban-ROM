.class Lx/j;
.super Ljava/lang/Object;

# interfaces
.implements Lx/at;


# instance fields
.field final a:Lcom/google/android/maps/driveabout/vector/cU;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/j;->a:Lcom/google/android/maps/driveabout/vector/cU;

    return-void
.end method


# virtual methods
.method public a(Lt/af;[BIJJ)Lt/ae;
    .registers 16

    iget-object v3, p0, Lx/j;->a:Lcom/google/android/maps/driveabout/vector/cU;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lt/ao;->a(Lt/af;[BILcom/google/android/maps/driveabout/vector/cU;JJ)Lt/ao;

    move-result-object v0

    return-object v0
.end method
