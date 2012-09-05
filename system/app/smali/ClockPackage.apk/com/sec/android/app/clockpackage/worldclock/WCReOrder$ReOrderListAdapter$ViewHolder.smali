.class Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WCReOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field bottomLabel:Landroid/widget/TextView;

.field bottomRightLabel:Landroid/widget/TextView;

.field clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

.field digitalClock:Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

.field gap:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

.field topLabel:Landroid/widget/TextView;

.field v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "v"

    .prologue
    .line 339
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->this$1:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    .line 341
    return-void
.end method


# virtual methods
.method getBottomLabel()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 362
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->bottomLabel:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e0136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->bottomLabel:Landroid/widget/TextView;

    .line 365
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->bottomLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method getBottomRightLabel()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 368
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->bottomRightLabel:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->bottomRightLabel:Landroid/widget/TextView;

    .line 371
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->bottomRightLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method getClock()Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;
    .registers 4

    .prologue
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    const/4 v2, 0x2

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    if-nez v0, :cond_2f

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setDialResourceId([I)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_3a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setHourHandResourceId([I)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setMinuteHandResourceId([I)V

    .line 388
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    return-object v0

    .line 376
    :array_32
    .array-data 0x4
        0x6dt 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
    .end array-data

    .line 379
    :array_3a
    .array-data 0x4
        0x9at 0x2t 0x2t 0x7ft
        0xa4t 0x2t 0x2t 0x7ft
    .end array-data

    .line 383
    :array_42
    .array-data 0x4
        0x9bt 0x2t 0x2t 0x7ft
        0xa5t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;
    .registers 3

    .prologue
    .line 391
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->digitalClock:Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    if-nez v0, :cond_11

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->digitalClock:Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    .line 394
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->digitalClock:Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    return-object v0
.end method

.method getGap()Landroid/view/View;
    .registers 3

    .prologue
    .line 343
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->gap:Landroid/view/View;

    if-nez v0, :cond_f

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->gap:Landroid/view/View;

    .line 346
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->gap:Landroid/view/View;

    return-object v0
.end method

.method getIcon()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 349
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 353
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTopLabel()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 356
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e0134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    .line 359
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    return-object v0
.end method
