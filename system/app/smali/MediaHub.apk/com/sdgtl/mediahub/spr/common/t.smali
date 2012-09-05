.class final Lcom/sdgtl/mediahub/spr/common/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/t;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/common/a;

    return-void
.end method
