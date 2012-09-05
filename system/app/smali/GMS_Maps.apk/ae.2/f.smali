.class Lae/f;
.super Lap/d;


# instance fields
.field final synthetic a:Lae/e;


# direct methods
.method constructor <init>(Lae/e;Lap/c;)V
    .registers 3

    iput-object p1, p0, Lae/f;->a:Lae/e;

    invoke-direct {p0, p2}, Lap/d;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, Lae/f;->a:Lae/e;

    invoke-static {v1}, Lae/e;->a(Lae/e;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lae/d;->a(Lat/h;Ljava/lang/String;Z)V

    return-void
.end method
