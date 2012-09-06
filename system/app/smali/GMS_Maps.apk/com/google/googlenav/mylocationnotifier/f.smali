.class Lcom/google/googlenav/mylocationnotifier/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/mylocationnotifier/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/d;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/d;->l()V

    .line 307
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/d;->b(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    invoke-interface {v0}, LaQ/H;->b()I

    move-result v1

    .line 308
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    const/4 v0, 0x0

    .line 316
    packed-switch v1, :pswitch_data_180

    .line 391
    :goto_27
    if-eqz v0, :cond_36

    .line 392
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;Z)Z

    .line 393
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/d;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/k;->d()V

    .line 395
    :cond_36
    return-void

    .line 318
    :pswitch_37
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/d;->b:Lcom/google/googlenav/mylocationnotifier/k;

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v2}, Lcom/google/googlenav/mylocationnotifier/d;->c(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/mylocationnotifier/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/mylocationnotifier/a;)V

    .line 319
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/d;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v1}, Lcom/google/googlenav/mylocationnotifier/k;->e()V

    .line 320
    const/16 v1, 0x76

    const-string v2, "c"

    invoke-static {v1, v2, v8}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 329
    :pswitch_53
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v2}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;I)V

    goto :goto_27

    .line 335
    :pswitch_62
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/d;->d(Lcom/google/googlenav/mylocationnotifier/d;)Z

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->aX()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_93

    .line 338
    new-instance v1, Lcom/google/googlenav/ui/view/android/bu;

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v2, v2, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/bu;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ai;)V

    .line 340
    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bu;->show()V

    .line 346
    :goto_8b
    const/16 v1, 0x76

    const-string v2, "f"

    invoke-static {v1, v2, v8}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 343
    :cond_93
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->F()Lcom/google/googlenav/ui/wizard/fn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v2}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/fn;->a(Lcom/google/googlenav/ai;ILaM/m;)V

    goto :goto_8b

    .line 351
    :pswitch_af
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/d;->d(Lcom/google/googlenav/mylocationnotifier/d;)Z

    move-result v7

    .line 352
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v5

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->l()Lcom/google/googlenav/L;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v2}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lat/B;->c()I

    move-result v4

    const v6, 0xf4240

    div-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lat/B;->e()I

    move-result v5

    const v6, 0xf4240

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v6}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/android/R;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/16 v0, 0x76

    const-string v1, "k"

    invoke-static {v0, v1, v8}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 362
    goto/16 :goto_27

    .line 364
    :pswitch_10b
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/d;->d(Lcom/google/googlenav/mylocationnotifier/d;)Z

    move-result v0

    .line 365
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->br()Ljava/lang/String;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_13a

    .line 367
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v2}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->bs()Z

    move-result v2

    if-eqz v2, :cond_143

    .line 369
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v2, v2, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    iget-object v3, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->bt()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;I)V

    .line 374
    :cond_13a
    :goto_13a
    const/16 v1, 0x76

    const-string v2, "w"

    invoke-static {v1, v2, v8}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 371
    :cond_143
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v2, v2, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    iget-object v3, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lat/B;)V

    goto :goto_13a

    .line 379
    :pswitch_155
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/d;->d(Lcom/google/googlenav/mylocationnotifier/d;)Z

    move-result v0

    .line 380
    const/4 v1, 0x0

    .line 383
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v2, v2, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v3}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/mylocationnotifier/f;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v4, v4, Lcom/google/googlenav/mylocationnotifier/d;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v4

    const-string v5, "ns"

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V

    .line 386
    const/16 v1, 0x76

    const-string v2, "v"

    invoke-static {v1, v2, v8}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 316
    :pswitch_data_180
    .packed-switch 0x2
        :pswitch_53
        :pswitch_af
        :pswitch_155
        :pswitch_10b
        :pswitch_62
        :pswitch_37
    .end packed-switch
.end method
