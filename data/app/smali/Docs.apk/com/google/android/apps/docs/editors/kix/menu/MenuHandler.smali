.class public Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;
.super Landroid/support/v4/app/Fragment;
.source "MenuHandler.java"

# interfaces
.implements LxW;


# static fields
.field private static a:I


# instance fields
.field private a:J

.field private final a:Landroid/os/Handler;

.field public final a:Landroid/view/View$OnClickListener;

.field protected a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "LAt;",
            "Landroid/widget/ToggleButton;",
            ">;"
        }
    .end annotation
.end field

.field private a:LuP;

.field private final a:LuX;

.field private a:LuZ;

.field public a:LyC;

.field protected a:Z

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ToggleButton;",
            "LAt;",
            ">;"
        }
    .end annotation
.end field

.field private b:LuZ;

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/16 v0, 0x12c

    sput v0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/os/Handler;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Z

    .line 139
    new-instance v0, LAd;

    invoke-direct {v0, p0}, LAd;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, LAl;

    invoke-direct {v0, p0}, LAl;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuX;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Ljava/util/Map;

    return-void
.end method

.method private a()J
    .registers 3

    .prologue
    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private a()LAV;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v1

    .line 405
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v2, v0, v1}, LyC;->a(II)LAV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuP;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuP;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;LuP;)LuP;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuP;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    return-object v0
.end method

.method private a(J)V
    .registers 5
    .parameter

    .prologue
    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Z

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/os/Handler;

    new-instance v1, LAs;

    invoke-direct {v1, p0}, LAs;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void
.end method

.method private a(LAt;)V
    .registers 4
    .parameter

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c:Z

    if-eqz v0, :cond_5

    .line 327
    :goto_4
    return-void

    .line 310
    :cond_5
    sget-object v0, LAk;->a:[I

    invoke-virtual {p1}, LAt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 326
    :goto_10
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->u()V

    goto :goto_4

    .line 312
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->d()V

    goto :goto_10

    .line 315
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->e()V

    goto :goto_10

    .line 318
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->f()V

    goto :goto_10

    .line 321
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->g()V

    goto :goto_10

    .line 324
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->h()V

    goto :goto_10

    .line 310
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1a
        :pswitch_20
        :pswitch_26
        :pswitch_2c
    .end packed-switch
.end method

.method private a(LAt;LAV;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 498
    if-eqz p2, :cond_c

    if-nez v0, :cond_d

    .line 504
    :cond_c
    :goto_c
    return-void

    .line 502
    :cond_d
    invoke-virtual {p1, p2}, LAt;->a(LAV;)Z

    move-result v1

    .line 503
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_c
.end method

.method private a(LAt;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    invoke-static {p1}, LAt;->a(LAt;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 442
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, LAt;->b(LAt;)I

    move-result v2

    sget v3, Lum;->toolbar_regular_background:I

    sget v4, Lum;->toolbar_selected_background:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, LFh;->a(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    if-eqz p2, :cond_2c

    .line 446
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_2c
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    return-void
.end method

.method private a(Landroid/widget/ToggleButton;)V
    .registers 6
    .parameter

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->v()V

    .line 619
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    if-nez v1, :cond_4b

    .line 621
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->h()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 622
    new-instance v1, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;

    invoke-direct {v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;-><init>()V

    .line 623
    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    const-string v2, "ColorPopup"

    invoke-virtual {v0, v1, v2}, LH;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 624
    iput-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    .line 631
    :goto_29
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/os/Handler;

    new-instance v1, LAf;

    invoke-direct {v1, p0, p1}, LAf;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    :goto_33
    return-void

    .line 626
    :cond_34
    new-instance v1, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;

    invoke-direct {v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;-><init>()V

    .line 627
    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    sget v2, Lup;->phone_color_popup_holder:I

    const-string v3, "ColorPopup"

    invoke-virtual {v0, v2, v1, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 629
    iput-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    goto :goto_29

    .line 640
    :cond_4b
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c(Landroid/widget/ToggleButton;)V

    goto :goto_33
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->w()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c(I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Landroid/widget/ToggleButton;)V

    return-void
.end method

.method private a(LuZ;)V
    .registers 3
    .parameter

    .prologue
    .line 743
    if-eqz p1, :cond_b

    invoke-interface {p1}, LuZ;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 744
    invoke-interface {p1}, LuZ;->p()V

    .line 746
    :cond_b
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)Z
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->h()Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    return-object v0
.end method

.method private b(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lum;->toolbar_regular_background:I

    sget v2, Lum;->toolbar_selected_background:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, LFh;->a(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    return-void
.end method

.method private b(Landroid/widget/ToggleButton;)V
    .registers 6
    .parameter

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->v()V

    .line 646
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    if-nez v1, :cond_4b

    .line 648
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->h()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 649
    new-instance v1, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-direct {v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;-><init>()V

    .line 650
    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    const-string v2, "AlignmentPopup"

    invoke-virtual {v0, v1, v2}, LH;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 651
    iput-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    .line 658
    :goto_29
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/os/Handler;

    new-instance v1, LAg;

    invoke-direct {v1, p0, p1}, LAg;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    :goto_33
    return-void

    .line 653
    :cond_34
    new-instance v1, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-direct {v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;-><init>()V

    .line 654
    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    sget v2, Lup;->phone_alignment_popup_holder:I

    const-string v3, "AlignmentPopup"

    invoke-virtual {v0, v2, v1, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 656
    iput-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    goto :goto_29

    .line 665
    :cond_4b
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d(Landroid/widget/ToggleButton;)V

    goto :goto_33
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->x()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(Landroid/widget/ToggleButton;)V

    return-void
.end method

.method private c(I)V
    .registers 8
    .parameter

    .prologue
    .line 758
    packed-switch p1, :pswitch_data_34

    .line 771
    sget v0, Luo;->action_text_align_left:I

    move v1, v0

    .line 774
    :goto_6
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 775
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    sget v2, Lup;->toolbar_alignment_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 776
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lum;->toolbar_regular_background:I

    sget v4, Lum;->toolbar_selected_background:I

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, LFh;->a(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 778
    if-eqz v0, :cond_26

    .line 779
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    :cond_26
    return-void

    .line 760
    :pswitch_27
    sget v0, Luo;->action_text_align_center:I

    move v1, v0

    .line 761
    goto :goto_6

    .line 763
    :pswitch_2b
    sget v0, Luo;->action_text_align_right:I

    move v1, v0

    .line 764
    goto :goto_6

    .line 766
    :pswitch_2f
    sget v0, Luo;->action_text_align_justified:I

    move v1, v0

    .line 767
    goto :goto_6

    .line 758
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method private c(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAt;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;)V

    .line 304
    return-void
.end method

.method private c(Landroid/widget/ToggleButton;)V
    .registers 5
    .parameter

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->a()LAV;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuP;

    sget-object v0, LAW;->d:LAW;

    invoke-virtual {v1, v0}, LAV;->a(LAW;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, LuP;->b(Ljava/lang/String;)V

    .line 683
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuP;

    sget-object v0, LAW;->e:LAW;

    invoke-virtual {v1, v0}, LAV;->a(LAW;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, LuP;->a(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuP;

    new-instance v1, LAh;

    invoke-direct {v1, p0}, LAh;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    invoke-virtual {v0, v1}, LuP;->a(LuT;)V

    .line 698
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    new-instance v1, LAi;

    invoke-direct {v1, p0, p1}, LAi;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V

    invoke-interface {v0, v1}, LuZ;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 704
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    invoke-interface {v0, p1}, LuZ;->b(Landroid/view/View;)V

    .line 705
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    invoke-interface {v0}, LuZ;->a()V

    .line 706
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 707
    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->t()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c(Landroid/widget/ToggleButton;)V

    return-void
.end method

.method private d(Landroid/widget/ToggleButton;)V
    .registers 5
    .parameter

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()LAV;

    move-result-object v0

    .line 711
    sget-object v1, LAW;->g:LAW;

    invoke-virtual {v0, v1}, LAV;->a(LAW;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 712
    if-nez v0, :cond_3e

    const/4 v0, -0x1

    move v1, v0

    .line 713
    :goto_10
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->h()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 714
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    check-cast v0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    .line 715
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->b(I)V

    .line 716
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuX;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(LuX;)V

    .line 722
    :goto_22
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c(I)V

    .line 723
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    new-instance v1, LAj;

    invoke-direct {v1, p0, p1}, LAj;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V

    invoke-interface {v0, v1}, LuZ;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 729
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    invoke-interface {v0, p1}, LuZ;->b(Landroid/view/View;)V

    .line 730
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    invoke-interface {v0}, LuZ;->a()V

    .line 731
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 732
    return-void

    .line 712
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_10

    .line 718
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    check-cast v0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    .line 719
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->c(I)V

    .line 720
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuX;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(LuX;)V

    goto :goto_22
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->u()V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d(Landroid/widget/ToggleButton;)V

    return-void
.end method

.method private h()Z
    .registers 2

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->c(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private t()V
    .registers 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Z

    if-nez v0, :cond_d

    .line 382
    :cond_c
    :goto_c
    return-void

    .line 370
    :cond_d
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:J

    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 371
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    .line 374
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(J)V

    goto :goto_c

    .line 378
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Z

    .line 381
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->u()V

    goto :goto_c
.end method

.method private u()V
    .registers 4

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->a()LAV;

    move-result-object v1

    .line 420
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAV;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    invoke-interface {v0}, LuZ;->g()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 422
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuP;

    sget-object v0, LAW;->d:LAW;

    invoke-virtual {v1, v0}, LAV;->a(LAW;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, LuP;->b(Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuP;

    sget-object v0, LAW;->e:LAW;

    invoke-virtual {v1, v0}, LAV;->a(LAW;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, LuP;->a(Ljava/lang/String;)V

    .line 425
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()LAV;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_5d

    .line 427
    sget-object v1, LAW;->g:LAW;

    invoke-virtual {v0, v1}, LAV;->a(LAW;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 428
    if-nez v0, :cond_5e

    const/4 v0, -0x1

    move v1, v0

    .line 429
    :goto_41
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c(I)V

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    invoke-interface {v0}, LuZ;->g()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 431
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->h()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    check-cast v0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->b(I)V

    .line 438
    :cond_5d
    :goto_5d
    return-void

    .line 428
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_41

    .line 434
    :cond_64
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    check-cast v0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->c(I)V

    goto :goto_5d
.end method

.method private v()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    invoke-interface {v0}, LuZ;->g()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 671
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    invoke-interface {v0}, LuZ;->p()V

    .line 672
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    sget v1, Lup;->toolbar_alignment_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 674
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    invoke-interface {v0}, LuZ;->g()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 675
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    invoke-interface {v0}, LuZ;->p()V

    .line 676
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    sget v1, Lup;->toolbar_color_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 678
    :cond_3d
    return-void
.end method

.method private w()V
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->b()V

    .line 790
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->u()V

    .line 791
    return-void
.end method

.method private x()V
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    invoke-interface {v0}, LyC;->c()V

    .line 795
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->u()V

    .line 796
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    sget v0, Luq;->legacy_toolbar:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 530
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(Landroid/view/View;)V

    .line 531
    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->k()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    .line 599
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setCursorVisible(Z)V

    .line 600
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->q()V

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(I)V

    .line 603
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->r()V

    .line 604
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 342
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()V

    .line 343
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->q()V

    .line 345
    :cond_16
    return-void
.end method

.method protected a(LAV;)V
    .registers 4
    .parameter

    .prologue
    .line 409
    sget-object v0, LAt;->a:LAt;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;LAV;)V

    .line 410
    sget-object v0, LAt;->b:LAt;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;LAV;)V

    .line 411
    sget-object v0, LAt;->c:LAt;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;LAV;)V

    .line 413
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()LAV;

    move-result-object v0

    .line 414
    sget-object v1, LAt;->d:LAt;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;LAV;)V

    .line 415
    sget-object v1, LAt;->e:LAt;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;LAV;)V

    .line 416
    return-void
.end method

.method public a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V
    .registers 3
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    .line 201
    new-instance v0, LAm;

    invoke-direct {v0, p0}, LAm;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxx;)V

    .line 208
    new-instance v0, LAn;

    invoke-direct {v0, p0}, LAn;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxu;)V

    .line 217
    new-instance v0, LAo;

    invoke-direct {v0, p0}, LAo;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxz;)V

    .line 228
    new-instance v0, LAp;

    invoke-direct {v0, p0}, LAp;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxw;)V

    .line 237
    new-instance v0, LAq;

    invoke-direct {v0, p0, p1}, LAq;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Lcom/google/android/apps/docs/editors/kix/KixEditText;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Landroid/text/TextWatcher;)V

    .line 258
    return-void
.end method

.method public a(Lwb;)V
    .registers 3
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Z

    .line 337
    return-void
.end method

.method public a(Lwb;LvU;Lwg;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    return-void
.end method

.method public a(LyC;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LyC;

    .line 266
    return-void
.end method

.method public a(Lyj;)V
    .registers 3
    .parameter

    .prologue
    .line 272
    new-instance v0, LAr;

    invoke-direct {v0, p0}, LAr;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)V

    invoke-virtual {p1, v0}, Lyj;->a(Lyn;)V

    .line 278
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 566
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_24

    .line 567
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    .line 568
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->g()Z

    move-result v0

    .line 590
    :goto_14
    return v0

    .line 569
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_24

    invoke-static {p2}, LFp;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 571
    sparse-switch p1, :sswitch_data_40

    .line 590
    :cond_24
    const/4 v0, 0x0

    goto :goto_14

    .line 573
    :sswitch_26
    sget-object v1, LAt;->a:LAt;

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;)V

    goto :goto_14

    .line 576
    :sswitch_2c
    sget-object v1, LAt;->b:LAt;

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;)V

    goto :goto_14

    .line 579
    :sswitch_32
    sget-object v1, LAt;->c:LAt;

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;)V

    goto :goto_14

    .line 582
    :sswitch_38
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->w()V

    goto :goto_14

    .line 585
    :sswitch_3c
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->x()V

    goto :goto_14

    .line 571
    :sswitch_data_40
    .sparse-switch
        0x1e -> :sswitch_26
        0x25 -> :sswitch_2c
        0x31 -> :sswitch_32
        0x35 -> :sswitch_3c
        0x36 -> :sswitch_38
    .end sparse-switch
.end method

.method protected b(I)V
    .registers 4
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/os/Handler;

    new-instance v1, LAe;

    invoke-direct {v1, p0, p1}, LAe;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 458
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    .line 460
    if-eqz p1, :cond_93

    .line 461
    invoke-static {}, LAt;->values()[LAt;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_c
    if-ge v3, v5, :cond_22

    aget-object v6, v4, v3

    .line 462
    sget-object v0, LAt;->f:LAt;

    if-eq v6, v0, :cond_20

    sget-object v0, LAt;->g:LAt;

    if-eq v6, v0, :cond_20

    move v0, v1

    :goto_19
    invoke-direct {p0, v6, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LAt;Z)V

    .line 461
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_20
    move v0, v2

    .line 462
    goto :goto_19

    .line 466
    :cond_22
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    sget v3, Lup;->toolbar_undo_button:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lup;->toolbar_redo_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lup;->toolbar_indent_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lup;->toolbar_outdent_button:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 471
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4f

    .line 474
    :cond_69
    sget v0, Luo;->action_undo:I

    sget v1, Lup;->toolbar_undo_button:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(II)V

    .line 475
    sget v0, Luo;->action_redo:I

    sget v1, Lup;->toolbar_redo_button:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(II)V

    .line 476
    sget v0, Luo;->action_increase_indent:I

    sget v1, Lup;->toolbar_indent_button:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(II)V

    .line 477
    sget v0, Luo;->action_decrease_indent:I

    sget v1, Lup;->toolbar_outdent_button:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b(II)V

    .line 479
    sget v0, Lup;->toolbar_done_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_92

    .line 481
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    :cond_92
    :goto_92
    return-void

    .line 484
    :cond_93
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 485
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_92
.end method

.method public f()V
    .registers 2

    .prologue
    .line 286
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c:Z

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 289
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->q()V

    .line 291
    :cond_11
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c:Z

    .line 299
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->g()V

    .line 300
    return-void
.end method

.method public g()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    .line 541
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    invoke-interface {v0}, LuZ;->g()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 542
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    invoke-interface {v0}, LuZ;->p()V

    move v0, v1

    .line 545
    :goto_20
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    invoke-interface {v3}, LuZ;->g()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 546
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    invoke-interface {v0}, LuZ;->p()V

    move v0, v1

    .line 549
    :cond_32
    if-eqz v0, :cond_37

    .line 550
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->p()V

    .line 554
    :cond_37
    :goto_37
    return v2

    :cond_38
    move v2, v1

    goto :goto_37

    :cond_3a
    move v0, v2

    goto :goto_20
.end method

.method public p()V
    .registers 3

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->r()V

    .line 611
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()V

    .line 612
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 613
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    :cond_13
    return-void
.end method

.method public q()V
    .registers 5

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a()J

    move-result-wide v0

    sget v2, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:J

    .line 358
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:Z

    if-eqz v0, :cond_13

    .line 363
    :cond_12
    :goto_12
    return-void

    .line 362
    :cond_13
    sget v0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(J)V

    goto :goto_12
.end method

.method protected r()V
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:LuZ;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LuZ;)V

    .line 736
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->b:LuZ;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LuZ;)V

    .line 737
    return-void
.end method

.method protected s()V
    .registers 2

    .prologue
    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Z

    .line 752
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()V

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a:Z

    .line 754
    return-void
.end method
