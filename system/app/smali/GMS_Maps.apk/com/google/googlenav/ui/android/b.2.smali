.class public Lcom/google/googlenav/ui/android/b;
.super Lcom/google/googlenav/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    const/16 v0, 0x46

    const-string v1, "e"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/b;->b()V

    return-void
.end method

.method public c()V
    .registers 3

    const/16 v0, 0x46

    const-string v1, "c"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/b;->b()V

    return-void
.end method
