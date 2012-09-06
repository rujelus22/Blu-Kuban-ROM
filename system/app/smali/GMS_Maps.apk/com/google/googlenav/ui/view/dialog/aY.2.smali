.class public Lcom/google/googlenav/ui/view/dialog/aY;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/dialog/bd;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/ui/view/dialog/bc;

.field private final e:Lcom/google/googlenav/friend/ah;

.field private final m:Lah/s;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/bd;ILjava/lang/String;Lcom/google/googlenav/ui/view/dialog/bc;Lcom/google/googlenav/friend/ah;Lah/s;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 87
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aY;->a:Lcom/google/googlenav/ui/view/dialog/bd;

    .line 88
    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/aY;->b:I

    .line 89
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/aY;->c:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/aY;->d:Lcom/google/googlenav/ui/view/dialog/bc;

    .line 91
    iput-object p5, p0, Lcom/google/googlenav/ui/view/dialog/aY;->e:Lcom/google/googlenav/friend/ah;

    .line 92
    iput-object p6, p0, Lcom/google/googlenav/ui/view/dialog/aY;->m:Lah/s;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aY;)Lah/s;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aY;->m:Lah/s;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/aY;)Lcom/google/googlenav/ui/view/dialog/bc;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aY;->d:Lcom/google/googlenav/ui/view/dialog/bc;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aY;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/aY;->b:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 181
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aY;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 182
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aY;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fb

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 104
    const v0, 0x7f100039

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    if-eqz v0, :cond_f7

    .line 106
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aY;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aY;->e:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 112
    const v0, 0x7f100090

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aY;->e:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/ah;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aY;->e:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ah;->f()Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aY;->m:Lah/s;

    if-eqz v0, :cond_6b

    if-eqz v1, :cond_6b

    .line 117
    const v0, 0x7f1001b6

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    new-instance v2, Lcom/google/googlenav/ui/bx;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/bn;->e(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 120
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aZ;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/aZ;-><init>(Lcom/google/googlenav/ui/view/dialog/aY;Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aY;->m:Lah/s;

    invoke-virtual {v0, v2}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 130
    invoke-interface {v1}, Lah/p;->P_()V

    .line 140
    :cond_6b
    :goto_6b
    const v0, 0x7f1001f7

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aY;->a:Lcom/google/googlenav/ui/view/dialog/bd;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/bd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v0, 0x7f100091

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aY;->a:Lcom/google/googlenav/ui/view/dialog/bd;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/bd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v0, 0x7f100240

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 147
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aY;->c:Ljava/lang/String;

    if-eqz v1, :cond_115

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><meta name=\"viewport\" content=\"target-densitydpi=medium-dpi, user-scalable=no, initial-scale=1.0\" /></head><body style=\"padding: 0px; margin:0px;\"><img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aY;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" style=\"float:right;padding-left: 1em;padding-bottom: 1em;vertical-align:text-top\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aY;->a:Lcom/google/googlenav/ui/view/dialog/bd;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/dialog/bd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    :goto_c7
    const-string v1, "file:///android_res/drawable/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const v0, 0x7f1002d1

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aY;->a:Lcom/google/googlenav/ui/view/dialog/bd;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/bd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ba;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/ba;-><init>(Lcom/google/googlenav/ui/view/dialog/aY;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bb;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/bb;-><init>(Lcom/google/googlenav/ui/view/dialog/aY;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aY;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 175
    return-object v6

    .line 108
    :cond_f7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aY;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aY;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e

    .line 133
    :cond_100
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aY;->m:Lah/s;

    invoke-virtual {v0, v2, v1}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Lah/p;)V

    goto/16 :goto_6b

    .line 137
    :cond_107
    const v0, 0x7f1002d2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6b

    .line 151
    :cond_115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><meta name=\"viewport\" content=\"target-densitydpi=medium-dpi, user-scalable=no, initial-scale=1.0\" /></head><body style=\"padding: 0px; margin:0px;\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aY;->a:Lcom/google/googlenav/ui/view/dialog/bd;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/dialog/bd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c7
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aY;->a:Lcom/google/googlenav/ui/view/dialog/bd;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bd;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
