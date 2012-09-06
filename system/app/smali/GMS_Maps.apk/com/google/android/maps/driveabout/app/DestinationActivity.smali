.class public Lcom/google/android/maps/driveabout/app/DestinationActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# static fields
.field private static final a:[Lcom/google/android/maps/driveabout/app/N;


# instance fields
.field private b:[Lcom/google/android/maps/driveabout/app/N;

.field private c:Lcom/google/android/maps/driveabout/app/N;

.field private d:[Lo/b;

.field private e:Landroid/os/Handler;

.field private f:Lcom/google/android/maps/driveabout/app/ad;

.field private g:Landroid/location/LocationManager;

.field private h:Landroid/location/LocationListener;

.field private i:Lm/b;

.field private j:Lcom/google/android/maps/driveabout/app/al;

.field private k:Lcom/google/android/maps/driveabout/app/R;

.field private l:Lcom/google/android/maps/driveabout/app/bL;

.field private final m:Lcom/google/android/maps/driveabout/app/l;

.field private final n:Ljava/lang/Runnable;

.field private final o:Lt/b;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

.field private u:Z

.field private v:Lo/f;

.field private w:Lcom/google/android/maps/driveabout/app/O;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 119
    new-array v0, v5, [Lcom/google/android/maps/driveabout/app/N;

    new-instance v1, Lcom/google/android/maps/driveabout/app/N;

    const v2, 0x7f020133

    const v3, 0x7f0d00d5

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/app/N;-><init>(IIII)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/android/maps/driveabout/app/N;

    const v2, 0x7f020136

    const v3, 0x7f0d00d6

    invoke-direct {v1, v2, v3, v7, v5}, Lcom/google/android/maps/driveabout/app/N;-><init>(IIII)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/android/maps/driveabout/app/N;

    const v2, 0x7f020130

    const v3, 0x7f0d00d7

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/google/android/maps/driveabout/app/N;-><init>(IIII)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/N;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/N;

    .line 148
    new-instance v0, Lcom/google/android/maps/driveabout/app/l;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/l;

    .line 150
    new-instance v0, Lcom/google/android/maps/driveabout/app/r;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/r;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/google/android/maps/driveabout/app/y;

    const-string v1, "DestinationActivityIdleHandler"

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/y;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lt/b;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Z

    .line 1290
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/W;)I
    .registers 2
    .parameter

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/W;)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/location/Location;)J
    .registers 5
    .parameter

    .prologue
    .line 1071
    if-nez p0, :cond_8

    .line 1072
    const-wide v0, 0x7fffffffffffffffL

    .line 1074
    :goto_7
    return-wide v0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_7
.end method

.method private a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/N;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 490
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_25

    const-string v1, "TravelMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 492
    const-string v1, "TravelMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 497
    :goto_15
    sget-object v4, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    array-length v5, v4

    move v2, v3

    :goto_19
    if-ge v2, v5, :cond_30

    aget-object v1, v4, v2

    .line 498
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/N;->a()I

    move-result v6

    if-ne v6, v0, :cond_2c

    move-object v0, v1

    .line 502
    :goto_24
    return-object v0

    .line 494
    :cond_25
    const-string v0, "PickerTravelMode"

    invoke-static {p0, v0, v3}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_15

    .line 497
    :cond_2c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    .line 502
    :cond_30
    sget-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    aget-object v0, v0, v3

    goto :goto_24
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/N;)Lcom/google/android/maps/driveabout/app/N;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/R;)Lcom/google/android/maps/driveabout/app/R;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/R;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/bL;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bL;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lm/b;)Lm/b;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Lm/b;

    return-object p1
.end method

.method private a(I)V
    .registers 2
    .parameter

    .prologue
    .line 963
    packed-switch p1, :pswitch_data_14

    .line 977
    :goto_3
    return-void

    .line 965
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i()V

    goto :goto_3

    .line 968
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->onSearchRequested()Z

    goto :goto_3

    .line 971
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k()V

    goto :goto_3

    .line 974
    :pswitch_10
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j()V

    goto :goto_3

    .line 963
    :pswitch_data_14
    .packed-switch 0x7f0d00c4
        :pswitch_8
        :pswitch_4
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lo/P;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lo/P;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;[Lo/b;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a([Lo/b;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/N;)V
    .registers 3
    .parameter

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    .line 1255
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    if-eqz v0, :cond_b

    .line 1256
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/N;)V

    .line 1259
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/N;)V

    .line 1260
    return-void
.end method

.method private a(Lcom/google/googlenav/j;)V
    .registers 7
    .parameter

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Lm/b;

    invoke-virtual {v0}, Lm/b;->n()Lat/B;

    move-result-object v1

    .line 1145
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1147
    const/4 v0, 0x0

    :goto_f
    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    array-length v3, v3

    if-ge v0, v3, :cond_34

    .line 1148
    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, v1}, Lcom/google/android/maps/driveabout/app/N;->a(Lcom/google/googlenav/j;Lat/B;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1149
    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1150
    :cond_28
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    sget-object v4, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    aget-object v4, v4, v0

    if-ne v3, v4, :cond_25

    .line 1151
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    goto :goto_25

    .line 1154
    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/app/N;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/N;

    .line 1155
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    if-eqz v0, :cond_4d

    .line 1156
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setVisibleTravelModes([Lcom/google/android/maps/driveabout/app/N;)V

    .line 1158
    :cond_4d
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 567
    const-string v0, "Contact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 568
    const v0, 0x7f0d00c6

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    .line 581
    :cond_e
    :goto_e
    return-void

    .line 569
    :cond_f
    const-string v0, "StarredItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 570
    const v0, 0x7f0d00c7

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_e

    .line 571
    :cond_1e
    const-string v0, "Speak"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ca;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 573
    const v0, 0x7f0d00c5

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_e

    .line 576
    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/R;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 577
    const-string v0, "Search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 578
    const v0, 0x7f0d00c4

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_e
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 848
    new-instance v0, Lo/P;

    invoke-direct {v0, p1, v1, v1, v1}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lo/P;I)V

    .line 849
    return-void
.end method

.method private a(Lo/P;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 853
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    if-nez v0, :cond_7

    .line 910
    :cond_6
    :goto_6
    return-void

    .line 859
    :cond_7
    const/4 v0, 0x0

    .line 860
    const/4 v3, 0x6

    if-ne p2, v3, :cond_2e

    .line 862
    invoke-static {p0}, Lo/H;->a(Landroid/content/Context;)Lo/H;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Lo/H;->b()Lo/a;

    move-result-object v3

    .line 868
    invoke-virtual {v0}, Lo/H;->d()V

    .line 869
    invoke-virtual {v3}, Lo/a;->a()Lo/g;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_6

    .line 874
    invoke-virtual {v0}, Lo/g;->d()[Lo/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:[Lo/b;

    .line 876
    invoke-virtual {v3}, Lo/a;->d()[Lo/P;

    move-result-object v0

    .line 877
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object p1, v0, v3

    .line 878
    aget-object v0, v0, v1

    move v1, v2

    .line 880
    :cond_2e
    const-string v3, "PickerTravelMode"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/N;->a()I

    move-result v4

    invoke-static {p0, v3, v4}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 883
    const-string v3, "D"

    invoke-static {v3, p2}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    .line 885
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 887
    const-string v4, "TravelMode"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/N;->a()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    const-string v4, "ForceNewDestination"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 889
    const/4 v2, 0x2

    if-ne p2, v2, :cond_ae

    .line 890
    const-string v2, "Target"

    const-string v4, "Contact"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    :cond_68
    :goto_68
    const/high16 v2, 0x1002

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 897
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 898
    new-instance v4, Lcom/google/android/maps/driveabout/app/bk;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/app/bk;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/android/maps/driveabout/app/bk;->a(Lo/P;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/app/bk;->b(Lo/P;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/N;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/bk;->a(I)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:[Lo/b;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/bk;->a([Lo/b;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bk;->a(Z)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/bk;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bk;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bk;->a()Landroid/net/Uri;

    move-result-object v0

    .line 907
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 908
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    .line 909
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    goto/16 :goto_6

    .line 891
    :cond_ae
    const/4 v2, 0x3

    if-ne p2, v2, :cond_68

    .line 892
    const-string v2, "Target"

    const-string v4, "StarredItem"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_68
.end method

.method private a([Lo/b;)V
    .registers 2
    .parameter

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:[Lo/b;

    .line 1287
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Z

    return p1
.end method

.method private static b(Lcom/google/android/maps/driveabout/app/W;)I
    .registers 2
    .parameter

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/W;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 842
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 833
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 835
    :pswitch_b
    const/4 v0, 0x2

    goto :goto_8

    .line 837
    :pswitch_d
    const/4 v0, 0x3

    goto :goto_8

    .line 840
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_8

    .line 831
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private b(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 558
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Target"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 560
    const-string v0, "Target"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    :cond_23
    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 470
    .line 471
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:[Lo/b;

    if-eqz v1, :cond_14

    .line 472
    invoke-static {}, Lo/c;->a()Lo/c;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:[Lo/b;

    invoke-virtual {v1, v2}, Lo/c;->b([Lo/b;)I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    .line 478
    :cond_14
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Z

    if-eq v1, v0, :cond_1f

    .line 479
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Z

    .line 480
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/O;->b()V

    .line 482
    :cond_1f
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/N;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/N;)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/app/N;)V
    .registers 4
    .parameter

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/N;->a()I

    move-result v0

    invoke-static {v0}, Lo/c;->b(I)[Lo/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a([Lo/b;)V

    .line 1266
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b()V

    .line 1270
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bL;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/N;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bL;->c_(I)V

    .line 1271
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/app/Application;)V

    .line 1216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    new-instance v1, Lcom/google/android/maps/driveabout/app/t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/t;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/u;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/al;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1233
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    return p1
.end method

.method private b(Lcom/google/googlenav/j;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1165
    move v0, v1

    :goto_2
    sget-object v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 1166
    sget-object v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[Lcom/google/android/maps/driveabout/app/N;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/N;->a(Lcom/google/android/maps/driveabout/app/N;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/j;->a(I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1170
    :goto_15
    return v1

    .line 1165
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1170
    :cond_19
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private c()V
    .registers 3

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Z

    if-eqz v0, :cond_5

    .line 550
    :goto_4
    return-void

    .line 513
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ca;->a(Landroid/app/Application;)V

    .line 516
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ca;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 517
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q()V

    goto :goto_4

    .line 522
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    const v1, 0x7f0d006a

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/al;->a(I)V

    .line 528
    new-instance v0, Lcom/google/android/maps/driveabout/app/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/J;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationListener;

    .line 529
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    .line 530
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l()Lm/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Lm/b;

    .line 531
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Lm/b;

    if-eqz v0, :cond_3d

    .line 532
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m()V

    .line 536
    :cond_3d
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e()V

    .line 540
    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ab;->a(Landroid/content/Context;)V

    .line 546
    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->b(Lcom/google/googlenav/z;)V

    .line 547
    sget-object v0, Lcom/google/googlenav/z;->b:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->b(Lcom/google/googlenav/z;)V

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Z

    goto :goto_4
.end method

.method private c(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 955
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 959
    :goto_3
    return-void

    .line 956
    :catch_4
    move-exception v0

    .line 957
    const-string v0, "DestinationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Z

    if-nez v0, :cond_11

    .line 663
    const-string v0, "Show Disclaimer"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 664
    const/4 v0, 0x0

    .line 665
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Ljava/lang/String;)V

    .line 670
    :cond_11
    :goto_11
    return-void

    .line 667
    :cond_12
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lt/b;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_11
.end method

.method private e()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    .line 804
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 805
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 808
    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 809
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 812
    :cond_31
    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/R;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/R;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 914
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 915
    const-string v1, "http://maps.google.com/?myl=saddr&dirflg=d&daddr="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 916
    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    .line 919
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    .line 920
    return-void
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/ad;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Lcom/google/android/maps/driveabout/app/ad;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    if-nez v0, :cond_5

    .line 943
    :goto_4
    return-void

    .line 933
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    invoke-static {p0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 935
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bj;->a(Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 941
    :goto_1a
    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 942
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    goto :goto_4

    .line 937
    :cond_23
    const-string v1, "PickerTravelMode"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/N;->a()I

    move-result v2

    invoke-static {p0, v1, v2}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 939
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/N;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bj;->a(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1a
.end method

.method private h()V
    .registers 3

    .prologue
    .line 947
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 948
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 949
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    .line 950
    return-void
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lm/b;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Lm/b;

    return-object v0
.end method

.method private i()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 980
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Z

    .line 981
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/maps/driveabout/app/eE;->a(Landroid/app/Activity;ILjava/lang/String;Z)V

    .line 982
    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 985
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 986
    return-void
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/bL;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Lcom/google/android/maps/driveabout/app/bL;

    return-object v0
.end method

.method private k()V
    .registers 3

    .prologue
    .line 989
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Lm/b;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/content/Context;Lm/b;Z)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 990
    return-void
.end method

.method private l()Lm/b;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1045
    .line 1048
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1049
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1051
    :goto_17
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    const-string v3, "network"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1052
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 1054
    :goto_2d
    if-eqz v0, :cond_40

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-gez v3, :cond_40

    .line 1055
    new-instance v1, Lm/b;

    invoke-direct {v1, v0}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 1066
    :cond_3f
    :goto_3f
    return-object v1

    .line 1058
    :cond_40
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_5d

    .line 1063
    :goto_4c
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    cmp-long v2, v2, v4

    if-gez v2, :cond_3f

    .line 1064
    new-instance v1, Lm/b;

    invoke-direct {v1, v0}, Lm/b;-><init>(Landroid/location/Location;)V

    goto :goto_3f

    :cond_5d
    move-object v0, v2

    .line 1061
    goto :goto_4c

    :cond_5f
    move-object v2, v1

    goto :goto_2d

    :cond_61
    move-object v0, v1

    goto :goto_17
.end method

.method static synthetic l(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/al;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    return-object v0
.end method

.method private m()V
    .registers 1

    .prologue
    .line 1099
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n()V

    .line 1100
    return-void
.end method

.method private n()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1107
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/ca;->h()Lcom/google/googlenav/j;

    move-result-object v2

    .line 1109
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/googlenav/j;)V

    .line 1110
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/N;

    array-length v3, v3

    if-eqz v3, :cond_36

    .line 1115
    const-string v2, "e"

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 1116
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/al;->b()V

    .line 1117
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    .line 1119
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    if-nez v2, :cond_29

    .line 1120
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/N;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/N;)V

    .line 1123
    :cond_29
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/N;

    array-length v2, v2

    if-eq v2, v0, :cond_34

    .line 1124
    :goto_2e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/O;->a(Z)V

    .line 1141
    :goto_33
    return-void

    :cond_34
    move v0, v1

    .line 1123
    goto :goto_2e

    .line 1125
    :cond_36
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/googlenav/j;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1126
    invoke-virtual {v2}, Lcom/google/googlenav/j;->b()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1130
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o()V

    goto :goto_33

    .line 1135
    :cond_46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    const v1, 0x7f0d006b

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/al;->a(I)V

    .line 1136
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 1139
    :cond_58
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p()V

    goto :goto_33
.end method

.method private o()V
    .registers 8

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    const v1, 0x7f0d0003

    const v2, 0x7f0d0004

    const v3, 0x7f0d0046

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/app/F;

    invoke-direct {v5, p0}, Lcom/google/android/maps/driveabout/app/F;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/al;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1190
    return-void
.end method

.method private p()V
    .registers 8

    .prologue
    .line 1197
    new-instance v5, Lcom/google/android/maps/driveabout/app/G;

    invoke-direct {v5, p0}, Lcom/google/android/maps/driveabout/app/G;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    .line 1203
    new-instance v6, Lcom/google/android/maps/driveabout/app/s;

    invoke-direct {v6, p0}, Lcom/google/android/maps/driveabout/app/s;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    .line 1209
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    const v1, 0x7f0d005a

    const v2, 0x7f0d00bf

    const v3, 0x7f0d0080

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/al;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1212
    return-void
.end method

.method private q()V
    .registers 5

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    new-instance v1, Lcom/google/android/maps/driveabout/app/v;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/v;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/w;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/w;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/al;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1251
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:[Lo/b;

    new-instance v2, Lcom/google/android/maps/driveabout/app/x;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/x;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/al;->a([Lo/b;Lcom/google/android/maps/driveabout/app/aE;)V

    .line 1282
    return-void
.end method

.method public handleContactsClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j()V

    .line 1004
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/O;->b()V

    .line 1005
    return-void
.end method

.method public handleDriveHomeClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 1013
    new-instance v0, Lcom/google/android/maps/driveabout/app/E;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/E;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    .line 1025
    const-string v1, "HomeAddress"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lt/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1027
    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/al;->a(Lcom/google/android/maps/driveabout/app/aD;)V

    .line 1031
    :goto_19
    return-void

    .line 1029
    :cond_1a
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;I)V

    goto :goto_19
.end method

.method public handleFreeDriveClick(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g()V

    .line 1035
    return-void
.end method

.method public handleSpeakDestinationClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i()V

    .line 994
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/O;->b()V

    .line 995
    return-void
.end method

.method public handleStarredItemsClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k()V

    .line 1009
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/O;->b()V

    .line 1010
    return-void
.end method

.method public handleTypeDestinationClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->onSearchRequested()Z

    .line 999
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/O;->b()V

    .line 1000
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 674
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Z

    .line 676
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    new-instance v1, Lcom/google/android/maps/driveabout/app/C;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/C;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-static {p0, p2, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/eE;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/eH;)V

    .line 694
    :cond_10
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 456
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    if-eqz v0, :cond_c

    .line 457
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a()V

    .line 459
    :cond_c
    invoke-static {}, Lag/h;->b()Lag/h;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 460
    invoke-static {}, Lag/h;->b()Lag/h;

    move-result-object v0

    invoke-virtual {v0}, Lag/h;->e()V

    .line 462
    :cond_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const v3, 0x7f04002c

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/l;->a(Landroid/app/Activity;)V

    .line 189
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setDefaultKeyMode(I)V

    .line 190
    invoke-static {v5}, Lcom/google/android/maps/driveabout/app/dh;->a(Z)V

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_76

    invoke-static {p0}, Lh/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 195
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setContentView(I)V

    .line 196
    new-instance v0, Lcom/google/android/maps/driveabout/app/M;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/app/M;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    .line 213
    :goto_2d
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dD;->a:[Lcom/google/android/maps/driveabout/vector/dg;

    const-string v1, "DriveAbout"

    const v2, 0x7f070003

    new-instance v3, Lcom/google/googlenav/android/I;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/android/I;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/dD;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/dg;Ljava/lang/String;ILaT/o;)V

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:Landroid/os/Handler;

    .line 217
    new-instance v0, Lcom/google/android/maps/driveabout/app/ad;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Lcom/google/android/maps/driveabout/app/ad;

    .line 218
    new-instance v0, Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    .line 222
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ForceNewDestination"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_ac

    invoke-static {p0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    .line 272
    :goto_75
    return-void

    .line 197
    :cond_76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_95

    .line 198
    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setContentView(I)V

    .line 199
    invoke-static {p0}, Lh/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 200
    new-instance v0, Lcom/google/android/maps/driveabout/app/I;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/app/I;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    goto :goto_2d

    .line 202
    :cond_8d
    new-instance v0, Lcom/google/android/maps/driveabout/app/H;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/app/H;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    goto :goto_2d

    .line 205
    :cond_95
    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setContentView(I)V

    .line 206
    invoke-static {p0}, Lh/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a6

    new-instance v0, Lcom/google/android/maps/driveabout/app/L;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/app/L;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    :goto_a3
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    goto :goto_2d

    :cond_a6
    new-instance v0, Lcom/google/android/maps/driveabout/app/O;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/app/O;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    goto :goto_a3

    .line 231
    :cond_ac
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    new-instance v1, Lcom/google/android/maps/driveabout/app/z;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/al;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/O;->a()V

    .line 240
    new-instance v0, Lcom/google/android/maps/driveabout/app/A;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/A;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Lo/f;

    .line 251
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Lo/f;

    invoke-static {v0}, Lo/c;->a(Lo/f;)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/K;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/K;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/N;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/N;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, "Speak"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ca;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 264
    const v0, 0x7f0d00c5

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    .line 265
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/R;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_75

    .line 266
    :cond_101
    const-string v1, "Show Disclaimer"

    invoke-static {p0, v1, v5}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 267
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 269
    :cond_10e
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lt/b;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_75
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 713
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Lcom/google/android/maps/driveabout/app/ad;

    if-eqz v0, :cond_c

    .line 645
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Lcom/google/android/maps/driveabout/app/ad;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ad;->a()V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Lcom/google/android/maps/driveabout/app/ad;

    .line 648
    :cond_c
    invoke-static {p0}, Lh/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 649
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Lo/f;

    invoke-static {v0}, Lo/c;->b(Lo/f;)V

    .line 651
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->a()V

    .line 652
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->a()V

    .line 654
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 655
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 698
    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    .line 700
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/R;

    if-eq v0, v1, :cond_12

    .line 701
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/R;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 702
    const/4 v0, 0x1

    .line 706
    :goto_11
    return v0

    .line 704
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    .line 706
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 587
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    if-nez v0, :cond_8

    .line 604
    :cond_7
    :goto_7
    return-void

    .line 592
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 593
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 595
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;I)V

    goto :goto_7

    .line 598
    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/N;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    if-eq v0, v1, :cond_38

    .line 600
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/N;)V

    .line 602
    :cond_38
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 759
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 760
    sparse-switch v1, :sswitch_data_40

    .line 782
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 762
    :sswitch_a
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h()V

    goto :goto_9

    .line 765
    :sswitch_e
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g()V

    goto :goto_9

    .line 768
    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a()V

    goto :goto_9

    .line 771
    :sswitch_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/al;->a(Lcom/google/android/maps/driveabout/app/aD;)V

    goto :goto_9

    .line 774
    :sswitch_1d
    const-string v1, "A"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 775
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/maps/driveabout/app/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 778
    :sswitch_2d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {}, Lcom/google/googlenav/K;->ae()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 760
    :sswitch_data_40
    .sparse-switch
        0x7f1000f3 -> :sswitch_1d
        0x7f1000f4 -> :sswitch_2d
        0x7f1004b3 -> :sswitch_a
        0x7f1004b4 -> :sswitch_12
        0x7f1004b5 -> :sswitch_16
        0x7f1004b7 -> :sswitch_e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 625
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 626
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->c()V

    .line 628
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Z

    if-nez v0, :cond_15

    .line 629
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lt/b;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 631
    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_20

    .line 632
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 636
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->l()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 638
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    .line 640
    :cond_3d
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const v1, 0x7f1004b3

    const/4 v2, 0x1

    .line 718
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 721
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/O;->a(Landroid/view/Menu;)V

    .line 723
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/U;

    if-eqz v0, :cond_62

    .line 724
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 729
    :goto_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_53

    .line 730
    const v0, 0x7f1004b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 732
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 734
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    .line 735
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    new-instance v1, Lcom/google/android/maps/driveabout/app/D;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/D;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setTravelModeChangedListener(Lcom/google/android/maps/driveabout/widgets/f;)V

    .line 743
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/N;)V

    .line 744
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/N;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setVisibleTravelModes([Lcom/google/android/maps/driveabout/app/N;)V

    .line 748
    :cond_53
    const v0, 0x7f1004b4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_61

    .line 750
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 753
    :cond_61
    return v2

    .line 726
    :cond_62
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1b
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 608
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 609
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/l;->b()V

    .line 613
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    if-eqz v0, :cond_18

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    .line 615
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Lt/b;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 618
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Z

    if-eqz v0, :cond_1f

    .line 619
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e()V

    .line 621
    :cond_1f
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 791
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 792
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/R;

    if-ne p1, v0, :cond_1f

    .line 793
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 794
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 799
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 800
    return-void

    .line 796
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 797
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_17
.end method
