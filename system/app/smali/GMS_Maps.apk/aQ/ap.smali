.class LaQ/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:LaQ/ao;


# direct methods
.method constructor <init>(LaQ/ao;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, LaQ/ap;->b:LaQ/ao;

    iput-object p2, p0, LaQ/ap;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, LaQ/ap;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x90c

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 298
    return-void
.end method