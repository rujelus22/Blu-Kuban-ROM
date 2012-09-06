.class LaQ/aU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:I

.field final b:I

.field final synthetic c:LaQ/aR;


# direct methods
.method constructor <init>(LaQ/aR;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, LaQ/aU;->c:LaQ/aR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p2, p0, LaQ/aU;->a:I

    .line 266
    iput p3, p0, LaQ/aU;->b:I

    .line 267
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, LaQ/aU;->c:LaQ/aR;

    invoke-static {v0}, LaQ/aR;->a(LaQ/aR;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    iget v1, p0, LaQ/aU;->a:I

    iget v2, p0, LaQ/aU;->b:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 272
    return-void
.end method
