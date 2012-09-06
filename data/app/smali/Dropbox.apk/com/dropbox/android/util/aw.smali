.class public abstract enum Lcom/dropbox/android/util/aw;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/util/aw;

.field public static final enum b:Lcom/dropbox/android/util/aw;

.field public static final enum c:Lcom/dropbox/android/util/aw;

.field public static final enum d:Lcom/dropbox/android/util/aw;

.field public static final enum e:Lcom/dropbox/android/util/aw;

.field public static final enum f:Lcom/dropbox/android/util/aw;

.field public static final enum g:Lcom/dropbox/android/util/aw;

.field public static final enum h:Lcom/dropbox/android/util/aw;

.field private static final synthetic i:[Lcom/dropbox/android/util/aw;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/dropbox/android/util/ax;

    const-string v1, "CAMERA_UPLOAD_PROMO"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/android/util/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/aw;->a:Lcom/dropbox/android/util/aw;

    .line 40
    new-instance v0, Lcom/dropbox/android/util/ay;

    const-string v1, "CAMERA_UPLOAD_STOPPED_QUOTA"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/android/util/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/aw;->b:Lcom/dropbox/android/util/aw;

    .line 58
    new-instance v0, Lcom/dropbox/android/util/az;

    const-string v1, "CAMERA_UPLOAD_PAUSED_BATTERY"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/android/util/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/aw;->c:Lcom/dropbox/android/util/aw;

    .line 75
    new-instance v0, Lcom/dropbox/android/util/aA;

    const-string v1, "CAMERA_UPLOAD_BACKLOG_FINISHED"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/android/util/aA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/aw;->d:Lcom/dropbox/android/util/aw;

    .line 93
    new-instance v0, Lcom/dropbox/android/util/aB;

    const-string v1, "CAMERA_UPLOAD_FIRST_BUNCH_FINISHED"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/android/util/aB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/aw;->e:Lcom/dropbox/android/util/aw;

    .line 111
    new-instance v0, Lcom/dropbox/android/util/aC;

    const-string v1, "UPLOAD_PROGRESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/util/aC;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/aw;->f:Lcom/dropbox/android/util/aw;

    .line 140
    new-instance v0, Lcom/dropbox/android/util/aD;

    const-string v1, "UPLOAD_DONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/util/aD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/aw;->g:Lcom/dropbox/android/util/aw;

    .line 170
    new-instance v0, Lcom/dropbox/android/util/aE;

    const-string v1, "UPLOAD_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/util/aE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/android/util/aw;->h:Lcom/dropbox/android/util/aw;

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dropbox/android/util/aw;

    sget-object v1, Lcom/dropbox/android/util/aw;->a:Lcom/dropbox/android/util/aw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/util/aw;->b:Lcom/dropbox/android/util/aw;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/util/aw;->c:Lcom/dropbox/android/util/aw;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/util/aw;->d:Lcom/dropbox/android/util/aw;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/util/aw;->e:Lcom/dropbox/android/util/aw;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/util/aw;->f:Lcom/dropbox/android/util/aw;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/android/util/aw;->g:Lcom/dropbox/android/util/aw;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/android/util/aw;->h:Lcom/dropbox/android/util/aw;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/util/aw;->i:[Lcom/dropbox/android/util/aw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/dropbox/android/util/av;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/util/aw;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/dropbox/android/util/aw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/dropbox/android/activity/DropboxBrowser;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/util/aw;
    .registers 2
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/dropbox/android/util/aw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/aw;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/util/aw;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/dropbox/android/util/aw;->i:[Lcom/dropbox/android/util/aw;

    invoke-virtual {v0}, [Lcom/dropbox/android/util/aw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/util/aw;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification;
.end method
