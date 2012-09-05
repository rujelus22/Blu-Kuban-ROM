.class Lcom/google/googlenav/ui/wizard/fK;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/Z;

.field private final b:LaS/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/Z;LaS/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fK;->a:Lcom/google/googlenav/ui/view/android/Z;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fK;->b:LaS/e;

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fK;->a:Lcom/google/googlenav/ui/view/android/Z;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fK;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/Z;->onContentChanged()V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fK;->b:LaS/e;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fK;->b:LaS/e;

    invoke-virtual {v0}, LaS/e;->onContentChanged()V

    :cond_12
    return-void
.end method
