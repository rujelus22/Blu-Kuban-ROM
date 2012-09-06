.class public Lcom/google/googlenav/ui/view/android/bI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bE;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/view/android/bE;)V
    .registers 2
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ui/view/android/bE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1127
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 1128
    if-nez v0, :cond_f

    .line 1145
    :goto_e
    return-void

    .line 1132
    :cond_f
    invoke-interface {v0}, LaQ/H;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_4c

    goto :goto_e

    .line 1139
    :sswitch_17
    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    .line 1140
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->d()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 1142
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ui/view/android/bE;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, LaM/m;->a(IILjava/lang/Object;)Z

    goto :goto_e

    .line 1134
    :sswitch_31
    check-cast v0, LaQ/bx;

    .line 1135
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ui/view/android/bE;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/bE;->d:LaM/m;

    invoke-virtual {v0}, LaQ/bx;->d()Lcom/google/googlenav/ui/bd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bd;->f()I

    move-result v2

    invoke-virtual {v0}, LaQ/bx;->d()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bd;->j()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    goto :goto_e

    .line 1132
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_17
        0x10 -> :sswitch_31
    .end sparse-switch
.end method
