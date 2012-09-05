.class public Lcom/google/googlenav/ui/view/android/h;
.super Lbb/e;


# static fields
.field private static final e:Ljava/lang/Object;

.field private static f:Z


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lbb/d;

.field private final c:Lcom/google/googlenav/ui/android/BaseAndroidView;

.field private final d:Lcom/google/googlenav/ui/android/ButtonContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/h;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/ui/view/android/h;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;Lcom/google/googlenav/ui/android/ButtonContainer;)V
    .registers 7

    invoke-direct {p0}, Lbb/e;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/google/googlenav/ui/view/android/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/g;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->b:Lbb/d;

    :goto_19
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    return-void

    :cond_1c
    new-instance v1, Lcom/google/googlenav/ui/view/android/T;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f002c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/T;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/android/AndroidBubbleView;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/h;->b:Lbb/d;

    goto :goto_19
.end method

.method public static a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .registers 1

    return-object p0
.end method

.method public static a(Lbb/c;)Lbb/c;
    .registers 1

    return-object p0
.end method

.method public static a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(I)I
    .registers 3

    packed-switch p1, :pswitch_data_1a

    const/4 v0, -0x1

    :goto_4
    return v0

    :pswitch_5
    const v0, 0x7f020079

    goto :goto_4

    :pswitch_9
    const v0, 0x7f02007d

    goto :goto_4

    :pswitch_d
    const v0, 0x7f02007b

    goto :goto_4

    :pswitch_11
    const v0, 0x7f020037

    goto :goto_4

    :pswitch_15
    const v0, 0x7f020039

    goto :goto_4

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method private b(Lbb/c;)Lbb/d;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/h;->b:Lbb/d;

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->b:Lbb/d;

    return-object v0
.end method


# virtual methods
.method public a(ILbb/c;Ljava/lang/String;)Lbb/d;
    .registers 15

    const/16 v1, 0x19c

    const/16 v0, 0xe2

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_1ce

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown touchscreen button type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    const v5, 0x7f0f003e

    const v1, 0x7f020084

    const/16 v0, 0x51b

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    :goto_31
    packed-switch p1, :pswitch_data_1fa

    :pswitch_34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    move-object v1, v0

    :goto_37
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_175

    const/4 v0, 0x0

    :goto_3e
    return-object v0

    :pswitch_3f
    const v5, 0x7f0f003d

    const v1, 0x7f020080

    const/16 v0, 0x51c

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto :goto_31

    :pswitch_4d
    const v5, 0x7f0f0039

    const v1, 0x7f020070

    const/16 v0, 0x322

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto :goto_31

    :pswitch_5b
    const v5, 0x7f0f003b

    const v1, 0x7f020066

    const/16 v0, 0x286

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto :goto_31

    :pswitch_69
    const v5, 0x7f0f0042

    const v1, 0x7f020029

    const/16 v0, 0x55

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto :goto_31

    :pswitch_77
    const v5, 0x7f0f0040

    const v1, 0x7f020056

    const/16 v0, 0x25e

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto :goto_31

    :pswitch_85
    const v5, 0x7f0f0041

    const v1, 0x7f020057

    const/16 v0, 0x25f

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto :goto_31

    :pswitch_93
    const v1, 0x7f0f01b4

    const/16 v0, 0x40c

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    goto :goto_31

    :pswitch_9e
    const v1, 0x7f0f017a

    const/16 v0, 0x1d2

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    goto :goto_31

    :pswitch_a9
    const v1, 0x7f0f01b5

    const/16 v0, 0x2d8

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    goto/16 :goto_31

    :pswitch_b5
    const v1, 0x7f0f01b7

    const/16 v0, 0x20b

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    goto/16 :goto_31

    :pswitch_c1
    const v1, 0x7f0f01b8

    const/16 v0, 0x26e

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    goto/16 :goto_31

    :pswitch_cd
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/M;->ak()Z

    move-result v5

    if-eqz v5, :cond_106

    const v7, 0x7f0f0271

    packed-switch p1, :pswitch_data_21a

    const v0, 0x7f020046

    move v1, v0

    move v0, v2

    :goto_e2
    const v6, 0x7f0f0272

    const v5, 0x7f0f0270

    move v8, v1

    move v9, v7

    move v7, v6

    move v6, v5

    move v5, v0

    goto/16 :goto_31

    :pswitch_ef
    const v1, 0x7f020052

    const/16 v0, 0x410

    goto :goto_e2

    :pswitch_f5
    const v1, 0x7f020049

    goto :goto_e2

    :pswitch_f9
    const v0, 0x7f02004e

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_e2

    :pswitch_100
    const v0, 0x7f020054

    move v1, v0

    move v0, v2

    goto :goto_e2

    :cond_106
    const v5, 0x7f0f0038

    packed-switch p1, :pswitch_data_226

    const v1, 0x7f020046

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v2

    goto/16 :goto_31

    :pswitch_116
    const v1, 0x7f020050

    const/16 v0, 0x410

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto/16 :goto_31

    :pswitch_122
    const v1, 0x7f020047

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto/16 :goto_31

    :pswitch_12c
    const v0, 0x7f02004c

    move v6, v2

    move v7, v2

    move v8, v0

    move v9, v5

    move v5, v1

    goto/16 :goto_31

    :pswitch_136
    const v5, 0x7f0f0043

    const v1, 0x7f02007b

    const/16 v0, 0x26e

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto/16 :goto_31

    :pswitch_145
    const v5, 0x7f0f003a

    const v1, 0x7f02006d

    const/16 v0, 0x28a

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    goto/16 :goto_31

    :pswitch_154
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_37

    :pswitch_15d
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_170

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_37

    :cond_170
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    move-object v1, v0

    goto/16 :goto_37

    :cond_175
    if-eq v8, v2, :cond_17a

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_17a
    if-eq v7, v2, :cond_185

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_185
    if-eq v5, v2, :cond_18e

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_18e
    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/h;->a(Lbb/c;)Lbb/c;

    move-result-object v0

    if-ne v6, v2, :cond_1ac

    new-instance v2, Lcom/google/googlenav/ui/view/android/ao;

    invoke-direct {v2, v9, v0}, Lcom/google/googlenav/ui/view/android/ao;-><init>(Landroid/view/View;Lbb/c;)V

    :goto_199
    if-ne p1, v4, :cond_1bb

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-eqz v0, :cond_1b9

    move v0, v3

    :goto_1a6
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a9
    :goto_1a9
    move-object v0, v2

    goto/16 :goto_3e

    :cond_1ac
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v2, Lcom/google/googlenav/ui/view/android/ao;

    invoke-direct {v2, v5, v0}, Lcom/google/googlenav/ui/view/android/ao;-><init>(Landroid/view/View;Lbb/c;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_199

    :cond_1b9
    move v0, v4

    goto :goto_1a6

    :cond_1bb
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1a9

    const v0, 0x7f0f01b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a9

    nop

    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_24
        :pswitch_3f
        :pswitch_4d
        :pswitch_5b
        :pswitch_cd
        :pswitch_136
        :pswitch_69
        :pswitch_9e
        :pswitch_77
        :pswitch_85
        :pswitch_93
        :pswitch_a9
        :pswitch_b5
        :pswitch_c1
        :pswitch_cd
        :pswitch_cd
        :pswitch_cd
        :pswitch_cd
        :pswitch_136
        :pswitch_145
    .end packed-switch

    :pswitch_data_1fa
    .packed-switch 0x5
        :pswitch_15d
        :pswitch_34
        :pswitch_34
        :pswitch_154
        :pswitch_34
        :pswitch_34
        :pswitch_154
        :pswitch_154
        :pswitch_154
        :pswitch_154
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0xf
        :pswitch_ef
        :pswitch_f5
        :pswitch_f9
        :pswitch_100
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0xf
        :pswitch_116
        :pswitch_122
        :pswitch_12c
    .end packed-switch
.end method

.method public a(Lau/b;Lcom/google/googlenav/ui/p;Z)Lbb/d;
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/view/android/C;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/C;-><init>(Landroid/view/ViewGroup;Lau/b;Lcom/google/googlenav/ui/p;Z)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;
    .registers 11

    const v6, 0x7f0f0027

    const v5, 0x7f0f001f

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget v1, p1, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v4, 0x12

    if-eq v1, v4, :cond_14

    iget v1, p1, Lcom/google/googlenav/ui/bl;->r:I

    if-ne v1, v0, :cond_69

    :cond_14
    :goto_14
    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    :goto_27
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->L:Ljava/lang/Object;

    sget-object v4, Lcom/google/googlenav/ui/bl;->g:Ljava/lang/Object;

    if-ne v1, v4, :cond_81

    if-eqz p3, :cond_7d

    const v1, 0x7f0202b2

    :goto_35
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    :goto_38
    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f0021

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f0022

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f0020

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/TemplateView;->e()Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v2

    :goto_61
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/h;->b(Lbb/c;)Lbb/d;

    move-result-object v0

    return-object v0

    :cond_69
    move v0, v3

    goto :goto_14

    :cond_6b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    goto :goto_27

    :cond_7d
    const v1, 0x7f0202be

    goto :goto_35

    :cond_81
    if-eqz p3, :cond_8a

    const v1, 0x7f0202aa

    :goto_86
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_38

    :cond_8a
    const v1, 0x7f0202b6

    goto :goto_86

    :cond_8e
    move v0, v3

    goto :goto_61
.end method

.method public a(Lcom/google/googlenav/ui/bl;Lbb/c;ZLaJ/B;)Lbb/d;
    .registers 8

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/h;->a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4, v2, v1, p2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(LaJ/B;Landroid/view/View;Lbb/d;Lbb/c;)V

    :cond_17
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;
    .registers 11

    const v5, 0x7f0f0020

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f001f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    if-eqz p4, :cond_63

    const v1, 0x7f0202b3

    :goto_19
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f0021

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    if-eqz p4, :cond_67

    const v2, 0x7f0202ab

    :goto_32
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f0027

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/h;->b(Lbb/c;)Lbb/d;

    move-result-object v0

    return-object v0

    :cond_63
    const v1, 0x7f0202bf

    goto :goto_19

    :cond_67
    const v2, 0x7f0202b7

    goto :goto_32
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/h;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    instance-of v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(II)V

    :cond_d
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bh;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f0f003c

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v1, LaB/g;->a:LaB/g;

    invoke-virtual {v1}, LaB/g;->e()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_28
    const/16 v1, 0x64

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_39
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v1, Lcom/google/googlenav/ui/bg;->bM:Lcom/google/googlenav/ui/bg;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    if-ne v1, v0, :cond_21

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    goto :goto_20

    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_20

    invoke-static {p1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method public b()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->i()V

    :cond_11
    return-void
.end method

.method public c()Lcom/google/googlenav/ui/android/ButtonContainer;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    return-object v0
.end method

.method public d()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f01b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    return-void
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f01b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1c

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public g()V
    .registers 4

    const v2, 0x7f02005c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f0f0043

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v1}, Lcom/google/googlenav/android/D;->k()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_20
    :goto_20
    return-void

    :pswitch_21
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_20

    :pswitch_25
    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_20

    :pswitch_2c
    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_20

    nop

    :pswitch_data_34
    .packed-switch 0x3
        :pswitch_21
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->b()V

    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/h;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a()V

    return-void
.end method
