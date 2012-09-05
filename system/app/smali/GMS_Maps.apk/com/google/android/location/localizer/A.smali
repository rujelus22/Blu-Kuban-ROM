.class Lcom/google/android/location/localizer/A;
.super Ljava/lang/Object;


# instance fields
.field private final a:Le/x;

.field private final b:Ljava/lang/Long;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;Le/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/localizer/A;->c:I

    iput-object p1, p0, Lcom/google/android/location/localizer/A;->b:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/location/localizer/A;->a:Le/x;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget v0, p0, Lcom/google/android/location/localizer/A;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/A;->c:I

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/location/localizer/A;->c:I

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/location/localizer/A;->c:I

    return v0
.end method

.method public c()Le/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/localizer/A;->a:Le/x;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/localizer/A;->b:Ljava/lang/Long;

    return-object v0
.end method
