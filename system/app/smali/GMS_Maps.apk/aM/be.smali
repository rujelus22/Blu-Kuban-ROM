.class LaM/be;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ai;

.field final synthetic b:LaM/bd;


# direct methods
.method constructor <init>(LaM/bd;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, LaM/be;->b:LaM/bd;

    iput-object p3, p0, LaM/be;->a:Lcom/google/googlenav/ai;

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    .line 121
    invoke-virtual {p0}, LaM/be;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040121

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 122
    const v0, 0x7f1000bb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, LaM/be;->a:Lcom/google/googlenav/ai;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, LaM/aR;->a(Lcom/google/googlenav/ai;ZZ)Ljava/util/Vector;

    move-result-object v1

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 131
    const/16 v1, 0x313

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_31
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 142
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-object v2

    .line 133
    :cond_3d
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/aW;

    .line 134
    iget-object v5, v1, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-boolean v1, v1, Lcom/google/googlenav/ui/aW;->d:Z

    if-eqz v1, :cond_41

    .line 136
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    const/16 v0, 0x1ef

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
