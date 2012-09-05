.class Lx/h;
.super Ljava/lang/Object;

# interfaces
.implements Lx/at;


# instance fields
.field final a:Lcom/google/android/maps/driveabout/vector/cU;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/h;->a:Lcom/google/android/maps/driveabout/vector/cU;

    return-void
.end method


# virtual methods
.method public a(Lt/af;[BIJJ)Lt/ae;
    .registers 10

    new-instance v0, Lz/b;

    invoke-direct {v0, p2}, Lz/b;-><init>([B)V

    invoke-virtual {v0, p3}, Lz/b;->skipBytes(I)I

    iget-object v1, p0, Lx/h;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {p1, v0, v1}, Lt/p;->a(Lt/af;Ljava/io/DataInput;Lcom/google/android/maps/driveabout/vector/cU;)Lt/p;

    move-result-object v0

    return-object v0
.end method
