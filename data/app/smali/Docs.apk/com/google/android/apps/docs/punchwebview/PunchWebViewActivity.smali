.class public Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "PunchWebViewActivity.java"

# interfaces
.implements LNS;
.implements LNV;


# instance fields
.field private a:LMA;

.field public a:LNp;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LNq;

.field private a:Landroid/support/v4/app/Fragment;

.field private a:Lcom/google/android/apps/docs/fragment/DragKnobFragment;

.field private a:Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

.field private a:Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

.field private a:Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 53
    new-instance v0, LNq;

    invoke-direct {v0}, LNq;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNq;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    sget-object v0, LkU;->c:LkU;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;LkU;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    const-class v1, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    return-object v0
.end method

.method private a(LH;)V
    .registers 4
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;

    if-nez v0, :cond_e

    .line 292
    sget v0, LcS;->speaker_notes_presence_panel:I

    sget v1, LcS;->speaker_notes_content_panel:I

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;->a(II)Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;

    .line 296
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;

    const-string v1, "SpeakerNotesFragmentTag"

    invoke-virtual {p1, v0, v1}, LH;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    .line 297
    return-void
.end method

.method private a(LH;Lld;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_e

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNp;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Ljava/lang/String;

    invoke-interface {v0, p3, p2, v1}, LNp;->a(Landroid/net/Uri;Lld;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Landroid/support/v4/app/Fragment;

    .line 318
    :cond_e
    sget v0, LcS;->web_view_container:I

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Landroid/support/v4/app/Fragment;

    const-string v2, "webView"

    invoke-virtual {p1, v0, v1, v2}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    .line 319
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->e()V

    return-void
.end method

.method private a(Lld;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 241
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a(LH;Lld;Landroid/net/Uri;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->c(LH;)V

    .line 247
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->d(LH;)V

    .line 248
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a(LH;)V

    .line 249
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->b(LH;)V

    .line 251
    invoke-virtual {v0}, LH;->b()I

    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()Z

    .line 253
    return-void
.end method

.method private b(LH;)V
    .registers 5
    .parameter

    .prologue
    .line 300
    sget v0, LcS;->drag_knob_container:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    .line 309
    :goto_8
    return-void

    .line 304
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    if-nez v0, :cond_14

    .line 305
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Z)Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    .line 308
    :cond_14
    sget v0, LcS;->drag_knob_container:I

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    const-string v2, "dragKnob"

    invoke-virtual {p1, v0, v1, v2}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    goto :goto_8
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->h()V

    return-void
.end method

.method private c(LH;)V
    .registers 5
    .parameter

    .prologue
    .line 322
    sget v0, LcS;->grid_slide_picker_container:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

    if-nez v0, :cond_12

    .line 325
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a()Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

    .line 328
    :cond_12
    sget v0, LcS;->grid_slide_picker_container:I

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

    const-string v2, "slidePicker"

    invoke-virtual {p1, v0, v1, v2}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    .line 331
    :cond_1b
    return-void
.end method

.method private c(Z)V
    .registers 6
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->e()Z

    move-result v0

    if-ne p1, v0, :cond_7

    .line 135
    :goto_6
    return-void

    .line 125
    :cond_7
    if-eqz p1, :cond_25

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;->a()Lcom/google/android/apps/docs/punchwebview/PunchFullScreenFragment;

    move-result-object v1

    .line 128
    sget v2, LcS;->main_container:I

    const-string v3, "FRAGMENT_TAG_FULLSCREEN"

    invoke-virtual {v0, v2, v1, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    .line 129
    const-string v1, "punchFullscreen"

    invoke-virtual {v0, v1}, LH;->a(Ljava/lang/String;)LH;

    .line 130
    invoke-virtual {v0}, LH;->a()I

    goto :goto_6

    .line 132
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()Lx;

    move-result-object v0

    const-string v1, "punchFullscreen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lx;->a(Ljava/lang/String;I)V

    goto :goto_6
.end method

.method private d(LH;)V
    .registers 5
    .parameter

    .prologue
    .line 334
    sget v0, LcS;->list_slide_picker_container:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

    if-nez v0, :cond_12

    .line 337
    invoke-static {}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a()Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

    .line 340
    :cond_12
    sget v0, LcS;->list_slide_picker_container:I

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

    const-string v2, "slidePicker"

    invoke-virtual {p1, v0, v1, v2}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    .line 343
    :cond_1b
    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->e()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->c(Z)V

    .line 113
    return-void

    .line 112
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()Lx;

    move-result-object v0

    const-string v1, "FRAGMENT_TAG_FULLSCREEN"

    invoke-virtual {v0, v1}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private f()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 139
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v0, v1}, LIi;->a(LIB;)V

    .line 141
    invoke-static {}, Lkg;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/docs/view/TitleBar;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 147
    const/16 v1, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 151
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->h()V

    .line 152
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->g()V

    .line 153
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Lkg;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()LIi;

    move-result-object v0

    sget v1, LcR;->activity_icon_punch:I

    invoke-interface {v0, v1}, LIi;->a(I)V

    .line 205
    :cond_f
    return-void
.end method

.method private h()V
    .registers 6

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNq;

    invoke-virtual {v0}, LNq;->c()I

    move-result v0

    .line 210
    if-lez v0, :cond_31

    .line 211
    sget v1, LcY;->punch_which_slide_is_displayed:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNq;

    invoke-virtual {v4}, LNq;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()LIi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 214
    :cond_31
    sget v0, LcY;->loading:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method private i()V
    .registers 3

    .prologue
    .line 221
    sget v0, LcU;->punch_web_view_whole:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->setContentView(I)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lld;->a(Landroid/content/Intent;)Lld;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 226
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a(Lld;Landroid/net/Uri;)V

    .line 228
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->f()V

    .line 229
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_11

    .line 263
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, LH;->a(Landroid/support/v4/app/Fragment;)LH;

    .line 266
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    if-eqz v1, :cond_1a

    .line 267
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    invoke-virtual {v0, v1}, LH;->a(Landroid/support/v4/app/Fragment;)LH;

    .line 270
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;

    if-eqz v1, :cond_23

    .line 271
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/SpeakerNotesFragment;

    invoke-virtual {v0, v1}, LH;->a(Landroid/support/v4/app/Fragment;)LH;

    .line 274
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

    if-eqz v1, :cond_2c

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

    invoke-virtual {v0, v1}, LH;->a(Landroid/support/v4/app/Fragment;)LH;

    .line 278
    :cond_2c
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

    if-eqz v1, :cond_35

    .line 279
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

    invoke-virtual {v0, v1}, LH;->a(Landroid/support/v4/app/Fragment;)LH;

    .line 286
    :cond_35
    invoke-virtual {v0}, LH;->b()I

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()Z

    .line 288
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LMA;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 362
    new-instance v0, LNA;

    invoke-direct {v0, p0}, LNA;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LMA;

    .line 374
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNq;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LMA;

    invoke-virtual {v0, v1}, LNq;->a(LNo;)V

    .line 375
    return-void

    .line 361
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private l()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LMA;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNq;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LMA;

    invoke-virtual {v0, v1}, LNq;->b(LNo;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LMA;

    .line 381
    return-void

    .line 378
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 181
    const-class v0, LNq;

    if-ne p1, v0, :cond_7

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNq;

    .line 190
    :goto_6
    return-object v0

    .line 185
    :cond_7
    const-class v0, LNU;

    if-ne p1, v0, :cond_e

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Landroid/support/v4/app/Fragment;

    goto :goto_6

    .line 190
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 393
    const-string v0, "PunchWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fullscreen (via webview gesture): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->c(Z)V

    .line 395
    return-void
.end method

.method public b_(I)V
    .registers 4
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNq;

    invoke-virtual {v0, p1}, LNq;->a(I)V

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    if-eqz v0, :cond_f

    .line 387
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lcom/google/android/apps/docs/fragment/DragKnobFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/fragment/DragKnobFragment;->a(Z)V

    .line 389
    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 170
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->j()V

    .line 171
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->i()V

    .line 176
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "docListTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->i()V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, LcV;->menu_punch_webview:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    sget v0, LcS;->menu_full_screen:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, LNz;

    invoke-direct {v1, p0}, LNz;-><init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_10

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:LNp;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-interface {v0, v1}, LNp;->a(Landroid/support/v4/app/Fragment;)V

    .line 163
    :cond_10
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 164
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->g()V

    .line 199
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 347
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onStart()V

    .line 349
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->k()V

    .line 350
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 355
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->l()V

    .line 357
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onStop()V

    .line 358
    return-void
.end method
