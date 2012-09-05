.class LaS/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaS/e;


# direct methods
.method constructor <init>(LaS/e;)V
    .registers 2

    iput-object p1, p0, LaS/g;->a:LaS/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, LaS/g;->a:LaS/e;

    invoke-static {v0}, LaS/e;->b(LaS/e;)V

    return-void
.end method
