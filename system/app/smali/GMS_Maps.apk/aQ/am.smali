.class LaQ/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:LaQ/al;


# direct methods
.method constructor <init>(LaQ/al;Lcom/google/googlenav/ui/g;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, LaQ/am;->c:LaQ/al;

    iput-object p2, p0, LaQ/am;->a:Lcom/google/googlenav/ui/g;

    iput-object p3, p0, LaQ/am;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, LaQ/am;->a:Lcom/google/googlenav/ui/g;

    const/4 v1, 0x5

    const/4 v2, -0x1

    iget-object v3, p0, LaQ/am;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 122
    return-void
.end method
