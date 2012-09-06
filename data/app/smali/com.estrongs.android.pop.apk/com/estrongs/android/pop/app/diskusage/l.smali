.class Lcom/estrongs/android/pop/app/diskusage/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return v3

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x7f020083

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget v2, v2, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V

    :goto_32
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    :cond_6c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget v2, v2, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V

    goto :goto_32

    :cond_76
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    :cond_83
    const/4 v2, 0x2

    if-ne v0, v2, :cond_fb

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->i(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I

    move-result v0

    if-ge v0, v1, :cond_9

    :cond_96
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->j(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->i(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I

    move-result v2

    sub-int v1, v2, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget v1, v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    if-le v0, v1, :cond_f0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget v0, v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d:I

    :cond_af
    :goto_af
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I

    move-result v1

    if-eq v1, v0, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    :cond_e6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->i(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)I

    move-result v0

    if-gt v0, v1, :cond_96

    goto/16 :goto_9

    :cond_f0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget v1, v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    if-ge v0, v1, :cond_af

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget v0, v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c:I

    goto :goto_af

    :cond_fb
    if-eq v0, v3, :cond_100

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    :cond_100
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->k(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    goto/16 :goto_9
.end method
