.class final Lcom/mobfox/video/sdk/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bq;

.field private final synthetic b:Lcom/mobfox/video/sdk/bt;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bq;Lcom/mobfox/video/sdk/bt;I)V
    .registers 4

    iput-object p1, p0, Lcom/mobfox/video/sdk/br;->a:Lcom/mobfox/video/sdk/bq;

    iput-object p2, p0, Lcom/mobfox/video/sdk/br;->b:Lcom/mobfox/video/sdk/bt;

    iput p3, p0, Lcom/mobfox/video/sdk/br;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/br;->b:Lcom/mobfox/video/sdk/bt;

    iget v1, p0, Lcom/mobfox/video/sdk/br;->c:I

    invoke-interface {v0, v1}, Lcom/mobfox/video/sdk/bt;->a(I)V

    return-void
.end method
