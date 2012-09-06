.class LaQ/aY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:LaQ/aX;


# direct methods
.method constructor <init>(LaQ/aX;Lcom/google/googlenav/ui/g;ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, LaQ/aY;->d:LaQ/aX;

    iput-object p2, p0, LaQ/aY;->a:Lcom/google/googlenav/ui/g;

    iput p3, p0, LaQ/aY;->b:I

    iput-object p4, p0, LaQ/aY;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, LaQ/aY;->a:Lcom/google/googlenav/ui/g;

    iget v1, p0, LaQ/aY;->b:I

    const/4 v2, -0x1

    iget-object v3, p0, LaQ/aY;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 292
    return-void
.end method
