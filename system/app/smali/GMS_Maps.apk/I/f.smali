.class public LI/f;
.super Ljava/lang/Object;

# interfaces
.implements Lat/p;


# instance fields
.field private final a:Lat/h;

.field private final b:LI/e;

.field private final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lat/h;LI/e;Ljava/lang/Class;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/f;->a:Lat/h;

    iput-object p2, p0, LI/f;->b:LI/e;

    iput-object p3, p0, LI/f;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    if-eqz p2, :cond_17

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_d

    iget-object v0, p0, LI/f;->a:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->b(Lat/p;)V

    :cond_d
    iget-object v0, p0, LI/f;->b:LI/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, LI/f;->b:LI/e;

    invoke-interface {v0}, LI/e;->b()V

    :cond_16
    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(Lat/g;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LI/f;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, LI/f;->a:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->b(Lat/p;)V

    :cond_11
    return-void
.end method

.method public b(Lat/g;)V
    .registers 2

    return-void
.end method
