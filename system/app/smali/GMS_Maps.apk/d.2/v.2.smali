.class Ld/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/t;


# direct methods
.method constructor <init>(Ld/t;)V
    .registers 2

    iput-object p1, p0, Ld/v;->a:Ld/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Ld/v;->a:Ld/t;

    invoke-virtual {v0}, Ld/t;->f()Ld/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld/y;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ld/v;->a:Ld/t;

    invoke-virtual {v0}, Ld/t;->h()V

    iget-object v0, p0, Ld/v;->a:Ld/t;

    iget-object v1, p0, Ld/v;->a:Ld/t;

    invoke-static {v1}, Ld/t;->a(Ld/t;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Ld/t;->a(Ld/t;Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Ld/v;->a:Ld/t;

    invoke-virtual {v0}, Ld/t;->f()Ld/y;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Ld/y;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
