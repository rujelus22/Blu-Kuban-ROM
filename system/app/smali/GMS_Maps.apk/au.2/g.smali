.class Lau/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lau/f;


# direct methods
.method constructor <init>(Lau/f;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lau/g;->b:Lau/f;

    iput-object p2, p0, Lau/g;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lau/g;->b:Lau/f;

    iget-object v0, v0, Lau/f;->a:Lau/e;

    invoke-static {v0}, Lau/e;->a(Lau/e;)Lau/a;

    move-result-object v0

    iget-object v1, p0, Lau/g;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lau/a;->a(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lau/g;->b:Lau/f;

    iget-object v0, v0, Lau/f;->a:Lau/e;

    invoke-static {v0}, Lau/e;->b(Lau/e;)V

    .line 114
    iget-object v0, p0, Lau/g;->b:Lau/f;

    iget-object v0, v0, Lau/f;->a:Lau/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lau/e;->a(Lau/e;Lau/i;)Lau/i;

    .line 115
    return-void
.end method
