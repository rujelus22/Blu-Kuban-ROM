.class Lcom/google/googlenav/suggest/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/b;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/c;->a:Lcom/google/googlenav/suggest/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/c;->a:Lcom/google/googlenav/suggest/android/b;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/b;->requery()Z

    return-void
.end method
