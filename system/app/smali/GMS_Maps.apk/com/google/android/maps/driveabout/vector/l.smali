.class public abstract Lcom/google/android/maps/driveabout/vector/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/K;


# instance fields
.field protected volatile a:Lcom/google/android/maps/driveabout/vector/u;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Lcom/google/android/maps/driveabout/vector/u;

    return-void
.end method


# virtual methods
.method public b()V
    .registers 1

    return-void
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/u;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Lcom/google/android/maps/driveabout/vector/u;

    return-object v0
.end method
