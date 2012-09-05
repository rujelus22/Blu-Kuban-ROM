.class LaZ/g;
.super Ljava/lang/Object;

# interfaces
.implements Lau/e;


# instance fields
.field final synthetic a:LaZ/f;


# direct methods
.method constructor <init>(LaZ/f;)V
    .registers 2

    iput-object p1, p0, LaZ/g;->a:LaZ/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, LaZ/g;->a:LaZ/f;

    iget-object v0, v0, LaZ/f;->d:LaZ/j;

    iget-object v1, p0, LaZ/g;->a:LaZ/f;

    iget-object v1, v1, LaZ/f;->e:Lt/L;

    invoke-virtual {v0, v1}, LaZ/j;->a(Lt/L;)V

    return-void
.end method
