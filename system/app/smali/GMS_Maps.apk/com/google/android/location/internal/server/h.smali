.class final Lcom/google/android/location/internal/server/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/f;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/server/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/location/internal/server/h;->a:Lcom/google/android/location/internal/server/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/server/f;Lcom/google/android/location/internal/server/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/location/internal/server/h;-><init>(Lcom/google/android/location/internal/server/f;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/internal/server/h;->a:Lcom/google/android/location/internal/server/f;

    invoke-static {v0}, Lcom/google/android/location/internal/server/f;->a(Lcom/google/android/location/internal/server/f;)V

    return-void
.end method
