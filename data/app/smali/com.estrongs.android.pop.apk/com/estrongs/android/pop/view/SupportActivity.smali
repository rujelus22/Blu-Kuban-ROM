.class public Lcom/estrongs/android/pop/view/SupportActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method private a()Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/view/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SupportActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/SupportActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/SupportActivity;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/16 v5, 0x1f

    const/16 v4, 0xf

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/16 v1, 0x400

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/SupportActivity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->H()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SupportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SupportActivity;->setTheme(I)V

    :goto_25
    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SupportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "which_help"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3f

    :goto_36
    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SupportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_25

    :cond_3f
    if-nez v0, :cond_85

    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SupportActivity;->setContentView(I)V

    new-array v0, v4, [I

    fill-array-data v0, :array_a2

    new-array v1, v4, [I

    fill-array-data v1, :array_c4

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/estrongs/android/pop/view/SupportActivity;->a(Landroid/app/Activity;Landroid/view/View;[I[I)V

    :cond_55
    :goto_55
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SupportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/SupportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/pop/view/mc;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/view/mc;-><init>(Lcom/estrongs/android/pop/view/SupportActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/estrongs/android/pop/view/md;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/md;-><init>(Lcom/estrongs/android/pop/view/SupportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v5, [I

    fill-array-data v0, :array_e6

    new-array v1, v5, [I

    fill-array-data v1, :array_128

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/SupportActivity;->a([I[I)V

    goto :goto_36

    :cond_85
    if-ne v0, v3, :cond_8e

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SupportActivity;->setContentView(I)V

    goto :goto_55

    :cond_8e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_98

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SupportActivity;->setContentView(I)V

    goto :goto_55

    :cond_98
    const/4 v1, 0x3

    if-ne v0, v1, :cond_55

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SupportActivity;->setContentView(I)V

    goto :goto_55

    nop

    :array_a2
    .array-data 0x4
        0x1et 0x2t 0x7t 0x7ft
        0x6t 0x0t 0x7t 0x7ft
        0x1ft 0x2t 0x7t 0x7ft
        0x20t 0x2t 0x7t 0x7ft
        0x21t 0x2t 0x7t 0x7ft
        0x22t 0x2t 0x7t 0x7ft
        0x23t 0x2t 0x7t 0x7ft
        0x24t 0x2t 0x7t 0x7ft
        0x25t 0x2t 0x7t 0x7ft
        0x26t 0x2t 0x7t 0x7ft
        0x27t 0x2t 0x7t 0x7ft
        0x28t 0x2t 0x7t 0x7ft
        0x29t 0x2t 0x7t 0x7ft
        0x2at 0x2t 0x7t 0x7ft
        0x2bt 0x2t 0x7t 0x7ft
    .end array-data

    :array_c4
    .array-data 0x4
        0x5dt 0x1t 0x9t 0x7ft
        0x98t 0x0t 0x9t 0x7ft
        0x3ft 0x1t 0x9t 0x7ft
        0x51t 0x1t 0x9t 0x7ft
        0x5bt 0x1t 0x9t 0x7ft
        0x40t 0x1t 0x9t 0x7ft
        0x57t 0x1t 0x9t 0x7ft
        0x41t 0x1t 0x9t 0x7ft
        0x42t 0x1t 0x9t 0x7ft
        0xbft 0x0t 0x9t 0x7ft
        0x93t 0x0t 0x9t 0x7ft
        0x5ct 0x1t 0x9t 0x7ft
        0x80t 0x1t 0x9t 0x7ft
        0x62t 0x1t 0x9t 0x7ft
        0x6dt 0x1t 0x9t 0x7ft
    .end array-data

    :array_e6
    .array-data 0x4
        0x4t 0x0t 0x7t 0x7ft
        0x6t 0x0t 0x7t 0x7ft
        0x7t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x7t 0x7ft
        0x9t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x7t 0x7ft
        0xbt 0x0t 0x7t 0x7ft
        0xct 0x0t 0x7t 0x7ft
        0xdt 0x0t 0x7t 0x7ft
        0xet 0x0t 0x7t 0x7ft
        0xft 0x0t 0x7t 0x7ft
        0x10t 0x0t 0x7t 0x7ft
        0x11t 0x0t 0x7t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
        0xft 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x7t 0x7ft
        0x17t 0x0t 0x7t 0x7ft
        0x19t 0x0t 0x7t 0x7ft
        0x1ct 0x0t 0x7t 0x7ft
        0x1dt 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x7t 0x7ft
        0x1ft 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
        0x21t 0x0t 0x7t 0x7ft
        0x22t 0x0t 0x7t 0x7ft
        0x23t 0x0t 0x7t 0x7ft
        0x24t 0x0t 0x7t 0x7ft
        0x25t 0x0t 0x7t 0x7ft
    .end array-data

    :array_128
    .array-data 0x4
        0x5dt 0x1t 0x9t 0x7ft
        0x98t 0x0t 0x9t 0x7ft
        0xa0t 0x1t 0x9t 0x7ft
        0x51t 0x1t 0x9t 0x7ft
        0x40t 0x1t 0x9t 0x7ft
        0x31t 0x2t 0x9t 0x7ft
        0x32t 0x2t 0x9t 0x7ft
        0xa2t 0x1t 0x9t 0x7ft
        0xa1t 0x1t 0x9t 0x7ft
        0xa3t 0x1t 0x9t 0x7ft
        0x5dt 0x1t 0x9t 0x7ft
        0x2ft 0x2t 0x9t 0x7ft
        0x33t 0x2t 0x9t 0x7ft
        0x34t 0x2t 0x9t 0x7ft
        0x40t 0x1t 0x9t 0x7ft
        0x96t 0x0t 0x9t 0x7ft
        0x98t 0x0t 0x9t 0x7ft
        0x66t 0x1t 0x9t 0x7ft
        0x67t 0x1t 0x9t 0x7ft
        0x68t 0x1t 0x9t 0x7ft
        0xcdt 0x2t 0x9t 0x7ft
        0xe3t 0x2t 0x9t 0x7ft
        0x6ct 0x0t 0x9t 0x7ft
        0x6bt 0x0t 0x9t 0x7ft
        0x5dt 0x1t 0x9t 0x7ft
        0x2ft 0x2t 0x9t 0x7ft
        0x51t 0x1t 0x9t 0x7ft
        0x54t 0x1t 0x9t 0x7ft
        0x40t 0x1t 0x9t 0x7ft
        0x30t 0x2t 0x9t 0x7ft
        0x98t 0x0t 0x9t 0x7ft
    .end array-data
.end method
