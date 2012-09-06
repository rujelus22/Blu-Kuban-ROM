.class Lcom/google/googlenav/friend/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/MenuItem;

.field final synthetic b:Lcom/google/googlenav/friend/t;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/t;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/googlenav/friend/u;->b:Lcom/google/googlenav/friend/t;

    iput-object p2, p0, Lcom/google/googlenav/friend/u;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/googlenav/friend/u;->a:Landroid/view/MenuItem;

    invoke-static {v0}, Lav/a;->a(Landroid/view/MenuItem;)V

    .line 244
    return-void
.end method
