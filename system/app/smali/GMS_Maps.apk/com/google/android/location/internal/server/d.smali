.class Lcom/google/android/location/internal/server/d;
.super Ljava/lang/Object;

# interfaces
.implements Li/z;


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/NetworkLocationService;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/NetworkLocationService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/location/internal/server/d;->a:Lcom/google/android/location/internal/server/NetworkLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-static {}, Lcom/google/android/location/os/real/K;->y()J

    move-result-wide v0

    return-wide v0
.end method
