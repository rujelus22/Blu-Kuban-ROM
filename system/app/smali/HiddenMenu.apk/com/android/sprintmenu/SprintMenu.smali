.class public Lcom/android/sprintmenu/SprintMenu;
.super Landroid/app/ListActivity;
.source "SprintMenu.java"


# static fields
.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private currentModeTypeForEnd:B

.field private groupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private m1XOutput:[Ljava/lang/String;

.field private mConfigOutput:[Ljava/lang/String;

.field private mEvdoOutput:[Ljava/lang/String;

.field private mFinishUserLeave:Z

.field private mFinished:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private screen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sprintmenu/SprintMenu;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    .line 99
    iput-boolean v1, p0, Lcom/android/sprintmenu/SprintMenu;->mFinishUserLeave:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/sprintmenu/SprintMenu;->mFinished:Z

    .line 436
    new-instance v0, Lcom/android/sprintmenu/SprintMenu$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/SprintMenu$1;-><init>(Lcom/android/sprintmenu/SprintMenu;)V

    iput-object v0, p0, Lcom/android/sprintmenu/SprintMenu;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/SprintMenu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/SprintMenu;I)Landroid/widget/ListAdapter;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/SprintMenu;->createAdapter(I)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/sprintmenu/SprintMenu;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/sprintmenu/SprintMenu;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sprintmenu/SprintMenu;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/SprintMenu;->create1x(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/sprintmenu/SprintMenu;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/sprintmenu/SprintMenu;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/SprintMenu;->createEvdo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/sprintmenu/SprintMenu;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/sprintmenu/SprintMenu;->mConfigOutput:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/sprintmenu/SprintMenu;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/SprintMenu;->createConfig(Ljava/util/List;)V

    return-void
.end method

.method private creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .parameter "label"
    .parameter "desc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v0, group:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "KEY_LABEL"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "KEY_DESC"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-object v0
.end method

.method private create1x(Ljava/util/List;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x2

    .line 202
    const/4 v6, 0x0

    .line 203
    .local v6, i:I
    iget-object v1, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_d

    if-nez p1, :cond_17

    .line 205
    :cond_d
    iget v1, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->createAdapter(I)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    :goto_16
    return-void

    .line 208
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 210
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    const-string v1, "State"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "SO"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 212
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Channel"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Band Class"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "SID"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 215
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "NID"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Base ID"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 217
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "PN"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "P_rev"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 219
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Latitude"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 220
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Longitude"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 221
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Rx Pwr"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 222
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Rx Ec/Io"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 223
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Rx FER"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 224
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Tx Pwr"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 225
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Active Set:"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 226
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Neighbor Set:"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 228
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030011

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "KEY_LABEL"

    aput-object v1, v4, v8

    const-string v1, "KEY_DESC"

    aput-object v1, v4, v9

    new-array v5, v5, [I

    fill-array-data v5, :array_194

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 234
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/SprintMenu;->setListAdapter(Landroid/widget/ListAdapter;)V

    move v6, v7

    .line 235
    .end local v7           #i:I
    .restart local v6       #i:I
    goto/16 :goto_16

    .line 228
    nop

    :array_194
    .array-data 0x4
        0x1ft 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private createAdapter(I)Landroid/widget/ListAdapter;
    .registers 10
    .parameter "screen"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 148
    packed-switch p1, :pswitch_data_74

    .line 184
    :goto_5
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;

    const v3, 0x7f030011

    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "KEY_LABEL"

    aput-object v5, v4, v1

    const-string v1, "KEY_DESC"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    fill-array-data v5, :array_86

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 190
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    return-object v0

    .line 150
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    :pswitch_21
    const-string v1, "1x Engineering"

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->sendData(C)V

    .line 153
    iput-boolean v6, p0, Lcom/android/sprintmenu/SprintMenu;->mFinishUserLeave:Z

    goto :goto_5

    .line 156
    :pswitch_2d
    const-string v1, "EVDO Engineering"

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->sendData(C)V

    .line 159
    iput-boolean v6, p0, Lcom/android/sprintmenu/SprintMenu;->mFinishUserLeave:Z

    goto :goto_5

    .line 162
    :pswitch_3a
    const-string v1, "Configuration"

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->sendData(C)V

    .line 165
    iput-boolean v6, p0, Lcom/android/sprintmenu/SprintMenu;->mFinishUserLeave:Z

    goto :goto_5

    .line 168
    :pswitch_47
    const-string v1, "Bluetooth"

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->createBT(Ljava/util/List;)V

    goto :goto_5

    .line 172
    :pswitch_52
    const-string v1, "Data Status"

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->createData(Ljava/util/List;)V

    goto :goto_5

    .line 176
    :pswitch_5d
    const-string v1, "Memory"

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->createMem(Ljava/util/List;)V

    goto :goto_5

    .line 180
    :pswitch_68
    const-string v1, "USB Charging"

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->createUSB(Ljava/util/List;)V

    goto :goto_5

    .line 148
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2d
        :pswitch_3a
        :pswitch_47
        :pswitch_52
        :pswitch_5d
        :pswitch_68
    .end packed-switch

    .line 184
    :array_86
    .array-data 0x4
        0x1ft 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private createBT(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    sput-object v3, Lcom/android/sprintmenu/SprintMenu;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 325
    const-string v3, "service.brcm.bt.core_version"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, CoreVersion:Ljava/lang/String;
    const-string v3, "service.brcm.bt.bte_version"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, StackVersion:Ljava/lang/String;
    const-string v3, "service.brcm.bt.btld_version"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, FirmwareVersion:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 331
    const-string v0, "BT_SPEC_VERSION_3_0"

    .line 332
    const-string v3, "SprintMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createBT = C- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3a
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 336
    const-string v2, "BLUEZ-4.93"

    .line 337
    const-string v3, "SprintMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createBT = S- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_5c
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 341
    const-string v1, "BTL-ANDROID_MI_2.0.80_S1_R30_Victory"

    .line 342
    const-string v3, "SprintMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createBT = F- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_7e
    sget-object v3, Lcom/android/sprintmenu/SprintMenu;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_8a

    .line 346
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Platform does not support Bluetooth"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    :cond_8a
    sget-object v3, Lcom/android/sprintmenu/SprintMenu;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_159

    .line 352
    const-string v3, "Chipset"

    invoke-direct {p0}, Lcom/android/sprintmenu/SprintMenu;->getBTChipsetInfo()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v3, "Core Version"

    invoke-direct {p0, v3, v0}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v3, "Stack Version"

    invoke-direct {p0, v3, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v3, "Firmware Version"

    invoke-direct {p0, v3, v1}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v3, "Profiles"

    const-string v4, "HFP 1.5"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v3, ""

    const-string v4, "HSP"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v3, ""

    const-string v4, "A2DP"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v3, ""

    const-string v4, "PBAP"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const-string v3, ""

    const-string v4, "OPP"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v3, ""

    const-string v4, "HID"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v3, ""

    const-string v4, "PAN"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v3, ""

    const-string v4, "HDP"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v3, "Address"

    sget-object v4, Lcom/android/sprintmenu/SprintMenu;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :goto_158
    return-void

    .line 381
    :cond_159
    const-string v3, ""

    const-string v4, "Bluetooth is off"

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v3, ""

    const-string v4, "Please turn on bluetooth first."

    invoke-direct {p0, v3, v4}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_158
.end method

.method private createConfig(Ljava/util/List;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x2

    .line 271
    const/4 v6, 0x0

    .line 272
    .local v6, i:I
    iget-object v1, p0, Lcom/android/sprintmenu/SprintMenu;->mConfigOutput:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_c

    if-nez p1, :cond_12

    .line 274
    :cond_c
    iget v1, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->createAdapter(I)Landroid/widget/ListAdapter;

    .line 299
    :goto_11
    return-void

    .line 278
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 280
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    const-string v1, "Technology"

    const-string v2, "EVDO RevA"

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 281
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "1x Diversity"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mConfigOutput:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 282
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "EVDO Diversity"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mConfigOutput:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 283
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "QLIC"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mConfigOutput:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 284
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "PRL Version"

    invoke-direct {p0}, Lcom/android/sprintmenu/SprintMenu;->getPRL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 285
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Chipset"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mConfigOutput:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 286
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "AMSS Version"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mConfigOutput:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 287
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Device Version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 288
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Hardware Version"

    invoke-direct {p0}, Lcom/android/sprintmenu/SprintMenu;->getHwver()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 289
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Browser Version "

    const-string v2, "Webkit 5.0.328.0"

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 290
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Multimedia Version"

    const-string v2, "CORE/6.506.4.1 OpenCORE/2.02 (Linux;Android 2.2.1) "

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 292
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030011

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "KEY_LABEL"

    aput-object v1, v4, v8

    const-string v1, "KEY_DESC"

    aput-object v1, v4, v9

    new-array v5, v5, [I

    fill-array-data v5, :array_e8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 298
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/SprintMenu;->setListAdapter(Landroid/widget/ListAdapter;)V

    move v6, v7

    .line 299
    .end local v7           #i:I
    .restart local v6       #i:I
    goto/16 :goto_11

    .line 292
    nop

    :array_e8
    .array-data 0x4
        0x1ft 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private createData(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v5, "net.cdma.ppp.interface"

    const-string v6, "ppp0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, interfaceName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, prefix:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "remote-ip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "local-ip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, ipAddress:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sprintmenu/SprintMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 408
    .local v0, Tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    .line 410
    .local v4, tech:I
    const-string v5, "IP Address"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/sprintmenu/SprintMenu;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    const-string v5, "Last Error Code"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getmiperrid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method private createEvdo(Ljava/util/List;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x2

    .line 238
    const/4 v6, 0x0

    .line 239
    .local v6, i:I
    iget-object v1, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_d

    if-nez p1, :cond_13

    .line 241
    :cond_d
    iget v1, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/SprintMenu;->createAdapter(I)Landroid/widget/ListAdapter;

    .line 268
    :goto_12
    return-void

    .line 244
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 246
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    const-string v1, "State"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 247
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Mac Index"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 248
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Channel"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 249
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "Color Code"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 250
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Sector ID"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 251
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "PN"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 252
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "RX Pwr"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 253
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "RX PER"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 254
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "Pilot Energy"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 255
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "DRC"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 256
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "SINR"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 257
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    const-string v1, "AN-AAA"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 258
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    const-string v1, "IP Address"

    iget-object v2, p0, Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 260
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030011

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "KEY_LABEL"

    aput-object v1, v4, v8

    const-string v1, "KEY_DESC"

    aput-object v1, v4, v9

    new-array v5, v5, [I

    fill-array-data v5, :array_13c

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 266
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/SprintMenu;->setListAdapter(Landroid/widget/ListAdapter;)V

    move v6, v7

    .line 268
    .end local v7           #i:I
    .restart local v6       #i:I
    goto/16 :goto_12

    .line 260
    nop

    :array_13c
    .array-data 0x4
        0x1ft 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private createMem(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "Memory Utilization"

    invoke-direct {p0}, Lcom/android/sprintmenu/SprintMenu;->getMem()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method private createUSB(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v2, "persist.service.slate_mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, strValue:Ljava/lang/String;
    const-string v2, "SprintMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init strValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 426
    new-instance v0, Ljava/lang/String;

    const-string v2, "Enabled"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, str:Ljava/lang/String;
    :goto_2d
    const-string v2, "USB Charging: "

    invoke-direct {p0, v2, v0}, Lcom/android/sprintmenu/SprintMenu;->creatMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    return-void

    .line 427
    .end local v0           #str:Ljava/lang/String;
    :cond_37
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 428
    new-instance v0, Ljava/lang/String;

    const-string v2, "Disabled"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_2d

    .line 430
    .end local v0           #str:Ljava/lang/String;
    :cond_47
    const-string v2, "SprintMenu"

    const-string v3, "SetCharging property value is empty. so set ON"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Ljava/lang/String;

    const-string v2, "Enabled"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_2d
.end method

.method private getBTChipsetInfo()Ljava/lang/String;
    .registers 8

    .prologue
    .line 303
    new-instance v2, Ljava/io/File;

    const-string v5, "/system/bin"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, mDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 305
    .local v0, contents:[Ljava/io/File;
    const/4 v3, 0x0

    .line 306
    .local v3, ret:Ljava/lang/String;
    const/4 v4, 0x0

    .line 308
    .local v4, temp:Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 309
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    array-length v5, v0

    if-ge v1, v5, :cond_33

    .line 310
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".hcd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 311
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 312
    const/4 v5, 0x0

    const/16 v6, 0x9

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 309
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 317
    .end local v1           #i:I
    :cond_31
    const-string v3, "There is no Bluetooth chipset infomation"

    .line 319
    :cond_33
    return-object v3
.end method

.method private getHwver()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 526
    const-string v2, "ril.hw_ver"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, HW_version_SysProp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_14

    .line 527
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, hwVer:Ljava/lang/String;
    :goto_13
    return-object v1

    .line 529
    .end local v1           #hwVer:Ljava/lang/String;
    :cond_14
    new-instance v1, Ljava/lang/String;

    const-string v2, "Unknown"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v1       #hwVer:Ljava/lang/String;
    goto :goto_13
.end method

.method private getMem()Ljava/lang/String;
    .registers 9

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 537
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 538
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 539
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 540
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getPRL()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 515
    const-string v1, "ril.prl_ver_1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, prl:Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_18

    .line 517
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 520
    :goto_17
    return-object v1

    :cond_18
    const-string v1, "PRL : <unknown>"

    goto :goto_17
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .registers 5
    .parameter "type"

    .prologue
    .line 645
    const-string v0, "No DataConnection"

    .line 647
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_2e

    .line 659
    :goto_5
    const-string v1, "SprintMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "String= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-object v0

    .line 650
    :pswitch_28
    const-string v0, "1x: "

    .line 651
    goto :goto_5

    .line 655
    :pswitch_2b
    const-string v0, "EVDO: "

    goto :goto_5

    .line 647
    :pswitch_data_2e
    .packed-switch 0x5
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method

.method private sendData(C)V
    .registers 9
    .parameter "mode"

    .prologue
    .line 545
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 546
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 547
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendData()   mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v3, 0x6

    .line 551
    .local v3, fileSize:I
    const/4 v4, 0x1

    :try_start_24
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 552
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 553
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 554
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 555
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 556
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_4a

    .line 569
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/SprintMenu;->handler:Landroid/os/Handler;

    invoke-virtual {v6, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 570
    :goto_49
    return-void

    .line 565
    :catch_4a
    move-exception v2

    .line 566
    .local v2, e:Ljava/io/IOException;
    const-string v4, "SprintMenu"

    const-string v5, "getDDTMData exception occured during operation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private sendEndData(CB)V
    .registers 12
    .parameter "ifcond"
    .parameter "mode"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 574
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 575
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 576
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v4, "SprintMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendEndData()   screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget v4, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    if-eq v4, v7, :cond_4a

    iget v4, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    if-eq v4, v8, :cond_4a

    iget v4, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4a

    .line 579
    const-string v4, "SprintMenu"

    const-string v5, "sendEndData()   if called = "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_3a
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/SprintMenu;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 606
    :goto_49
    return-void

    .line 581
    :cond_4a
    const-string v4, "SprintMenu"

    const-string v5, "sendEndData()   else called = "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v3, 0x4

    .line 593
    .local v3, fileSize:I
    const/4 v4, 0x1

    :try_start_53
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 594
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 595
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 596
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_60} :catch_61

    goto :goto_3a

    .line 598
    :catch_61
    move-exception v2

    .line 599
    .local v2, e:Ljava/io/IOException;
    const-string v4, "SprintMenu"

    const-string v5, "sendEndData exception occured during operation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private sendEnterData(I)V
    .registers 11
    .parameter "screen"

    .prologue
    const/4 v8, 0x1

    .line 611
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 612
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 613
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    .line 614
    .local v4, mode:B
    const-string v5, "SprintMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendEnterData()   screen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-ne p1, v8, :cond_51

    .line 617
    const/4 v4, 0x7

    .line 625
    :cond_27
    :goto_27
    iput-byte v4, p0, Lcom/android/sprintmenu/SprintMenu;->currentModeTypeForEnd:B

    .line 628
    const/4 v3, 0x6

    .line 629
    .local v3, fileSize:I
    const/4 v5, 0x1

    :try_start_2b
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 630
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 631
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 632
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 633
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 634
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_41} :catch_5d

    .line 640
    iget-object v5, p0, Lcom/android/sprintmenu/SprintMenu;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/sprintmenu/SprintMenu;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 642
    :goto_50
    return-void

    .line 618
    .end local v3           #fileSize:I
    :cond_51
    const/4 v5, 0x2

    if-ne p1, v5, :cond_57

    .line 619
    const/16 v4, 0x8

    goto :goto_27

    .line 620
    :cond_57
    const/4 v5, 0x3

    if-ne p1, v5, :cond_27

    .line 621
    const/16 v4, 0xa

    goto :goto_27

    .line 635
    .restart local v3       #fileSize:I
    :catch_5d
    move-exception v2

    .line 636
    .local v2, e:Ljava/io/IOException;
    const-string v5, "SprintMenu"

    const-string v6, "getDDTMData exception occured during operation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/SprintMenu;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 106
    invoke-virtual {p0}, Lcom/android/sprintmenu/SprintMenu;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;

    .line 110
    invoke-virtual {p0}, Lcom/android/sprintmenu/SprintMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/sprintmenu/SprintMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 112
    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/SprintMenu;->sendEnterData(I)V

    .line 113
    iput-boolean v2, p0, Lcom/android/sprintmenu/SprintMenu;->mFinishUserLeave:Z

    .line 114
    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    if-eq v0, v3, :cond_4a

    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4a

    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4a

    .line 115
    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/SprintMenu;->createAdapter(I)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/SprintMenu;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    :cond_4a
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/android/sprintmenu/SprintMenu;->handler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-boolean v0, p0, Lcom/android/sprintmenu/SprintMenu;->mFinishUserLeave:Z

    if-ne v0, v2, :cond_17

    .line 140
    const/4 v0, 0x2

    iget-byte v1, p0, Lcom/android/sprintmenu/SprintMenu;->currentModeTypeForEnd:B

    invoke-direct {p0, v0, v1}, Lcom/android/sprintmenu/SprintMenu;->sendEndData(CB)V

    .line 141
    iput-boolean v2, p0, Lcom/android/sprintmenu/SprintMenu;->mFinished:Z

    .line 143
    :cond_17
    invoke-virtual {p0}, Lcom/android/sprintmenu/SprintMenu;->finish()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/16 v2, 0x6f

    .line 120
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/android/sprintmenu/SprintMenu;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/sprintmenu/SprintMenu;->screen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 123
    :cond_19
    iget-object v0, p0, Lcom/android/sprintmenu/SprintMenu;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sprintmenu/SprintMenu;->mFinished:Z

    .line 127
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/ListActivity;->onUserLeaveHint()V

    .line 510
    const-string v0, "SprintMenu"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method
