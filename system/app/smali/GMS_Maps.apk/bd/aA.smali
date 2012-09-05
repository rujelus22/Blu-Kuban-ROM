.class Lbd/aA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbd/az;


# direct methods
.method constructor <init>(Lbd/az;)V
    .registers 2

    iput-object p1, p0, Lbd/aA;->a:Lbd/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lbd/aA;->a:Lbd/az;

    invoke-virtual {v0}, Lbd/az;->n()V

    return-void
.end method
