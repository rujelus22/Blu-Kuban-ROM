.class final Lcom/google/googlenav/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/G;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/G;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/view/G;

    iput p2, p0, Lcom/google/googlenav/ui/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/view/G;

    iget-object v1, v0, Lcom/google/googlenav/ui/view/G;->e:[I

    iget v2, p0, Lcom/google/googlenav/ui/l;->b:I

    if-eqz p2, :cond_c

    const/4 v0, 0x1

    :goto_9
    aput v0, v1, v2

    .line 427
    return-void

    .line 426
    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method
