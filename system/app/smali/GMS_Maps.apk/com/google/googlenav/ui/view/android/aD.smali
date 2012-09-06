.class public Lcom/google/googlenav/ui/view/android/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/ac;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/view/android/ac;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/ac;

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
    .line 289
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/ac;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/ac;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 290
    if-nez v0, :cond_d

    .line 302
    :goto_c
    return-void

    .line 294
    :cond_d
    invoke-interface {v0}, LaQ/H;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_30

    goto :goto_c

    .line 296
    :pswitch_15
    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    .line 297
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->d()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/ac;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, LaM/C;->a(IILjava/lang/Object;)Z

    goto :goto_c

    .line 294
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method
