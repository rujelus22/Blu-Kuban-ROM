.class LaQ/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/google/googlenav/ui/g;

.field b:Ljava/lang/String;

.field final synthetic c:LaQ/P;


# direct methods
.method public constructor <init>(LaQ/P;Lcom/google/googlenav/ui/g;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, LaQ/R;->c:LaQ/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, LaQ/R;->a:Lcom/google/googlenav/ui/g;

    .line 274
    iput-object p3, p0, LaQ/R;->b:Ljava/lang/String;

    .line 275
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, LaQ/R;->b:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 280
    iget-object v0, p0, LaQ/R;->c:LaQ/P;

    iget-object v0, v0, LaQ/P;->d:LaM/i;

    if-eqz v0, :cond_16

    .line 281
    iget-object v0, p0, LaQ/R;->c:LaQ/P;

    iget-object v0, v0, LaQ/P;->d:LaM/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/i;->j(Z)V

    .line 284
    :cond_16
    iget-object v0, p0, LaQ/R;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x11

    const/16 v2, 0x28

    iget-object v3, p0, LaQ/R;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 287
    const/16 v0, 0x54

    const-string v1, "ac"

    const-string v2, "hh"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_2a
    return-void
.end method
