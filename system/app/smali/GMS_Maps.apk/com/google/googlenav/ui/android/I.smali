.class Lcom/google/googlenav/ui/android/I;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/u;


# direct methods
.method constructor <init>(Lt/u;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/android/I;->a:Lt/u;

    return-void
.end method


# virtual methods
.method public a()Lt/u;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/I;->a:Lt/u;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/I;->a:Lt/u;

    if-nez v0, :cond_7

    const-string v0, "1"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/android/I;->a:Lt/u;

    invoke-virtual {v0}, Lt/u;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
