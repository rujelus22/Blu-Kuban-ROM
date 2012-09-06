.class public Lcom/estrongs/android/pop/app/OneKeyBackupActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field b:Landroid/widget/AdapterView$OnItemClickListener;

.field c:[Ljava/lang/String;

.field private d:Lcom/estrongs/android/widget/ag;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/android/pop/app/MyListView;

.field private h:Lcom/estrongs/android/pop/app/MyListView;

.field private i:Lcom/estrongs/android/pop/app/MyListView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/CheckBox;

.field private p:Lcom/estrongs/android/pop/c;

.field private q:Landroid/view/LayoutInflater;

.field private r:[Ljava/lang/String;

.field private s:[Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ES\u5907\u4efd"

    sput-object v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->p:Lcom/estrongs/android/pop/c;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x7f0902da

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    const v3, 0x7f0902db

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    const v3, 0x7f0902dc

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->r:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->r:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->s:[Z

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->t:Z

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->u:Z

    return-void
.end method

.method static synthetic a([BI)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->b([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    aget-byte v3, p0, v0

    and-int/lit16 v4, v3, 0xf0

    if-eqz v4, :cond_24

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method

.method public static a(Landroid/widget/ListView;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_8

    :goto_7
    return-void

    :cond_8
    move v0, v1

    move v2, v1

    :goto_a
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_26

    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_26
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->u:Z

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->finish()V

    return-void

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/util/List;Ljava/lang/String;ZZ)Z

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->s:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_f

    invoke-static {p1}, Lcom/estrongs/android/a/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-object v2, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->s:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1b

    invoke-static {p1}, Lcom/estrongs/android/a/g;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_1b
    iget-object v2, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->s:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_28

    invoke-static {p1}, Lcom/estrongs/android/a/g;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_28
    move v0, v1

    goto :goto_e
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_9

    :goto_8
    return v2

    :cond_9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v2, 0x1

    goto :goto_8

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)[Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->s:[Z

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static b([BI)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/pop/app/MyListView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/pop/c;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->p:Lcom/estrongs/android/pop/c;

    return-object v0
.end method

.method private d()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->u:Z

    new-instance v0, Lcom/estrongs/android/widget/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d:Lcom/estrongs/android/widget/ag;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d:Lcom/estrongs/android/widget/ag;

    new-instance v1, Lcom/estrongs/android/widget/ai;

    invoke-direct {v1}, Lcom/estrongs/android/widget/ai;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ag;->a(Lcom/estrongs/android/widget/aj;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d:Lcom/estrongs/android/widget/ag;

    const-string v1, "\u6b63\u5728\u7edf\u8ba1\u6587\u4ef6\u603b\u91cf"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ag;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d:Lcom/estrongs/android/widget/ag;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/ag;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d:Lcom/estrongs/android/widget/ag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ag;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d:Lcom/estrongs/android/widget/ag;

    new-instance v1, Lcom/estrongs/android/pop/app/bx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bx;-><init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ag;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d:Lcom/estrongs/android/widget/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ag;->show()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->f:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/pop/app/by;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/by;-><init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/by;->start()V

    return-void
.end method

.method private e()V
    .registers 8

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->p:Lcom/estrongs/android/pop/c;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/c;->b(Ljava/util/Map;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v0, v1

    :goto_1e
    array-length v4, v2

    if-lt v0, v4, :cond_3a

    iget-object v4, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    monitor-enter v4

    :try_start_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    move v2, v1

    :goto_2d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_8d

    :goto_33
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_9b

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_b6

    return-void

    :cond_3a
    aget-object v4, v2, v0

    const-string v5, "net://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    aget-object v4, v2, v0

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v2, v0

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "baidu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a

    aget-object v5, v2, v0

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "baidu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8a

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_8d
    :try_start_8d
    iget-object v5, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    :cond_9b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_33

    :catchall_b6
    move-exception v0

    monitor-exit v4
    :try_end_b8
    .catchall {:try_start_8d .. :try_end_b8} :catchall_b6

    throw v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/widget/ag;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d:Lcom/estrongs/android/widget/ag;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->u:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a(Landroid/view/View;Lcom/estrongs/android/pop/app/cj;)Landroid/view/View;
    .registers 9

    const v5, 0x7f07011d

    const v4, 0x7f07006b

    const v3, 0x7f07006a

    if-nez p1, :cond_2e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->q:Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    :goto_27
    iput-object v0, p2, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    iput-object v1, p2, Lcom/estrongs/android/pop/app/cj;->c:Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/estrongs/android/pop/app/cj;->a:Landroid/widget/ImageView;

    return-object p1

    :cond_2e
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    goto :goto_27
.end method

.method a()Landroid/widget/BaseAdapter;
    .registers 2

    new-instance v0, Lcom/estrongs/android/pop/app/bu;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bu;-><init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V

    return-object v0
.end method

.method b()Landroid/widget/BaseAdapter;
    .registers 2

    new-instance v0, Lcom/estrongs/android/pop/app/bv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bv;-><init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V

    return-object v0
.end method

.method c()Landroid/widget/BaseAdapter;
    .registers 2

    new-instance v0, Lcom/estrongs/android/pop/app/bw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bw;-><init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0x12d687

    if-ne v0, p1, :cond_33

    const/4 v0, -0x1

    if-ne p2, v0, :cond_33

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/MyListView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/widget/ListView;)V

    :cond_33
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070035

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->finish()V

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07019b

    if-ne v0, v1, :cond_43

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->t:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_26
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->t:Z

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_26

    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070034

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->g:Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/MyListView;->a()I

    move-result v0

    if-nez v0, :cond_79

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/widget/ListView;)V

    :goto_73
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_32

    :cond_79
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_73

    :cond_7f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_98

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->t:Z

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->finish()V

    goto :goto_32

    :cond_94
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d()V

    goto :goto_32

    :cond_98
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->t:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/widget/ListView;)V

    goto/16 :goto_32
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "files_selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_32

    :cond_1f
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->finish()V

    :goto_31
    return-void

    :cond_32
    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->requestWindowFeature(I)Z

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->q:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->q:Landroid/view/LayoutInflater;

    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0200a6

    invoke-virtual {p0, v5, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->setFeatureDrawableResource(II)V

    const v0, 0x7f0902dd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->setTitle(I)V

    const v0, 0x7f070193

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f070195

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f070197

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f07019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->o:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->o:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    const v3, 0x7f0902d7

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v0, 0x7f070198

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->n:Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    const v3, 0x7f0902d6

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070194

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/MyListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->g:Lcom/estrongs/android/pop/app/MyListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->g:Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a()Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->g:Lcom/estrongs/android/pop/app/MyListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/widget/ListView;)V

    const v0, 0x7f070196

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/MyListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->h:Lcom/estrongs/android/pop/app/MyListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->h:Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c()Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->h:Lcom/estrongs/android/pop/app/MyListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/widget/ListView;)V

    const v0, 0x7f070199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/MyListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->b()Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/MyListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->b:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i:Lcom/estrongs/android/pop/app/MyListView;

    new-instance v2, Lcom/estrongs/android/pop/app/br;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/br;-><init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->h:Lcom/estrongs/android/pop/app/MyListView;

    new-instance v2, Lcom/estrongs/android/pop/app/bs;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bs;-><init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f07019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0902de

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f070035

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e()V

    new-instance v0, Lcom/estrongs/android/pop/app/bt;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bt;-><init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_31
.end method
