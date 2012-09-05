.class LaY/bo;
.super Lbf/g;


# instance fields
.field final synthetic a:LaY/bn;


# direct methods
.method constructor <init>(LaY/bn;Lap/c;Lcom/google/googlenav/android/ac;Z)V
    .registers 5

    iput-object p1, p0, LaY/bo;->a:LaY/bn;

    invoke-direct {p0, p2, p3, p4}, Lbf/g;-><init>(Lap/c;Lcom/google/googlenav/android/ac;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->e()V

    return-void
.end method
