.class Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field bottomLabel:Landroid/widget/TextView;

.field bottomRightLabel:Landroid/widget/TextView;

.field checkButton:Landroid/widget/CheckBox;

.field clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

.field digitalClock:Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

.field gap:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

.field topLabel:Landroid/widget/TextView;

.field v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter "v"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    .line 303
    return-void
.end method


# virtual methods
.method getBottomLabel()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->bottomLabel:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e0136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->bottomLabel:Landroid/widget/TextView;

    .line 334
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->bottomLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method getBottomRightLabel()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->bottomRightLabel:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->bottomRightLabel:Landroid/widget/TextView;

    .line 342
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->bottomRightLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method getCheckButton()Landroid/widget/CheckBox;
    .registers 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->checkButton:Landroid/widget/CheckBox;

    if-nez v0, :cond_11

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e00dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->checkButton:Landroid/widget/CheckBox;

    .line 392
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->checkButton:Landroid/widget/CheckBox;

    return-object v0
.end method

.method getClock()Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    if-nez v0, :cond_2f

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setDialResourceId([I)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_3a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setHourHandResourceId([I)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setMinuteHandResourceId([I)V

    .line 360
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    return-object v0

    .line 348
    :array_32
    .array-data 0x4
        0x6dt 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
    .end array-data

    .line 350
    :array_3a
    .array-data 0x4
        0x9at 0x2t 0x2t 0x7ft
        0xa4t 0x2t 0x2t 0x7ft
    .end array-data

    .line 354
    :array_42
    .array-data 0x4
        0x9bt 0x2t 0x2t 0x7ft
        0xa5t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method getDialogClock()Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    if-nez v0, :cond_2f

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setDialResourceId([I)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_3a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setHourHandResourceId([I)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    new-array v1, v2, [I

    fill-array-data v1, :array_42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setMinuteHandResourceId([I)V

    .line 377
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->clock:Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    return-object v0

    .line 365
    :array_32
    .array-data 0x4
        0x6et 0x0t 0x2t 0x7ft
        0x71t 0x0t 0x2t 0x7ft
    .end array-data

    .line 367
    :array_3a
    .array-data 0x4
        0x9ct 0x2t 0x2t 0x7ft
        0x9et 0x2t 0x2t 0x7ft
    .end array-data

    .line 371
    :array_42
    .array-data 0x4
        0x9dt 0x2t 0x2t 0x7ft
        0x9ft 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->digitalClock:Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    if-nez v0, :cond_11

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->digitalClock:Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    .line 384
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->digitalClock:Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    return-object v0
.end method

.method getGap()Landroid/view/View;
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->gap:Landroid/view/View;

    if-nez v0, :cond_f

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->gap:Landroid/view/View;

    .line 310
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->gap:Landroid/view/View;

    return-object v0
.end method

.method getIcon()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 318
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTopLabel()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->v:Landroid/view/View;

    const v1, 0x7f0e0134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    .line 326
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->topLabel:Landroid/widget/TextView;

    return-object v0
.end method
