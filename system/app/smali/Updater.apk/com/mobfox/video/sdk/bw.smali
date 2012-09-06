.class final Lcom/mobfox/video/sdk/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bv;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bv;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/mobfox/video/sdk/bw;->a:Lcom/mobfox/video/sdk/bv;

    iput-object p2, p0, Lcom/mobfox/video/sdk/bw;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/bw;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
