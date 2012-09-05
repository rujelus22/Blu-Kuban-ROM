.class public Lcom/google/googlenav/ui/view/android/cm;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/google/googlenav/suggest/android/SuggestView;

.field private c:Lcom/google/googlenav/ui/view/android/cp;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;Lcom/google/googlenav/ui/view/android/cp;)V
    .registers 8

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/suggest/android/SuggestView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/co;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/view/android/co;-><init>(Lcom/google/googlenav/ui/view/android/cm;Lcom/google/googlenav/ui/view/android/cn;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/cn;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/cn;-><init>(Lcom/google/googlenav/ui/view/android/cm;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/cm;->c:Lcom/google/googlenav/ui/view/android/cp;

    return-void
.end method

.method private a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/co;
    .registers 3

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/co;

    return-object v0
.end method

.method private a(Lau/x;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/google/googlenav/ui/bg;->aC:Lcom/google/googlenav/ui/bg;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/cm;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/cm;->b()V

    return-void
.end method

.method private b()V
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cm;->a:Z

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->c:Lcom/google/googlenav/ui/view/android/cp;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/android/cp;->a(Lcom/google/googlenav/ui/view/android/cm;)Lau/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/cm;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v1, v2, v2, v3}, Las/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cm;->c:Lcom/google/googlenav/ui/view/android/cp;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v0, 0x0

    :goto_2e
    invoke-interface {v1, p0, v0}, Lcom/google/googlenav/ui/view/android/cp;->a(Lcom/google/googlenav/ui/view/android/cm;Lau/x;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->c:Lcom/google/googlenav/ui/view/android/cp;

    invoke-interface {v0, p0}, Lcom/google/googlenav/ui/view/android/cp;->a(Lcom/google/googlenav/ui/view/android/cm;)Lau/x;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/googlenav/ui/view/android/cm;->a(ZLau/x;)V

    goto :goto_6

    :cond_3b
    invoke-static {v0}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v0

    goto :goto_2e
.end method


# virtual methods
.method a()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V

    return-void
.end method

.method public a(Landroid/view/View$OnKeyListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public a(ZLau/x;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/cm;->a:Z

    if-nez p2, :cond_20

    :try_start_6
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/cm;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/co;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/co;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_45

    :cond_1d
    :goto_1d
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/cm;->a:Z

    return-void

    :cond_20
    :try_start_20
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/cm;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {p2}, Lau/x;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Z)V

    invoke-virtual {p2}, Lau/x;->o()Z

    move-result v1

    if-eqz v1, :cond_6b

    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/cm;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/co;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/co;->a(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/cm;->a(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_45

    goto :goto_1d

    :catchall_45
    move-exception v0

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/cm;->a:Z

    throw v0

    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/cm;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/co;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/cm;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/co;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/co;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aC:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/text/Editable;Lcom/google/googlenav/ui/bg;)V

    goto :goto_1d

    :cond_6b
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/cm;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/co;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/co;->a(Z)V

    sget-object v1, Lcom/google/googlenav/ui/bg;->aD:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/cm;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V
    :try_end_90
    .catchall {:try_start_49 .. :try_end_90} :catchall_45

    goto :goto_1d
.end method
