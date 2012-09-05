.class Lcom/google/android/location/localizer/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/util/LinkedList;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/localizer/r;->c:I

    iput p1, p0, Lcom/google/android/location/localizer/r;->a:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/localizer/r;->b:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/localizer/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/localizer/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/location/localizer/r;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/location/localizer/r;->c:I

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/localizer/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/location/localizer/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-nez v0, :cond_19

    iget v0, p0, Lcom/google/android/location/localizer/r;->c:I

    iget v1, p0, Lcom/google/android/location/localizer/r;->a:I

    if-ge v0, v1, :cond_1a

    iget v0, p0, Lcom/google/android/location/localizer/r;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/r;->c:I

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/android/location/localizer/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_19
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lcom/google/android/location/localizer/r;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
