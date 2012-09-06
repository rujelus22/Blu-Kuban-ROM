.class public abstract enum Lcom/dropbox/android/activity/delegate/g;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/activity/delegate/g;

.field public static final enum b:Lcom/dropbox/android/activity/delegate/g;

.field public static final enum c:Lcom/dropbox/android/activity/delegate/g;

.field public static final enum d:Lcom/dropbox/android/activity/delegate/g;

.field public static final enum e:Lcom/dropbox/android/activity/delegate/g;

.field public static final enum f:Lcom/dropbox/android/activity/delegate/g;

.field public static final enum g:Lcom/dropbox/android/activity/delegate/g;

.field public static final enum h:Lcom/dropbox/android/activity/delegate/g;

.field private static final i:Ljava/lang/String;

.field private static j:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final synthetic l:[Lcom/dropbox/android/activity/delegate/g;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/dropbox/android/activity/delegate/h;

    const-string v1, "SIMPLE_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/activity/delegate/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->a:Lcom/dropbox/android/activity/delegate/g;

    .line 52
    new-instance v0, Lcom/dropbox/android/activity/delegate/i;

    const-string v1, "SHARING_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/activity/delegate/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->b:Lcom/dropbox/android/activity/delegate/g;

    .line 67
    new-instance v0, Lcom/dropbox/android/activity/delegate/j;

    const-string v1, "STREAMING_PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/activity/delegate/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->c:Lcom/dropbox/android/activity/delegate/g;

    .line 82
    new-instance v0, Lcom/dropbox/android/activity/delegate/k;

    const-string v1, "EXPORT_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/activity/delegate/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->d:Lcom/dropbox/android/activity/delegate/g;

    .line 106
    new-instance v0, Lcom/dropbox/android/activity/delegate/l;

    const-string v1, "NO_SDCARD"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/android/activity/delegate/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->e:Lcom/dropbox/android/activity/delegate/g;

    .line 116
    new-instance v0, Lcom/dropbox/android/activity/delegate/m;

    const-string v1, "NEW_FOLDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->f:Lcom/dropbox/android/activity/delegate/g;

    .line 248
    new-instance v0, Lcom/dropbox/android/activity/delegate/r;

    const-string v1, "NO_VIEWER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->g:Lcom/dropbox/android/activity/delegate/g;

    .line 274
    new-instance v0, Lcom/dropbox/android/activity/delegate/t;

    const-string v1, "NEW_FILE_NAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->h:Lcom/dropbox/android/activity/delegate/g;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dropbox/android/activity/delegate/g;

    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->a:Lcom/dropbox/android/activity/delegate/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->b:Lcom/dropbox/android/activity/delegate/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->c:Lcom/dropbox/android/activity/delegate/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->d:Lcom/dropbox/android/activity/delegate/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->e:Lcom/dropbox/android/activity/delegate/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/activity/delegate/g;->f:Lcom/dropbox/android/activity/delegate/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/android/activity/delegate/g;->g:Lcom/dropbox/android/activity/delegate/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/android/activity/delegate/g;->h:Lcom/dropbox/android/activity/delegate/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->l:[Lcom/dropbox/android/activity/delegate/g;

    .line 351
    const-class v0, Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->i:Ljava/lang/String;

    .line 354
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/activity/delegate/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 361
    const-class v0, Lcom/dropbox/android/activity/delegate/g;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/g;

    .line 362
    sget-object v2, Lcom/dropbox/android/activity/delegate/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    .line 364
    :cond_ac
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 367
    invoke-virtual {p0}, Lcom/dropbox/android/activity/delegate/g;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/activity/delegate/g;->k:I

    .line 368
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/h;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/delegate/g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 378
    invoke-static {p0}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 379
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 381
    const v0, 0x7f09002d

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 382
    const v0, 0x7f09000e

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    const v0, 0x7f09003b

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lcom/dropbox/android/activity/delegate/g;
    .registers 3
    .parameter

    .prologue
    .line 374
    sget-object v0, Lcom/dropbox/android/activity/delegate/g;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/g;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/delegate/g;
    .registers 2
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/dropbox/android/activity/delegate/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/g;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/activity/delegate/g;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/dropbox/android/activity/delegate/g;->l:[Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v0}, [Lcom/dropbox/android/activity/delegate/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/activity/delegate/g;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lcom/dropbox/android/activity/delegate/g;->k:I

    return v0
.end method

.method abstract a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)Landroid/app/Dialog;
.end method

.method abstract a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/app/Dialog;)V
.end method
