.class public Lcom/estrongs/android/pop/view/e;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static f:F

.field private static i:I


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/Button;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;

.field private g:Lcom/estrongs/android/pop/view/h;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/estrongs/android/pop/view/e;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/view/h;IF)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/estrongs/android/pop/view/e;->g:Lcom/estrongs/android/pop/view/h;

    iput p3, p0, Lcom/estrongs/android/pop/view/e;->h:I

    sput p4, Lcom/estrongs/android/pop/view/e;->f:F

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/e;)Lcom/estrongs/android/pop/view/h;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->g:Lcom/estrongs/android/pop/view/h;

    return-object v0
.end method

.method static synthetic a(I)V
    .registers 1

    sput p0, Lcom/estrongs/android/pop/view/e;->i:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    const v2, -0xcccccd

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070074

    if-eq v0, v1, :cond_15

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B:Z

    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    :goto_1c
    return-void

    :pswitch_1d
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/e;->dismiss()V

    goto :goto_1c

    :pswitch_21
    sput v4, Lcom/estrongs/android/pop/view/e;->i:I

    iput v4, p0, Lcom/estrongs/android/pop/view/e;->h:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->g:Lcom/estrongs/android/pop/view/h;

    sget v1, Lcom/estrongs/android/pop/view/e;->i:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/view/h;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/e;->dismiss()V

    goto :goto_1c

    :pswitch_30
    sput v3, Lcom/estrongs/android/pop/view/e;->i:I

    iput v3, p0, Lcom/estrongs/android/pop/view/e;->h:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->g:Lcom/estrongs/android/pop/view/h;

    sget v1, Lcom/estrongs/android/pop/view/e;->i:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/view/h;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/e;->dismiss()V

    goto :goto_1c

    :pswitch_3f
    sput v2, Lcom/estrongs/android/pop/view/e;->i:I

    iput v2, p0, Lcom/estrongs/android/pop/view/e;->h:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->g:Lcom/estrongs/android/pop/view/h;

    sget v1, Lcom/estrongs/android/pop/view/e;->i:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/view/h;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/e;->dismiss()V

    goto :goto_1c

    :pswitch_4e
    sget v0, Lcom/estrongs/android/pop/view/e;->i:I

    iput v0, p0, Lcom/estrongs/android/pop/view/e;->h:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->g:Lcom/estrongs/android/pop/view/h;

    sget v1, Lcom/estrongs/android/pop/view/e;->i:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/view/h;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/e;->dismiss()V

    goto :goto_1c

    nop

    :pswitch_data_5e
    .packed-switch 0x7f070070
        :pswitch_3f
        :pswitch_21
        :pswitch_30
        :pswitch_4e
        :pswitch_1d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 7

    const/4 v5, 0x5

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    new-instance v1, Lcom/estrongs/android/pop/view/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/f;-><init>(Lcom/estrongs/android/pop/view/e;)V

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/e;->setContentView(I)V

    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/e;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/e;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/e;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/e;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/e;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/e;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090104

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/e;->setTitle(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/estrongs/android/pop/view/g;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/e;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/estrongs/android/pop/view/e;->h:I

    invoke-direct {v2, v3, v1, v4}, Lcom/estrongs/android/pop/view/g;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/view/h;I)V

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/view/e;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v5, [I

    fill-array-data v0, :array_8c

    new-array v1, v5, [I

    fill-array-data v1, :array_9a

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-static {v2, p0, v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Landroid/app/Activity;Landroid/app/Dialog;[I[I)V

    return-void

    :array_8c
    .array-data 0x4
        0x70t 0x0t 0x7t 0x7ft
        0x71t 0x0t 0x7t 0x7ft
        0x72t 0x0t 0x7t 0x7ft
        0x73t 0x0t 0x7t 0x7ft
        0x74t 0x0t 0x7t 0x7ft
    .end array-data

    :array_9a
    .array-data 0x4
        0x5t 0x1t 0x9t 0x7ft
        0x5ft 0x1t 0x9t 0x7ft
        0x37t 0x2t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method
