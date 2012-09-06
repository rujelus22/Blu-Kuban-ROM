.class LaQ/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:I

.field final synthetic c:[Lcom/google/googlenav/aw;

.field final synthetic d:LaQ/aE;


# direct methods
.method constructor <init>(LaQ/aE;Lcom/google/googlenav/ui/g;I[Lcom/google/googlenav/aw;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, LaQ/aJ;->d:LaQ/aE;

    iput-object p2, p0, LaQ/aJ;->a:Lcom/google/googlenav/ui/g;

    iput p3, p0, LaQ/aJ;->b:I

    iput-object p4, p0, LaQ/aJ;->c:[Lcom/google/googlenav/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 1167
    iget-object v0, p0, LaQ/aJ;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x90a

    iget v2, p0, LaQ/aJ;->b:I

    iget-object v3, p0, LaQ/aJ;->c:[Lcom/google/googlenav/aw;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 1169
    return-void
.end method
