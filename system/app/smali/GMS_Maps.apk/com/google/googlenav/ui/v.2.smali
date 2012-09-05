.class final Lcom/google/googlenav/ui/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lbb/l;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lbb/l;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/v;->a:Lbb/l;

    iput p2, p0, Lcom/google/googlenav/ui/v;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->a:Lbb/l;

    iget-object v1, v0, Lbb/l;->n:[I

    iget v2, p0, Lcom/google/googlenav/ui/v;->b:I

    if-eqz p2, :cond_c

    const/4 v0, 0x1

    :goto_9
    aput v0, v1, v2

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method
