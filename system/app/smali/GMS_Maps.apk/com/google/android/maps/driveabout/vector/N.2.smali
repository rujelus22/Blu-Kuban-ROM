.class Lcom/google/android/maps/driveabout/vector/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 1939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1936
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/N;->a:Ljava/util/LinkedList;

    .line 1940
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/N;->b:I

    .line 1941
    new-instance v0, Lcom/google/android/maps/driveabout/vector/M;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/M;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/M;->a()Lcom/google/android/maps/driveabout/vector/M;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/N;->a(Lcom/google/android/maps/driveabout/vector/M;)V

    .line 1942
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/M;
    .registers 2

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/N;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/M;

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/M;)V
    .registers 3
    .parameter

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/N;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1946
    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/M;
    .registers 2

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/N;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/M;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 1957
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/N;->b:I

    return v0
.end method
