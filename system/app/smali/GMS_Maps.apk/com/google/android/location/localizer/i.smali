.class Lcom/google/android/location/localizer/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/location/localizer/e;


# direct methods
.method private constructor <init>(Lcom/google/android/location/localizer/e;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/localizer/e;Lcom/google/android/location/localizer/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/i;-><init>(Lcom/google/android/location/localizer/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/location/localizer/h;Lcom/google/android/location/localizer/h;)I
    .registers 5

    invoke-virtual {p2}, Lcom/google/android/location/localizer/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/location/localizer/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/location/localizer/h;

    check-cast p2, Lcom/google/android/location/localizer/h;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/i;->a(Lcom/google/android/location/localizer/h;Lcom/google/android/location/localizer/h;)I

    move-result v0

    return v0
.end method
