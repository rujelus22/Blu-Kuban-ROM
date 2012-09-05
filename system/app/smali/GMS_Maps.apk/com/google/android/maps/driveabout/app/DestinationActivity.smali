.class public Lcom/google/android/maps/driveabout/app/DestinationActivity;
.super Landroid/app/ListActivity;


# static fields
.field private static final a:[I

.field private static final b:[Lcom/google/android/maps/driveabout/app/O;


# instance fields
.field private c:[Lcom/google/android/maps/driveabout/app/O;

.field private d:Lcom/google/android/maps/driveabout/app/O;

.field private e:[Lu/b;

.field private f:Landroid/os/Handler;

.field private g:Lcom/google/android/maps/driveabout/app/ae;

.field private h:Landroid/location/LocationManager;

.field private i:Landroid/location/LocationListener;

.field private j:Ls/b;

.field private k:Lcom/google/android/maps/driveabout/app/am;

.field private final l:Landroid/content/BroadcastReceiver;

.field private m:Lcom/google/android/maps/driveabout/app/S;

.field private final n:Lcom/google/android/maps/driveabout/app/p;

.field private final o:Ljava/lang/Runnable;

.field private final p:Lz/c;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

.field private v:Z

.field private w:Lu/f;

.field private x:Lcom/google/android/maps/driveabout/app/P;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v0, v4, [I

    const v1, 0x10100a0

    aput v1, v0, v5

    sput-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a:[I

    new-array v0, v6, [Lcom/google/android/maps/driveabout/app/O;

    new-instance v1, Lcom/google/android/maps/driveabout/app/O;

    const v2, 0x7f020110

    const v3, 0x7f0b00c7

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/google/android/maps/driveabout/app/O;-><init>(IIII)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/android/maps/driveabout/app/O;

    const v2, 0x7f020113

    const v3, 0x7f0b00c8

    invoke-direct {v1, v2, v3, v7, v6}, Lcom/google/android/maps/driveabout/app/O;-><init>(IIII)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/android/maps/driveabout/app/O;

    const v2, 0x7f02010d

    const v3, 0x7f0b00c9

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/app/O;-><init>(IIII)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/O;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/O;

    new-instance v0, Lcom/google/android/maps/driveabout/app/t;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/t;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/driveabout/app/p;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/p;

    new-instance v0, Lcom/google/android/maps/driveabout/app/A;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/A;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/maps/driveabout/app/B;

    const-string v1, "DestinationActivityIdleHandler"

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Lz/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/X;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/X;)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/location/Location;)J
    .registers 5

    if-nez p0, :cond_8

    const-wide v0, 0x7fffffffffffffffL

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

.method private a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/O;
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v1, "TravelMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "TravelMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_15
    sget-object v4, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    array-length v5, v4

    move v2, v3

    :goto_19
    if-ge v2, v5, :cond_30

    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/O;->a()I

    move-result v6

    if-ne v6, v0, :cond_2c

    move-object v0, v1

    :goto_24
    return-object v0

    :cond_25
    const-string v0, "PickerTravelMode"

    invoke-static {p0, v0, v3}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_15

    :cond_2c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    :cond_30
    sget-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    aget-object v0, v0, v3

    goto :goto_24
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/O;)Lcom/google/android/maps/driveabout/app/O;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/S;)Lcom/google/android/maps/driveabout/app/S;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/S;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ls/b;)Ls/b;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Ls/b;

    return-object p1
.end method

.method private a(I)V
    .registers 2

    packed-switch p1, :pswitch_data_14

    :goto_3
    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j()V

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->onSearchRequested()Z

    goto :goto_3

    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l()V

    goto :goto_3

    :pswitch_10
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k()V

    goto :goto_3

    :pswitch_data_14
    .packed-switch 0x7f0b00b6
        :pswitch_8
        :pswitch_4
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lu/P;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lu/P;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;[Lu/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a([Lu/b;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/O;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/O;)V

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/O;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/j;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Ls/b;

    invoke-virtual {v0}, Ls/b;->n()LaJ/B;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_f
    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    array-length v3, v3

    if-ge v0, v3, :cond_34

    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, v1}, Lcom/google/android/maps/driveabout/app/O;->a(Lcom/google/googlenav/j;LaJ/B;)Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_28
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    sget-object v4, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    aget-object v4, v4, v0

    if-ne v3, v4, :cond_25

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    goto :goto_25

    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/app/O;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/O;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a([Lcom/google/android/maps/driveabout/app/O;)V

    :cond_4d
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Contact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f0b00b8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    const-string v0, "StarredItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f0b00b9

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_e

    :cond_1e
    const-string v0, "Speak"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ci;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    const v0, 0x7f0b00b7

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_e

    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/S;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "Search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0b00b6

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    goto :goto_e
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Lu/P;

    invoke-direct {v0, p1, v1, v1, v1}, Lu/P;-><init>(Ljava/lang/String;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lu/P;I)V

    return-void
.end method

.method private a(Lu/P;I)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_2e

    invoke-static {p0}, Lu/H;->a(Landroid/content/Context;)Lu/H;

    move-result-object v0

    invoke-virtual {v0}, Lu/H;->b()Lu/a;

    move-result-object v3

    invoke-virtual {v0}, Lu/H;->d()V

    invoke-virtual {v3}, Lu/a;->a()Lu/g;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lu/g;->e()[Lu/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[Lu/b;

    invoke-virtual {v3}, Lu/a;->d()[Lu/P;

    move-result-object v0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object p1, v0, v3

    aget-object v0, v0, v1

    move v1, v2

    :cond_2e
    const-string v3, "PickerTravelMode"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/O;->a()I

    move-result v4

    invoke-static {p0, v3, v4}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v3, "D"

    invoke-static {v3, p2}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "TravelMode"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/O;->a()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "ForceNewDestination"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x2

    if-ne p2, v2, :cond_ae

    const-string v2, "Target"

    const-string v4, "Contact"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_68
    :goto_68
    const/high16 v2, 0x1002

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/bi;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/app/bi;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/android/maps/driveabout/app/bi;->a(Lu/P;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/app/bi;->b(Lu/P;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/O;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/bi;->a(I)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[Lu/b;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/bi;->a([Lu/b;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bi;->a(Z)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/bi;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bi;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    goto/16 :goto_6

    :cond_ae
    const/4 v2, 0x3

    if-ne p2, v2, :cond_68

    const-string v2, "Target"

    const-string v4, "StarredItem"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_68
.end method

.method private a([Lu/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[Lu/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Z

    return p1
.end method

.method private static b(Lcom/google/android/maps/driveabout/app/X;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/X;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    :pswitch_b
    const/4 v0, 0x2

    goto :goto_8

    :pswitch_d
    const/4 v0, 0x3

    goto :goto_8

    :pswitch_f
    const/4 v0, 0x6

    goto :goto_8

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

    const/4 v0, 0x0

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

    const-string v0, "Target"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_23
    return-object v0
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.suggest.android.SuggestProvider.INIT_SUGGEST_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/O;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/O;)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/app/O;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/O;->a()I

    move-result v0

    invoke-static {v0}, Lu/c;->b(I)[Lu/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a([Lu/b;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/v;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/w;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/w;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/am;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    return p1
.end method

.method private b(Lcom/google/googlenav/j;)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    sget-object v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    sget-object v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b:[Lcom/google/android/maps/driveabout/app/O;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/O;->a(Lcom/google/android/maps/driveabout/app/O;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/j;->a(I)Z

    move-result v2

    if-nez v2, :cond_16

    :goto_15
    return v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private c()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[Lu/b;

    if-eqz v1, :cond_14

    invoke-static {}, Lu/c;->a()Lu/c;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[Lu/b;

    invoke-virtual {v1, v2}, Lu/c;->b([Lu/b;)I

    move-result v1

    if-lez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->y:Z

    if-eq v1, v0, :cond_1f

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->y:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/P;->b()V

    :cond_1f
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

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

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d()V

    return-void
.end method

.method private d()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ci;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r()V

    goto :goto_4

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/am;->a(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/L;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/L;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Landroid/location/LocationListener;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m()Ls/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Ls/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Ls/b;

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n()V

    :cond_3d
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f()V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ac;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    goto :goto_4
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    return-object v0
.end method

.method private e()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    if-nez v0, :cond_11

    const-string v0, "Show Disclaimer"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Lz/c;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_11
.end method

.method private f()V
    .registers 7

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_31
    return-void
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/ae;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ae;

    return-object v0
.end method

.method private g()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://maps.google.com/?myl=saddr&dirflg=d&daddr="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    return-void
.end method

.method private h()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/googlenav/android/Y;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/google/android/maps/driveabout/app/bh;->l()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_19
    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    goto :goto_4

    :cond_22
    const-string v1, "PickerTravelMode"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/O;->a()I

    move-result v2

    invoke-static {p0, v1, v2}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/O;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bh;->a(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_19
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Ls/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Ls/b;

    return-object v0
.end method

.method private i()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private j()V
    .registers 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/maps/driveabout/app/eS;->a(Landroid/app/Activity;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n()V

    return-void
.end method

.method private k()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/S;->a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/app/S;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g()V

    return-void
.end method

.method static synthetic l(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/am;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    return-object v0
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Ls/b;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/S;->a(Landroid/content/Context;Ls/b;Z)Lcom/google/android/maps/driveabout/app/S;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private m()Ls/b;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_17
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    const-string v3, "network"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :goto_2d
    if-eqz v0, :cond_40

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-gez v3, :cond_40

    new-instance v1, Ls/b;

    invoke-direct {v1, v0}, Ls/b;-><init>(Landroid/location/Location;)V

    :cond_3f
    :goto_3f
    return-object v1

    :cond_40
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_5d

    :goto_4c
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/location/Location;)J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    cmp-long v2, v2, v4

    if-gez v2, :cond_3f

    new-instance v1, Ls/b;

    invoke-direct {v1, v0}, Ls/b;-><init>(Landroid/location/Location;)V

    goto :goto_3f

    :cond_5d
    move-object v0, v2

    goto :goto_4c

    :cond_5f
    move-object v2, v1

    goto :goto_2d

    :cond_61
    move-object v0, v1

    goto :goto_17
.end method

.method private n()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/S;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j:Ls/b;

    invoke-virtual {v1}, Ls/b;->m()Lt/o;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/maps/driveabout/app/S;->a(Lt/o;Lu/P;Ljava/util/ArrayList;)V

    return-void
.end method

.method private o()V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/ci;->g()Lcom/google/googlenav/j;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/googlenav/j;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/O;

    array-length v3, v3

    if-eqz v3, :cond_36

    const-string v2, "e"

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/am;->b()V

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Z

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/O;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/O;)V

    :cond_29
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/O;

    array-length v2, v2

    if-eq v2, v0, :cond_34

    :goto_2e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/P;->a(Z)V

    :goto_33
    return-void

    :cond_34
    move v0, v1

    goto :goto_2e

    :cond_36
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/googlenav/j;)Z

    move-result v0

    if-nez v0, :cond_58

    invoke-virtual {v2}, Lcom/google/googlenav/j;->b()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p()V

    goto :goto_33

    :cond_46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/am;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    :cond_58
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q()V

    goto :goto_33
.end method

.method private p()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    const v1, 0x7f0b0003

    const v2, 0x7f0b0004

    const v3, 0x7f0b0045

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/app/H;

    invoke-direct {v5, p0}, Lcom/google/android/maps/driveabout/app/H;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/am;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private q()V
    .registers 8

    new-instance v5, Lcom/google/android/maps/driveabout/app/I;

    invoke-direct {v5, p0}, Lcom/google/android/maps/driveabout/app/I;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    new-instance v6, Lcom/google/android/maps/driveabout/app/u;

    invoke-direct {v6, p0}, Lcom/google/android/maps/driveabout/app/u;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    const v1, 0x7f0b004d

    const v2, 0x7f0b00b1

    const v3, 0x7f0b0073

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/am;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private r()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/x;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/x;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/y;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/y;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/am;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e:[Lu/b;

    new-instance v2, Lcom/google/android/maps/driveabout/app/z;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/z;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/am;->a([Lu/b;Lcom/google/android/maps/driveabout/app/aC;)V

    return-void
.end method

.method public handleContactsClick(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/P;->b()V

    return-void
.end method

.method public handleSpeakDestinationClick(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->j()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/P;->b()V

    return-void
.end method

.method public handleStarredItemsClick(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/P;->b()V

    return-void
.end method

.method public handleTypeDestinationClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->onSearchRequested()Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/P;->b()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/F;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/F;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-static {p0, p2, p3, v0, v1}, Lcom/google/android/maps/driveabout/app/eS;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/eV;)V

    :cond_10
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a()V

    :cond_c
    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    invoke-virtual {v0}, Law/g;->d()V

    :cond_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const v2, 0x7f030020

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/p;->a(Landroid/app/Activity;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setDefaultKeyMode(I)V

    invoke-static {v6}, Lcom/google/android/maps/driveabout/app/ds;->a(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7b

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setContentView(I)V

    invoke-static {p0}, Ln/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_73

    new-instance v0, Lcom/google/android/maps/driveabout/app/K;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/K;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    :goto_2a
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cS;->d:[Lcom/google/android/maps/driveabout/vector/cU;

    const-string v1, "DriveAbout"

    const v2, 0x7f060003

    new-instance v3, Lcom/google/googlenav/android/M;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/android/M;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cS;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/cU;Ljava/lang/String;ILaf/n;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/maps/driveabout/app/ae;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ae;

    new-instance v0, Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ForceNewDestination"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_92

    invoke-static {p0}, Lcom/google/googlenav/android/Y;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_92

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    :goto_72
    return-void

    :cond_73
    new-instance v0, Lcom/google/android/maps/driveabout/app/J;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/J;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    goto :goto_2a

    :cond_7b
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setContentView(I)V

    invoke-static {p0}, Ln/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8c

    new-instance v0, Lcom/google/android/maps/driveabout/app/N;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/N;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V

    :goto_89
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    goto :goto_2a

    :cond_8c
    new-instance v0, Lcom/google/android/maps/driveabout/app/P;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/app/P;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V

    goto :goto_89

    :cond_92
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/C;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/C;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1, v5}, Lcom/google/android/maps/driveabout/app/am;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/P;->a()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/D;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/D;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lu/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lu/f;

    invoke-static {v0}, Lu/c;->a(Lu/f;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/M;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/M;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/O;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/O;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Speak"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/ci;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f7

    const v0, 0x7f0b00b7

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/S;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_e5
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->l:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.googlenav.suggest.android.SuggestProvider.SUGGEST_PROVIDER_CREATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_72

    :cond_f7
    const-string v1, "Show Disclaimer"

    invoke-static {p0, v1, v6}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Ljava/lang/String;)V

    goto :goto_e5

    :cond_103
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Lz/c;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    goto :goto_e5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ae;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ae;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g:Lcom/google/android/maps/driveabout/app/ae;

    :cond_c
    invoke-static {p0}, Ln/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->w:Lu/f;

    invoke-static {v0}, Lu/c;->b(Lu/f;)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->k:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->a()V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/S;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/S;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Z

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

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

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;I)V

    goto :goto_7

    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/app/O;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    if-eq v0, v1, :cond_38

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/O;)V

    :cond_38
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_3a

    const/4 v0, 0x0

    :goto_9
    return v0

    :sswitch_a
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i()V

    goto :goto_9

    :sswitch_e
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h()V

    goto :goto_9

    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a()V

    goto :goto_9

    :sswitch_16
    const-string v1, "A"

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/maps/driveabout/app/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :sswitch_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {}, Lcom/google/googlenav/M;->ad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    nop

    :sswitch_data_3a
    .sparse-switch
        0x7f0f00cc -> :sswitch_16
        0x7f0f00cd -> :sswitch_26
        0x7f0f040e -> :sswitch_a
        0x7f0f040f -> :sswitch_12
        0x7f0f0411 -> :sswitch_e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->c()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    if-nez v0, :cond_15

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->p:Lz/c;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->q:Z

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->t:Z

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->finish()V

    :cond_35
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const v1, 0x7f0f040e

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->x:Lcom/google/android/maps/driveabout/app/P;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/P;->a(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/V;

    if-eqz v0, :cond_62

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_53

    const v0, 0x7f0f0410

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->v:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    new-instance v1, Lcom/google/android/maps/driveabout/app/G;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/G;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/widgets/e;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d:Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/app/O;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->u:Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c:[Lcom/google/android/maps/driveabout/app/O;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a([Lcom/google/android/maps/driveabout/app/O;)V

    :cond_53
    const v0, 0x7f0f040f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->y:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_61
    return v2

    :cond_62
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1b
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->n:Lcom/google/android/maps/driveabout/app/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/p;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->s:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->r:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f()V

    :cond_12
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/DestinationActivity;->m:Lcom/google/android/maps/driveabout/app/S;

    if-ne p1, v0, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_17
.end method
