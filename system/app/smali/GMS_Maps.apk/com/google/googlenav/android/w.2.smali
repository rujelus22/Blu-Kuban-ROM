.class Lcom/google/googlenav/android/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/v;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/v;

    iget-object v0, v0, Lcom/google/googlenav/android/v;->b:Lcom/google/googlenav/android/l;

    const-string v1, "ParameterManager"

    invoke-static {v0, v1}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/android/l;Ljava/lang/String;)V

    return-void
.end method
