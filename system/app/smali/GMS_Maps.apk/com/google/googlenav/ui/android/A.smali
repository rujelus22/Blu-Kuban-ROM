.class public Lcom/google/googlenav/ui/android/a;
.super Lcom/google/googlenav/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 5
    .parameter

    .prologue
    .line 30
    const/16 v0, 0x46

    const-string v1, "e"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/a;->c()V

    .line 33
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 37
    const/16 v0, 0x46

    const-string v1, "c"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/a;->c()V

    .line 40
    return-void
.end method
