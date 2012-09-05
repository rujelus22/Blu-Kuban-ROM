.class Lcom/google/android/location/localizer/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/location/localizer/x;


# direct methods
.method private constructor <init>(Lcom/google/android/location/localizer/x;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/location/localizer/z;->a:Lcom/google/android/location/localizer/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/localizer/x;Lcom/google/android/location/localizer/y;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/z;-><init>(Lcom/google/android/location/localizer/x;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/location/localizer/A;Lcom/google/android/location/localizer/A;)I
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/location/localizer/A;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/location/localizer/A;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/location/localizer/A;

    check-cast p2, Lcom/google/android/location/localizer/A;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/z;->a(Lcom/google/android/location/localizer/A;Lcom/google/android/location/localizer/A;)I

    move-result v0

    return v0
.end method
