.class final LaY/Q;
.super Ljava/lang/Object;

# interfaces
.implements LaY/ak;


# instance fields
.field final synthetic a:LaY/K;

.field private final b:LaX/h;


# direct methods
.method public constructor <init>(LaY/K;LaX/h;)V
    .registers 3

    iput-object p1, p0, LaY/Q;->a:LaY/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LaY/Q;->b:LaX/h;

    return-void
.end method

.method static synthetic a(LaY/Q;)LaX/h;
    .registers 2

    iget-object v0, p0, LaY/Q;->b:LaX/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, LaY/Q;->a:LaY/K;

    invoke-static {v1}, LaY/K;->d(LaY/K;)Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, LaY/R;

    invoke-direct {v2, p0}, LaY/R;-><init>(LaY/Q;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
