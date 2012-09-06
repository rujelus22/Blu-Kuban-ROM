.class public Lcom/google/googlenav/ui/view/dialog/aT;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/dialog/aX;

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/aX;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 63
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aT;->a:Lcom/google/googlenav/ui/view/dialog/aX;

    .line 64
    iput-boolean p2, p0, Lcom/google/googlenav/ui/view/dialog/aT;->b:Z

    .line 65
    iput-boolean p3, p0, Lcom/google/googlenav/ui/view/dialog/aT;->c:Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aT;)Lcom/google/googlenav/ui/view/dialog/aX;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aT;->a:Lcom/google/googlenav/ui/view/dialog/aX;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<li><b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b><br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</li>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 4

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const-string v1, "<head><meta name=\"viewport\" content=\"target-densitydpi=medium-dpi, user-scalable=no, initial-scale=1.0\" /></head><body style=\"padding: 0px; margin:0px;\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/16 v1, 0x29c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "<ul>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v1, 0x225

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/aT;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/aT;->b:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/aT;->c:Z

    if-eqz v1, :cond_46

    .line 137
    :cond_33
    const/16 v1, 0x26f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29d

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/aT;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_46
    const-string v1, "</ul>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const/16 v1, 0x29b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "<p><p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const/16 v1, 0x29e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "</a><p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->U()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/16 v1, 0x2a0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "</a><p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aT;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020210

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 126
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aT;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 127
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aT;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fa

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 77
    const v0, 0x7f100039

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    if-eqz v0, :cond_78

    .line 79
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aT;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_1f
    const v0, 0x7f100191

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 85
    const-string v1, "file:///android_res/drawable/"

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aT;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const v0, 0x7f1002d1

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    const/16 v1, 0x29a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aU;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aU;-><init>(Lcom/google/googlenav/ui/view/dialog/aT;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f100169

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aV;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aV;-><init>(Lcom/google/googlenav/ui/view/dialog/aT;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aW;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/aW;-><init>(Lcom/google/googlenav/ui/view/dialog/aT;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aT;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 120
    return-object v6

    .line 81
    :cond_78
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aT;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aT;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const/16 v0, 0x56

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
