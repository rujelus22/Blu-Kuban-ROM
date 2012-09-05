.class public Lcom/samsung/wimax/napid/WriteMRU;
.super Landroid/app/Activity;
.source "WriteMRU.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    }
.end annotation


# static fields
.field private static final MRU_EDIT_RESULT:I = 0x7


# instance fields
.field TAG:Ljava/lang/String;

.field cf1:Landroid/widget/Spinner;

.field cf1Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field cf2:Landroid/widget/Spinner;

.field cf2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cf3:Landroid/widget/Spinner;

.field cf3Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field channelArray:[Ljava/lang/String;

.field private freqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBandWidth:Landroid/widget/TextView;

.field mChannelGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field mClickListner:Landroid/view/View$OnClickListener;

.field mFftSize:Landroid/widget/TextView;

.field mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field okBtn:Landroid/widget/Button;

.field secondSpinnerArray:[Ljava/lang/String;

.field selectionString:Z

.field thirdSpinnerItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    .line 36
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    .line 47
    iput-boolean v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->selectionString:Z

    .line 52
    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "2508500"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "2518500"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2528500"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2541500"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "2551500"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2561500"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2630500"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2640500"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "2650500"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "2663500"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "2673500"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "2683500"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "2525000"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "2535000"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "2545000"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "2647000"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "2657000"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "2667000"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "2499000"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "2505250"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "2510250"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "2515250"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "2521750"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "2526750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "2531750"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "2538250"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "2543250"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "2548250"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "2554750"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "2559750"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "2564750"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "2621000"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "2627250"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "2632250"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "2637250"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "2643750"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "2648750"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "2653750"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "2660250"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "2665250"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "2670250"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "2676250"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "2681250"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "2686750"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "2578000"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "2584000"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "2590000"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "2596000"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "2602000"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "2608000"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "2575000"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "2581000"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "2587000"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "2593000"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "2599000"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "2605000"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "2611000"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->channelArray:[Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/samsung/wimax/napid/WriteMRU$3;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/WriteMRU$3;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->mClickListner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 320
    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 323
    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_17
    return v0

    .line 327
    :cond_18
    const-string v1, "WiMAX modem is OFF , Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic access$000(Lcom/samsung/wimax/napid/WriteMRU;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/WriteMRU;->handleItemClickInCh1Spinner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wimax/napid/WriteMRU;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/WriteMRU;->handleItemClickInCh2Spinner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/napid/WriteMRU;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/wimax/napid/WriteMRU;->addMru()V

    return-void
.end method

.method private addChannelGroup()V
    .registers 33

    .prologue
    .line 335
    new-instance v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 336
    .local v2, cg0:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2508500"

    move-object/from16 v0, v31

    iput-object v0, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 337
    const-string v31, "2518500"

    move-object/from16 v0, v31

    iput-object v0, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 338
    const-string v31, "2528500"

    move-object/from16 v0, v31

    iput-object v0, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 339
    const-string v31, "6"

    move-object/from16 v0, v31

    iput-object v0, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 340
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 345
    .local v3, cg1:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2541500"

    move-object/from16 v0, v31

    iput-object v0, v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 346
    const-string v31, "2551500"

    move-object/from16 v0, v31

    iput-object v0, v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 347
    const-string v31, "2561500"

    move-object/from16 v0, v31

    iput-object v0, v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 348
    const-string v31, "6"

    move-object/from16 v0, v31

    iput-object v0, v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 349
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v14, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 353
    .local v14, cg2:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2630500"

    move-object/from16 v0, v31

    iput-object v0, v14, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 354
    const-string v31, "2640500"

    move-object/from16 v0, v31

    iput-object v0, v14, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 355
    const-string v31, "2650500"

    move-object/from16 v0, v31

    iput-object v0, v14, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 356
    const-string v31, "6"

    move-object/from16 v0, v31

    iput-object v0, v14, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 357
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v14, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v24, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 361
    .local v24, cg3:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2663500"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 362
    const-string v31, "2673500"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 363
    const-string v31, "2683500"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 364
    const-string v31, "6"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 365
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v25, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 369
    .local v25, cg4:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2525000"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 370
    const-string v31, "2535000"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 371
    const-string v31, "2545000"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 372
    const-string v31, "6"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 373
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v26, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 378
    .local v26, cg5:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2647000"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 379
    const-string v31, "2657000"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 380
    const-string v31, "2667000"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 381
    const-string v31, "6"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 382
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v27, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 386
    .local v27, cg6:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2499000"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 387
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 388
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 389
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 390
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v28, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 394
    .local v28, cg7:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2505250"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 395
    const-string v31, "2510250"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 396
    const-string v31, "2515250"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 397
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 398
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v29, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 403
    .local v29, cg8:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2521750"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 404
    const-string v31, "2526750"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 405
    const-string v31, "2531750"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 406
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 407
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v30, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 411
    .local v30, cg9:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2538250"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 412
    const-string v31, "2543250"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 413
    const-string v31, "2548250"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 414
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 415
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v4, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 419
    .local v4, cg10:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2554750"

    move-object/from16 v0, v31

    iput-object v0, v4, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 420
    const-string v31, "2559750"

    move-object/from16 v0, v31

    iput-object v0, v4, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 421
    const-string v31, "2564750"

    move-object/from16 v0, v31

    iput-object v0, v4, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 422
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v4, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 423
    const-string v31, "2"

    move-object/from16 v0, v31

    iput-object v0, v4, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v5, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 428
    .local v5, cg11:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2621000"

    move-object/from16 v0, v31

    iput-object v0, v5, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 429
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v5, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 430
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v5, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 431
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v5, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 432
    const-string v31, "2"

    move-object/from16 v0, v31

    iput-object v0, v5, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v6, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 436
    .local v6, cg12:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2627250"

    move-object/from16 v0, v31

    iput-object v0, v6, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 437
    const-string v31, "2632250"

    move-object/from16 v0, v31

    iput-object v0, v6, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 438
    const-string v31, "2637250"

    move-object/from16 v0, v31

    iput-object v0, v6, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 439
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v6, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 440
    const-string v31, "2"

    move-object/from16 v0, v31

    iput-object v0, v6, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v7, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 444
    .local v7, cg13:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2643750"

    move-object/from16 v0, v31

    iput-object v0, v7, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 445
    const-string v31, "2648750"

    move-object/from16 v0, v31

    iput-object v0, v7, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 446
    const-string v31, "2653750"

    move-object/from16 v0, v31

    iput-object v0, v7, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 447
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v7, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 448
    const-string v31, "2"

    move-object/from16 v0, v31

    iput-object v0, v7, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v8, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 452
    .local v8, cg14:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2660250"

    move-object/from16 v0, v31

    iput-object v0, v8, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 453
    const-string v31, "2665250"

    move-object/from16 v0, v31

    iput-object v0, v8, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 454
    const-string v31, "2670250"

    move-object/from16 v0, v31

    iput-object v0, v8, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 455
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v8, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 456
    const-string v31, "2"

    move-object/from16 v0, v31

    iput-object v0, v8, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v9, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 460
    .local v9, cg15:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2676750"

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 461
    const-string v31, "2681750"

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 462
    const-string v31, "2686750"

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 463
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 464
    const-string v31, "2"

    move-object/from16 v0, v31

    iput-object v0, v9, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v10, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 469
    .local v10, cg16:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2578000"

    move-object/from16 v0, v31

    iput-object v0, v10, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 470
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v10, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 471
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v10, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 472
    const-string v31, "6"

    move-object/from16 v0, v31

    iput-object v0, v10, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 473
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v10, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v11, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 477
    .local v11, cg17:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2584000"

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 478
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 479
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 480
    const-string v31, "6"

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 481
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v12, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 486
    .local v12, cg18:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2590000"

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 487
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 488
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 489
    const-string v31, "6"

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 490
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v12, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v13, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 494
    .local v13, cg19:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2596000"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 495
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 496
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 497
    const-string v31, "6"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 498
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v13, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v15, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 502
    .local v15, cg20:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2602000"

    move-object/from16 v0, v31

    iput-object v0, v15, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 503
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v15, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 504
    const-string v31, "0000000"

    move-object/from16 v0, v31

    iput-object v0, v15, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 505
    const-string v31, "6"

    move-object/from16 v0, v31

    iput-object v0, v15, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 506
    const-string v31, "3"

    move-object/from16 v0, v31

    iput-object v0, v15, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v16, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 511
    .local v16, cg21:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2608000"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 512
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 513
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 514
    const-string v31, "6"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 515
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v17, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 519
    .local v17, cg22:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2575000"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 520
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 521
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 522
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 523
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v18, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 527
    .local v18, cg23:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2581000"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 528
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 529
    const-string v31, "0000"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 530
    const-string v31, "5"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 531
    const-string v31, "512"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v19, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 536
    .local v19, cg24:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2587000"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 537
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 538
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 539
    const-string v31, "6"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 540
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v20, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 545
    .local v20, cg25:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2593000"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 546
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 547
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 548
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 549
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v21, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 553
    .local v21, cg26:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2599000"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 554
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 555
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 556
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 557
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v22, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 561
    .local v22, cg27:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2605000"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 562
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 563
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 564
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 565
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v23, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 569
    .local v23, cg28:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    const-string v31, "2611000"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 570
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 571
    const-string v31, "0000000"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 572
    const-string v31, "3"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 573
    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method private addMru()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 295
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    .line 296
    .local v1, sendresult:[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 297
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 298
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 299
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    aput-object v2, v1, v8

    .line 300
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    aput-object v2, v1, v9

    .line 302
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<--------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->freqList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->freqList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->freqList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v3, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 306
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v3, "rahul : no duplicate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v0, resIntent:Landroid/content/Intent;
    const-string v2, "MRU_ADD_STRING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/samsung/wimax/napid/WriteMRU;->setResult(ILandroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/WriteMRU;->finish()V

    .line 316
    .end local v0           #resIntent:Landroid/content/Intent;
    :goto_ac
    return-void

    .line 313
    :cond_ad
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v3, "rahul : duplicate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v2, "Please choose Other Frequency, It is already taken"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_ac
.end method

.method private handleItemClickInCh1Spinner(Ljava/lang/String;)V
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 174
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v3, "HANDLEITEMCLICK CALLED -------1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11c

    .line 178
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mChannelGroup:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    .line 179
    .local v0, cg:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch3 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18e

    .line 186
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 191
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 192
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11d

    .line 193
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mBandWidth:Landroid/widget/TextView;

    const-string v3, "BANDWIDTH :  10MHZ"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_cb
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_155

    .line 203
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mFftSize:Landroid/widget/TextView;

    const-string v3, "FFT SIZE :  512p"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :goto_e0
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 212
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 213
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 214
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 215
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/WriteMRU;->handleItemClickInCh2Spinner(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 217
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 263
    .end local v0           #cg:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    :cond_11c
    :goto_11c
    return-void

    .line 195
    .restart local v0       #cg:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;
    :cond_11d
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_133

    .line 196
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mBandWidth:Landroid/widget/TextView;

    const-string v3, "BANDWIDTH :  5MHZ"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cb

    .line 199
    :cond_133
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mBandWidth:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BANDWIDTH :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MHZ"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_cb

    .line 205
    :cond_155
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16c

    .line 206
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mFftSize:Landroid/widget/TextView;

    const-string v3, "FFT SIZE :  1024p"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e0

    .line 209
    :cond_16c
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mFftSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FFT SIZE :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e0

    .line 221
    :cond_18e
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1fe

    .line 224
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 225
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 228
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 229
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 230
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 231
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 232
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 234
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 236
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/WriteMRU;->handleItemClickInCh2Spinner(Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 241
    :cond_1fe
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26e

    .line 244
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->bwidth:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->fftSize:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 250
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 251
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 252
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 253
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 254
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 255
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v3, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 257
    iget-object v2, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch1:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/WriteMRU;->handleItemClickInCh2Spinner(Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 176
    :cond_26e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a
.end method

.method private handleItemClickInCh2Spinner(Ljava/lang/String;)V
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v1, "----------HANDLEITEMCLICK CALLED 2 -------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_41

    .line 269
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->thirdSpinnerItem:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 272
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->thirdSpinnerItem:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->thirdSpinnerItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 286
    :goto_3b
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 288
    return-void

    .line 279
    :cond_41
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->thirdSpinnerItem:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch2:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 282
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->mSelected:Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->thirdSpinnerItem:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/wimax/napid/WriteMRU$ChannelGroup;->ch3:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/wimax/napid/WriteMRU;->thirdSpinnerItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3b
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v1, "onconfig change called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f030019

    const v5, 0x1090008

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v3, 0x7f03001b

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/napid/WriteMRU;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/WriteMRU;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "channellist"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->freqList:Ljava/util/ArrayList;

    .line 76
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 77
    const v3, 0x7f0800f3

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/napid/WriteMRU;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->mBandWidth:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f0800f4

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/napid/WriteMRU;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->mFftSize:Landroid/widget/TextView;

    .line 79
    const v3, 0x7f0800f5

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/napid/WriteMRU;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->okBtn:Landroid/widget/Button;

    .line 80
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->okBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/wimax/napid/WriteMRU;->mClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-direct {p0}, Lcom/samsung/wimax/napid/WriteMRU;->addChannelGroup()V

    .line 83
    const v3, 0x7f0800f0

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/napid/WriteMRU;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf1:Landroid/widget/Spinner;

    .line 84
    const v3, 0x7f040008

    invoke-static {p0, v3, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf1Adapter:Landroid/widget/ArrayAdapter;

    .line 85
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf1Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf1:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf1Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 88
    const v3, 0x7f0800f1

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/napid/WriteMRU;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2:Landroid/widget/Spinner;

    .line 89
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    .line 91
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 92
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->secondSpinnerArray:[Ljava/lang/String;

    .line 95
    const v3, 0x7f0800f2

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/napid/WriteMRU;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3:Landroid/widget/Spinner;

    .line 97
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3Adapter:Landroid/widget/ArrayAdapter;

    .line 98
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 99
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf3Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 101
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf1:Landroid/widget/Spinner;

    new-instance v4, Lcom/samsung/wimax/napid/WriteMRU$1;

    invoke-direct {v4, p0}, Lcom/samsung/wimax/napid/WriteMRU$1;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 123
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->cf2:Landroid/widget/Spinner;

    new-instance v4, Lcom/samsung/wimax/napid/WriteMRU$2;

    invoke-direct {v4, p0}, Lcom/samsung/wimax/napid/WriteMRU$2;-><init>(Lcom/samsung/wimax/napid/WriteMRU;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/WriteMRU;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 140
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "RCODE"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 141
    .local v2, reqCode:I
    const/4 v3, 0x7

    if-ne v2, v3, :cond_dd

    .line 143
    iget-object v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v4, " Getting Edit req code"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/wimax/napid/WriteMRU;->selectionString:Z

    .line 148
    :cond_dd
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU;->TAG:Ljava/lang/String;

    const-string v1, "onResume -------1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/samsung/wimax/napid/WriteMRU;->CheckWimaxOn()Z

    move-result v0

    if-nez v0, :cond_10

    .line 157
    :cond_10
    return-void
.end method
