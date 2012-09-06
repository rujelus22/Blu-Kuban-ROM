.class public Lcom/google/android/apps/docs/view/DocListView;
.super Lcom/google/android/apps/docs/view/FastScrollView;
.source "DocListView.java"

# interfaces
.implements Laau;
.implements Lnx;
.implements Lny;
.implements LsH;


# instance fields
.field private a:I

.field private a:J

.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LOG;

.field public a:LQN;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LTf;

.field public a:LTr;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LVj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXC;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LZT;

.field public a:LZU;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/database/Cursor;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/AdapterView$OnItemClickListener;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ListView;

.field private final a:Lcom/google/android/apps/docs/RoboFragmentActivity;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LeQ;

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LhW;

.field public a:LiY;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lid;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private final a:Ljava/lang/Thread;

.field private a:LkG;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmi;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Lnh;

.field private a:Lnj;

.field private a:Lnk;

.field private a:Lnr;

.field private a:LsB;

.field private a:LsO;

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/view/FastScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    iput-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    .line 168
    iput-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnk;

    .line 169
    invoke-static {}, LOG;->a()LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LOG;

    .line 171
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:J

    .line 175
    iput-boolean v4, p0, Lcom/google/android/apps/docs/view/DocListView;->b:Z

    .line 176
    iput-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->b:Ljava/lang/String;

    .line 177
    iput-boolean v4, p0, Lcom/google/android/apps/docs/view/DocListView;->c:Z

    .line 199
    sget-object v0, LsO;->b:LsO;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LsO;

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Ljava/lang/Thread;

    .line 208
    instance-of v0, p1, Lcom/google/android/apps/docs/RoboFragmentActivity;

    if-nez v0, :cond_2f

    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DocListView cannot be created without a Context of kind Activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/google/android/apps/docs/RoboFragmentActivity;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    instance-of v0, v0, LeQ;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    check-cast v0, LeQ;

    :goto_3e
    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LeQ;

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->a()Lans;

    move-result-object v0

    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 219
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LXC;

    invoke-interface {v1}, LXC;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 221
    new-instance v1, LZT;

    invoke-direct {v1, p1, v0}, LZT;-><init>(Landroid/content/Context;Landroid/text/format/Time;)V

    iput-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LZT;

    .line 223
    invoke-virtual {p0, p0}, Lcom/google/android/apps/docs/view/DocListView;->setOverlayStatusListener(LsH;)V

    .line 224
    return-void

    :cond_60
    move-object v0, v1

    .line 214
    goto :goto_3e
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DocListView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:I

    return p1
.end method

.method private a(Lmg;LkT;)I
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lmi;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    iget-object v4, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LXJ;

    invoke-static {v1, v2}, Lmp;->a(Landroid/content/Context;LXJ;)Lmo;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmp;->a(Lmi;Lmg;LkT;Landroid/content/Context;LkG;Lmo;)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DocListView;)LTf;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DocListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DocListView;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DocListView;)Lcom/google/android/apps/docs/RoboFragmentActivity;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DocListView;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;ILlu;LkG;)LkT;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 780
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 781
    invoke-static {p0}, LMj;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-interface {p2, p3, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    return-object v0
.end method

.method private a(Lnk;)Lnk;
    .registers 3
    .parameter

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnk;

    if-nez v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnk;

    goto :goto_4
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 738
    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    if-ne p1, v0, :cond_17

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/view/View;

    if-ne p1, v3, :cond_19

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    return-void

    :cond_17
    move v0, v2

    .line 738
    goto :goto_a

    :cond_19
    move v1, v2

    .line 739
    goto :goto_13
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DocListView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/view/DocListView;->a(Z)V

    return-void
.end method

.method private a(LnL;LsB;)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 495
    const-string v1, "DocListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateDatabaseQuery with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnj;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnj;

    invoke-virtual {v1}, Lnj;->a()LnL;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, LnL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 498
    :cond_2c
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Z)V

    .line 501
    :cond_30
    invoke-virtual/range {p2 .. p2}, LsB;->c()Ljava/lang/String;

    move-result-object v1

    .line 503
    new-instance v2, Lnj;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v1}, Lnj;-><init>(LnL;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnj;

    .line 505
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LsB;

    .line 508
    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Llu;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v1}, Llu;->a(LnL;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/database/Cursor;

    .line 510
    sget-object v1, LMk;->p:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    .line 511
    const/16 v2, 0xe

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, LMk;->p:LMk;

    invoke-virtual {v3}, LMk;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    sget-object v3, LMk;->a:LMk;

    invoke-virtual {v3}, LMk;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    sget-object v3, LMk;->r:LMk;

    invoke-virtual {v3}, LMk;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-virtual/range {p2 .. p2}, LsB;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    sget-object v3, LMk;->g:LMk;

    invoke-virtual {v3}, LMk;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    invoke-virtual/range {p2 .. p2}, LsB;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x6

    sget-object v3, LMk;->u:LMk;

    invoke-virtual {v3}, LMk;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x7

    aput-object v1, v6, v2

    const/16 v2, 0x8

    aput-object v1, v6, v2

    const/16 v2, 0x9

    aput-object v1, v6, v2

    const/16 v2, 0xa

    aput-object v1, v6, v2

    const/16 v2, 0xb

    aput-object v1, v6, v2

    const/16 v2, 0xc

    aput-object v1, v6, v2

    const/16 v2, 0xd

    aput-object v1, v6, v2

    .line 530
    const/16 v1, 0xe

    new-array v7, v1, [I

    const/4 v1, 0x0

    sget v2, LcS;->doc_icon:I

    aput v2, v7, v1

    const/4 v1, 0x1

    sget v2, LcS;->title:I

    aput v2, v7, v1

    const/4 v1, 0x2

    sget v2, LcS;->star_cb:I

    aput v2, v7, v1

    const/4 v1, 0x3

    sget v2, LcS;->date:I

    aput v2, v7, v1

    const/4 v1, 0x4

    sget v2, LcS;->last_modifier_name:I

    aput v2, v7, v1

    const/4 v1, 0x5

    sget v2, LcS;->group_title:I

    aput v2, v7, v1

    const/4 v1, 0x6

    sget v2, LcS;->pin_mode_selected:I

    aput v2, v7, v1

    const/4 v1, 0x7

    sget v2, LcS;->preview_button:I

    aput v2, v7, v1

    const/16 v1, 0x8

    sget v2, LcS;->selected_checkbox:I

    aput v2, v7, v1

    const/16 v1, 0x9

    sget v2, LcS;->pin_status:I

    aput v2, v7, v1

    const/16 v1, 0xa

    sget v2, LcS;->pin_update:I

    aput v2, v7, v1

    const/16 v1, 0xb

    sget v2, LcS;->pin_waiting:I

    aput v2, v7, v1

    const/16 v1, 0xc

    sget v2, LcS;->pin_progress:I

    aput v2, v7, v1

    const/16 v1, 0xd

    sget v2, LcS;->pin_filler:I

    aput v2, v7, v1

    .line 546
    array-length v1, v6

    array-length v2, v7

    if-ne v1, v2, :cond_16d

    const/4 v1, 0x1

    :goto_11c
    const-string v2, "expected matching length"

    invoke-static {v1, v2}, LafQ;->b(ZLjava/lang/Object;)V

    .line 548
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/database/Cursor;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, LsB;->a(Landroid/database/Cursor;)V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcQ;->tablet_doclist_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v9, v1

    .line 554
    new-instance v1, Laaq;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    sget v4, LcU;->doc_entry_row:I

    iget-object v5, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/database/Cursor;

    move-object v2, p0

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Laaq;-><init>(Lcom/google/android/apps/docs/view/DocListView;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILsB;I)V

    iput-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    .line 605
    const/4 v1, 0x0

    .line 606
    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    if-eqz v2, :cond_19a

    .line 607
    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    invoke-interface {v2}, LhW;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_14f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhK;

    .line 608
    instance-of v4, v1, Lic;

    if-eqz v4, :cond_238

    .line 609
    sget-object v2, Lnk;->d:Lnk;

    check-cast v1, Lic;

    invoke-virtual {v1}, Lic;->a()Lnk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnk;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_16b
    move v2, v1

    goto :goto_14f

    .line 546
    :cond_16d
    const/4 v1, 0x0

    goto :goto_11c

    :cond_16f
    move v11, v2

    .line 618
    :goto_170
    const/4 v1, 0x0

    .line 619
    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    if-eqz v2, :cond_208

    .line 620
    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    invoke-interface {v2}, LhW;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_17c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhK;

    .line 621
    instance-of v4, v1, Lic;

    if-eqz v4, :cond_235

    .line 622
    sget-object v2, Lnk;->b:Lnk;

    check-cast v1, Lic;

    invoke-virtual {v1}, Lic;->a()Lnk;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnk;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_198
    move v2, v1

    goto :goto_17c

    .line 614
    :cond_19a
    sget-object v1, Lnk;->a:Lnk;

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Lnk;)Lnk;

    move-result-object v1

    sget-object v2, Lnk;->d:Lnk;

    invoke-virtual {v1, v2}, Lnk;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_170

    :cond_1a7
    move v12, v2

    .line 631
    :goto_1a8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_214

    .line 633
    const/4 v13, 0x0

    .line 643
    :goto_1b3
    new-instance v1, Lnr;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Llu;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LQN;

    iget-object v4, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LZT;

    iget-object v5, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-virtual {v5}, LkG;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LFX;

    iget-object v14, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LeZ;

    move-object v5, p0

    move-object v6, p0

    move-object/from16 v7, p2

    move-object v10, p0

    invoke-direct/range {v1 .. v14}, Lnr;-><init>(Llu;LQN;LZT;Lny;Lnx;LsB;Ljava/lang/String;LFX;Laau;ZZILeZ;)V

    iput-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnr;

    .line 647
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnr;

    invoke-virtual {v1, v2}, Lnh;->a(Lbs;)V

    .line 648
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 649
    iget-boolean v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Z

    if-nez v1, :cond_1f3

    .line 650
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LiY;

    invoke-interface {v1}, LiY;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:I

    .line 652
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    iget v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 653
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Z

    .line 655
    :cond_1f3
    invoke-virtual/range {p2 .. p2}, LsB;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/view/DocListView;->setTextSize(I)V

    .line 656
    invoke-virtual/range {p2 .. p2}, LsB;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/view/DocListView;->setOverlaySize(I)V

    .line 657
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->c()V

    .line 658
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->e()V

    .line 659
    return-void

    .line 626
    :cond_208
    sget-object v2, Lnk;->a:Lnk;

    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/view/DocListView;->a(Lnk;)Lnk;

    move-result-object v2

    sget-object v3, Lnk;->b:Lnk;

    if-ne v2, v3, :cond_232

    .line 627
    const/4 v12, 0x1

    goto :goto_1a8

    .line 635
    :cond_214
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LanD;

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LdL;

    sget-object v3, LdL;->b:LdL;

    invoke-virtual {v1, v3}, LdL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22f

    sget v1, LcP;->grouper_title_background:I

    :goto_22a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    goto :goto_1b3

    :cond_22f
    sget v1, LcP;->grouper_title_background_docs:I

    goto :goto_22a

    :cond_232
    move v12, v1

    goto/16 :goto_1a8

    :cond_235
    move v1, v2

    goto/16 :goto_198

    :cond_238
    move v1, v2

    goto/16 :goto_16b
.end method

.method private a(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    if-eqz v0, :cond_32

    move v0, v1

    :goto_a
    invoke-static {v0}, LafQ;->b(Z)V

    .line 353
    const-string v0, "DocListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in updateSyncMoreButton "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LeZ;

    sget-object v4, LeV;->q:LeV;

    invoke-interface {v0, v4}, LeZ;->a(LeV;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 448
    :goto_31
    return-void

    :cond_32
    move v0, v2

    .line 350
    goto :goto_a

    .line 360
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v0}, LTf;->a()Z

    move-result v0

    if-nez v0, :cond_51

    .line 362
    :cond_40
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->f()V

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    if-eqz v0, :cond_cb

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    invoke-interface {v0}, LhW;->b()Ljava/lang/String;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_ba

    .line 369
    iput-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    .line 386
    :cond_51
    :goto_51
    if-eqz p1, :cond_8e

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v0}, LTf;->c()Z

    move-result v0

    if-nez v0, :cond_109

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v0}, LTf;->b()Z

    move-result v0

    if-nez v0, :cond_109

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v0}, LTf;->a()Z

    move-result v0

    if-nez v0, :cond_109

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LFX;

    const-string v3, "enableSyncMoreImplicitely"

    invoke-interface {v0, v3, v1}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_109

    move v0, v1

    .line 391
    :goto_7a
    if-eqz v0, :cond_8e

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LFX;

    const-string v3, "syncMoreMaxFeedsToRetrieveImplicitly"

    invoke-interface {v0, v3, v1}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    .line 395
    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    new-instance v4, Laas;

    invoke-direct {v4, p0, v2}, Laas;-><init>(Lcom/google/android/apps/docs/view/DocListView;Z)V

    invoke-interface {v3, v4, v0}, LTf;->a(LTg;I)V

    .line 399
    :cond_8e
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v0}, LTf;->c()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 400
    :cond_9a
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b2

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    if-eqz v0, :cond_b2

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 446
    :cond_b2
    :goto_b2
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->h()V

    .line 447
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->e()V

    goto/16 :goto_31

    .line 371
    :cond_ba
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTr;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    iget-object v4, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    invoke-interface {v4}, LhW;->a()LSR;

    move-result-object v4

    invoke-interface {v0, v3, v4}, LTr;->a(LkG;LSR;)LTf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    goto :goto_51

    .line 374
    :cond_cb
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LOG;

    invoke-virtual {v0}, LOG;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_fb

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Llu;

    iget-object v4, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    iget-wide v5, p0, Lcom/google/android/apps/docs/view/DocListView;->a:J

    invoke-interface {v0, v4, v5, v6}, Llu;->a(LkG;J)LkM;

    move-result-object v0

    .line 377
    if-nez v0, :cond_f6

    move-object v0, v3

    .line 378
    :goto_e0
    sget-object v3, Lnk;->a:Lnk;

    invoke-direct {p0, v3}, Lcom/google/android/apps/docs/view/DocListView;->a(Lnk;)Lnk;

    move-result-object v3

    invoke-static {v3, v0}, LSR;->a(Lnk;Ljava/lang/String;)LSR;

    move-result-object v0

    .line 380
    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTr;

    iget-object v4, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-interface {v3, v4, v0}, LTr;->a(LkG;LSR;)LTf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    goto/16 :goto_51

    .line 377
    :cond_f6
    invoke-virtual {v0}, LkM;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_e0

    .line 382
    :cond_fb
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTr;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    iget-object v4, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LOG;

    invoke-interface {v0, v3, v4}, LTr;->a(LkG;LOG;)LTf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    goto/16 :goto_51

    :cond_109
    move v0, v2

    .line 388
    goto/16 :goto_7a

    .line 408
    :cond_10c
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_12e

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/Button;

    new-instance v3, Laap;

    invoke-direct {v3, p0}, Laap;-><init>(Lcom/google/android/apps/docs/view/DocListView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    if-eqz v0, :cond_12e

    .line 424
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 428
    :cond_12e
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v0}, LTf;->a()Z

    move-result v3

    .line 429
    iget-object v4, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/Button;

    if-nez v3, :cond_14d

    move v0, v1

    :goto_139
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 431
    if-eqz v3, :cond_14f

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    sget v1, LcY;->sync_more_in_progress:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    :goto_146
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b2

    :cond_14d
    move v0, v2

    .line 429
    goto :goto_139

    .line 434
    :cond_14f
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v0}, LTf;->a()J

    move-result-wide v3

    .line 435
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_167

    .line 436
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    sget v1, LcY;->sync_more:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_146

    .line 438
    :cond_167
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    sget v4, LcY;->sync_more_before_template:I

    invoke-virtual {v3, v4}, Lcom/google/android/apps/docs/RoboFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 440
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_146
.end method

.method private e()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    invoke-virtual {v0}, Lnh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_c
    const/4 v0, 0x1

    .line 249
    :goto_d
    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/view/View;

    :goto_11
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Landroid/view/View;)V

    .line 250
    return-void

    .line 248
    :cond_15
    const/4 v0, 0x0

    goto :goto_d

    .line 249
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    goto :goto_11
.end method

.method private f()V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    if-eqz v0, :cond_12

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-virtual {v1}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    .line 312
    :cond_12
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 720
    new-instance v0, Lcom/google/android/apps/docs/view/PinWarningDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/view/PinWarningDialogFragment;-><init>()V

    .line 721
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a()Lx;

    move-result-object v1

    const-string v2, "pin_warning"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/view/PinWarningDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method private h()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 839
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    if-eqz v0, :cond_3c

    .line 840
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    invoke-interface {v0}, LhW;->a()Lnk;

    move-result-object v0

    sget-object v3, Lnk;->d:Lnk;

    if-ne v0, v3, :cond_3a

    move v0, v1

    .line 846
    :goto_13
    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v3}, LTf;->c()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 849
    :goto_1f
    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/google/android/apps/docs/view/DocListView;->c:Z

    if-eqz v1, :cond_4b

    if-nez v0, :cond_4b

    .line 850
    sget v0, LcS;->empty_list_message:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 851
    sget v0, LcS;->empty_list_syncing:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 856
    :goto_39
    return-void

    :cond_3a
    move v0, v2

    .line 840
    goto :goto_13

    .line 842
    :cond_3c
    sget-object v0, Lnk;->a:Lnk;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lnk;)Lnk;

    move-result-object v0

    sget-object v3, Lnk;->d:Lnk;

    invoke-virtual {v0, v3}, Lnk;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    :cond_49
    move v1, v2

    .line 846
    goto :goto_1f

    .line 853
    :cond_4b
    sget v0, LcS;->empty_list_message:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 854
    sget v0, LcS;->empty_list_syncing:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39
.end method

.method private i()V
    .registers 3

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 920
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 281
    iget v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:I

    .line 287
    :cond_e
    :goto_e
    return v0

    .line 283
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 284
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_e
.end method

.method public a()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public a(I)LkT;
    .registers 5
    .parameter

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/apps/docs/view/DocListView;->a(Landroid/database/Cursor;ILlu;LkG;)LkT;

    move-result-object v0

    return-object v0
.end method

.method public a()Lnj;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnj;

    return-object v0
.end method

.method public a()LsO;
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LsO;

    return-object v0
.end method

.method public a()V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    const-string v0, "DocListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in fillData() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    if-eqz v0, :cond_6c

    move v0, v1

    :goto_21
    invoke-static {v0}, LafQ;->b(Z)V

    .line 458
    sget-object v3, LnO;->a:LnO;

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-static {v0}, LnP;->a(LkG;)LnL;

    move-result-object v4

    const/4 v0, 0x3

    new-array v5, v0, [LnL;

    iget-wide v6, p0, Lcom/google/android/apps/docs/view/DocListView;->a:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_6e

    iget-wide v6, p0, Lcom/google/android/apps/docs/view/DocListView;->a:J

    invoke-static {v6, v7}, LnP;->a(J)LnL;

    move-result-object v0

    :goto_3d
    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LOG;

    invoke-virtual {v0}, LOG;->a()LnL;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    sget-object v1, Lnk;->a:Lnk;

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Lnk;)Lnk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-virtual {v1, v2}, Lnk;->a(LkG;)LnL;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, LnO;->a(LnL;[LnL;)LnL;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LsO;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LXC;

    invoke-interface {v3}, LXC;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, LsO;->a(Lcom/google/android/apps/docs/RoboFragmentActivity;J)LsB;

    move-result-object v1

    .line 472
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(LnL;LsB;)V

    .line 473
    return-void

    :cond_6c
    move v0, v2

    .line 456
    goto :goto_21

    .line 458
    :cond_6e
    sget-object v0, LnL;->b:LnL;

    goto :goto_3d
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 860
    return-void
.end method

.method public a(JLeD;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Llu;

    invoke-interface {v0, p1, p2}, Llu;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 766
    if-nez v0, :cond_9

    .line 774
    :cond_8
    :goto_8
    return-void

    .line 770
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-interface {v1, v2, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_8

    .line 772
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LeQ;

    invoke-virtual {v0}, LkT;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p3}, LeQ;->a(Ljava/lang/String;LeD;)V

    goto :goto_8
.end method

.method public a(Landroid/database/Cursor;)V
    .registers 5
    .parameter

    .prologue
    .line 900
    const-string v0, "DocListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in swapCursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->i()V

    .line 902
    if-nez p1, :cond_20

    .line 913
    :goto_1f
    return-void

    .line 906
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LsB;

    invoke-virtual {v0, p1}, LsB;->a(Landroid/database/Cursor;)V

    .line 907
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    invoke-virtual {v0, p1}, Lnh;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 908
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/database/Cursor;

    .line 909
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnh;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LsB;

    invoke-virtual {v0, v1}, Lnh;->a(LsB;)V

    .line 910
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->c()V

    .line 911
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Z)V

    .line 912
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->e()V

    goto :goto_1f
.end method

.method public a(LhW;)V
    .registers 7
    .parameter

    .prologue
    .line 485
    const-string v0, "DocListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in fillData(CriterionSet) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LhW;

    .line 487
    invoke-interface {p1}, LhW;->a()LnL;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LsO;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LXC;

    invoke-interface {v3}, LXC;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, LsO;->a(Lcom/google/android/apps/docs/RoboFragmentActivity;J)LsB;

    move-result-object v1

    .line 489
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->h()V

    .line 491
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(LnL;LsB;)V

    .line 492
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 929
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lid;

    invoke-interface {v1}, Lid;->a()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 930
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 931
    if-eqz v1, :cond_1a

    .line 932
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 936
    :goto_14
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lid;

    invoke-interface {v1, v0}, Lid;->a(Ljava/util/Set;)V

    .line 940
    return-void

    .line 934
    :cond_1a
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-virtual {v1}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 819
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 820
    return-void
.end method

.method public a(LkR;)V
    .registers 7
    .parameter

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 699
    invoke-virtual {p1}, LkR;->g()Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p1, v0}, LkR;->b(Z)V

    .line 700
    invoke-virtual {p1}, LkR;->c()V

    .line 702
    invoke-virtual {p1}, LkR;->g()Z

    move-result v0

    .line 703
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 704
    invoke-virtual {p1}, LkR;->a()Lld;

    move-result-object v2

    .line 705
    if-eqz v0, :cond_43

    .line 706
    iget-object v3, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LZU;

    invoke-interface {v3}, LZU;->b()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 707
    invoke-static {v1, v2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Landroid/content/Context;Lld;)V

    .line 715
    :goto_2f
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LdE;

    const-string v2, "pinning"

    if-eqz v0, :cond_47

    const-string v0, "pin"

    :goto_37
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 717
    return-void

    .line 699
    :cond_3d
    const/4 v0, 0x0

    goto :goto_10

    .line 709
    :cond_3f
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->g()V

    goto :goto_2f

    .line 712
    :cond_43
    invoke-static {v1, v2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b(Landroid/content/Context;Lld;)V

    goto :goto_2f

    .line 715
    :cond_47
    const-string v0, "unpin"

    goto :goto_37
.end method

.method public a(Lld;LTE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 668
    new-instance v0, Lnv;

    sget-object v1, Lnw;->a:Lnw;

    invoke-direct {v0, v1, p1}, Lnv;-><init>(Lnw;Lld;)V

    .line 670
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/CustomButton;

    .line 671
    new-instance v1, Lnv;

    sget-object v2, Lnw;->b:Lnw;

    invoke-direct {v1, v2, p1}, Lnv;-><init>(Lnw;Lld;)V

    .line 673
    iget-object v2, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/docs/view/ProgressButton;

    .line 674
    if-nez v0, :cond_22

    if-eqz v1, :cond_25

    .line 675
    :cond_22
    invoke-static {v0, v1, p2}, LZH;->a(Lcom/google/android/apps/docs/view/CustomButton;Lcom/google/android/apps/docs/view/ProgressButton;LTE;)V

    .line 677
    :cond_25
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lid;

    invoke-interface {v0}, Lid;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 944
    invoke-super {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->b()V

    .line 946
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    if-eqz v0, :cond_f

    .line 947
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    invoke-interface {v0}, LTf;->a()V

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LTf;

    .line 950
    :cond_f
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lcom/google/android/apps/docs/RoboFragmentActivity;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 682
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-interface {v0, v1, p1}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_36

    .line 684
    new-instance v1, Lmt;

    invoke-direct {v1, v0}, Lmt;-><init>(LkT;)V

    .line 685
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lmg;LkT;)I

    move-result v0

    .line 686
    if-eqz v0, :cond_36

    .line 688
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    invoke-virtual {v1}, LkG;->a()V

    .line 689
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LXJ;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_37

    sget v0, LcY;->operation_on_starring_failed_as_offline:I

    :goto_2e
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    :cond_36
    return-void

    .line 689
    :cond_37
    sget v0, LcY;->operation_on_starring_failed:I

    goto :goto_2e
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/DocListView;->b:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->onAttachedToWindow()V

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 230
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 235
    invoke-super {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->onDetachedFromWindow()V

    .line 236
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-super {p0}, Lcom/google/android/apps/docs/view/FastScrollView;->onFinishInflate()V

    .line 255
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    .line 256
    sget v0, LcS;->empty_list:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/view/View;

    .line 257
    sget-object v0, LdL;->a:LdL;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LanD;

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LdL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 258
    sget v0, LcS;->empty_list_message:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 261
    :cond_30
    sget v0, LcS;->sync_more_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/Button;

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/ListView;

    new-instance v1, Laao;

    invoke-direct {v1, p0}, Laao;-><init>(Lcom/google/android/apps/docs/view/DocListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 730
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_12

    .line 731
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 732
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 734
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/view/FastScrollView;->onMeasure(II)V

    .line 735
    return-void
.end method

.method public setAccount(LkG;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LkG;

    .line 299
    return-void
.end method

.method public setCollectionId(J)V
    .registers 3
    .parameter

    .prologue
    .line 318
    iput-wide p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:J

    .line 319
    return-void
.end method

.method public setMainFilter(Lnk;)V
    .registers 3
    .parameter

    .prologue
    .line 747
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnk;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Lnk;

    .line 748
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->h()V

    .line 749
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 326
    return-void
.end method

.method public setSearchTerm(LOG;)V
    .registers 2
    .parameter

    .prologue
    .line 755
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LOG;

    .line 757
    return-void
.end method

.method public setSelectedResourceId(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DocListView;->b:Ljava/lang/String;

    .line 886
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocListView;->d()V

    .line 887
    return-void
.end method

.method public setSelectionMode(Z)V
    .registers 2
    .parameter

    .prologue
    .line 878
    iput-boolean p1, p0, Lcom/google/android/apps/docs/view/DocListView;->b:Z

    .line 879
    return-void
.end method

.method public setSorting(LsO;)V
    .registers 3
    .parameter

    .prologue
    .line 827
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsO;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:LsO;

    .line 828
    return-void
.end method

.method public setSyncing(Z)V
    .registers 2
    .parameter

    .prologue
    .line 831
    iput-boolean p1, p0, Lcom/google/android/apps/docs/view/DocListView;->c:Z

    .line 832
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/DocListView;->h()V

    .line 833
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 241
    if-eqz p1, :cond_f

    .line 242
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DocListView;->a:Ljava/lang/String;

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/view/DocListView;->setTag(Ljava/lang/Object;)V

    .line 245
    :cond_f
    return-void

    .line 240
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 864
    const-string v0, "%s[mainFilter=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lnk;->a:Lnk;

    invoke-direct {p0, v3}, Lcom/google/android/apps/docs/view/DocListView;->a(Lnk;)Lnk;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
