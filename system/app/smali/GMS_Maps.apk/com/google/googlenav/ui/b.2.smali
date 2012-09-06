.class Lcom/google/googlenav/ui/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/f;


# instance fields
.field final synthetic a:LaM/X;

.field final synthetic b:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;LaM/X;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3481
    iput-object p1, p0, Lcom/google/googlenav/ui/B;->b:Lcom/google/googlenav/ui/v;

    iput-object p2, p0, Lcom/google/googlenav/ui/B;->a:LaM/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/F;)V
    .registers 4
    .parameter

    .prologue
    .line 3485
    if-eqz p1, :cond_a

    .line 3487
    iget-object v0, p0, Lcom/google/googlenav/ui/B;->a:LaM/X;

    const/4 v1, 0x1

    check-cast p1, Lcom/google/googlenav/aW;

    invoke-virtual {v0, v1, p1}, LaM/X;->a(ZLcom/google/googlenav/aW;)V

    .line 3489
    :cond_a
    return-void
.end method
