.class LaI/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/V;


# instance fields
.field final synthetic a:LaI/e;

.field final synthetic b:LaI/a;


# direct methods
.method constructor <init>(LaI/a;LaI/e;)V
    .registers 3

    iput-object p1, p0, LaI/b;->b:LaI/a;

    iput-object p2, p0, LaI/b;->a:LaI/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, LaI/b;->a:LaI/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaI/b;->a:LaI/e;

    invoke-interface {v0}, LaI/e;->a()V

    :cond_9
    return-void
.end method

.method public ab_()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method
