.class final Lcom/google/android/youtube/app/ui/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ds;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/ds;)V
    .registers 2
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ds;->a(Lcom/google/android/youtube/app/ui/ds;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 463
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 464
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    .line 468
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ds;->b(Lcom/google/android/youtube/app/ui/ds;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dm;->e(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->f(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/ds;->b(Lcom/google/android/youtube/app/ui/ds;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    const-string v4, ""

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    iget-object v5, v5, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v5, v5, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    invoke-static {v5, v6}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 472
    return-void
.end method
