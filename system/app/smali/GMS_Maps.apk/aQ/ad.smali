.class LaQ/ad;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ck;

.field final synthetic b:LaQ/ab;


# direct methods
.method constructor <init>(LaQ/ab;Lcom/google/googlenav/ck;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, LaQ/ad;->b:LaQ/ab;

    iput-object p2, p0, LaQ/ad;->a:Lcom/google/googlenav/ck;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, LaQ/ad;->b:LaQ/ab;

    invoke-static {v0}, LaQ/ab;->a(LaQ/ab;)LaQ/af;

    move-result-object v0

    iget-object v1, p0, LaQ/ad;->a:Lcom/google/googlenav/ck;

    invoke-interface {v0, v1}, LaQ/af;->a(Lcom/google/googlenav/ck;)V

    .line 163
    return-void
.end method
