.class Lcom/google/googlenav/ui/wizard/fi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fh;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fh;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fi;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fi;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/fh;->a(I)V

    .line 42
    const/16 v0, 0x58

    const-string v1, "set"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "c=e"

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fi;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fh;->a()V

    .line 47
    return-void
.end method
