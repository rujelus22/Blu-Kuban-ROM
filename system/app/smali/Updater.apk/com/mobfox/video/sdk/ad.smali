.class final Lcom/mobfox/video/sdk/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/z;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/z;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/ad;->a:Lcom/mobfox/video/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/ad;->a:Lcom/mobfox/video/sdk/z;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->a()V

    return-void
.end method
