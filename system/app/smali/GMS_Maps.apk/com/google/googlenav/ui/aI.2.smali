.class Lcom/google/googlenav/ui/aI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/googlenav/ui/aH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aH;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/aI;->c:Lcom/google/googlenav/ui/aH;

    iput p2, p0, Lcom/google/googlenav/ui/aI;->a:I

    iput p3, p0, Lcom/google/googlenav/ui/aI;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/aI;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/aI;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/googlenav/ui/aI;->a:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/aI;->c:Lcom/google/googlenav/ui/aH;

    iget-object v1, v1, Lcom/google/googlenav/ui/aH;->b:Lcom/google/googlenav/ui/aG;

    invoke-static {v1}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(II)V

    return-void
.end method
