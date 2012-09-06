.class public final Lcom/anddoes/launcher/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/anddoes/launcher/gg;


# instance fields
.field private b:Lcom/anddoes/launcher/Launcher;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:[Ljava/lang/String;

.field private f:[I

.field private g:[I

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[I

.field private k:[I

.field private l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/anddoes/launcher/gg;->a:Lcom/anddoes/launcher/gg;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "APP_DRAWER"

    aput-object v1, v0, v4

    .line 26
    const-string v1, "SHOW_PREVIEWS"

    aput-object v1, v0, v5

    const-string v1, "MANAGE_SCREENS"

    aput-object v1, v0, v6

    .line 27
    const-string v1, "GOTO_DEFAULT_SCREEN"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 28
    const-string v2, "SHOW_NOTIFICATIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TOGGLE_STATUS_BAR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 29
    const-string v2, "TOGGLE_DOCK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RECENT_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 30
    const-string v2, "APEX_MENU"

    aput-object v2, v0, v1

    const-string v1, "APEX_SETTINGS"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    .line 31
    const-string v2, "LOCK_DESKTOP"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/anddoes/launcher/gg;->e:[Ljava/lang/String;

    .line 33
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_fa

    .line 39
    iput-object v0, p0, Lcom/anddoes/launcher/gg;->f:[I

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_114

    .line 47
    iput-object v0, p0, Lcom/anddoes/launcher/gg;->g:[I

    .line 49
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ic_allapps"

    aput-object v1, v0, v4

    .line 50
    const-string v1, "ic_show_preview"

    aput-object v1, v0, v5

    const-string v1, "ic_show_preview"

    aput-object v1, v0, v6

    .line 51
    const-string v1, "ic_movetodefault"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 52
    const-string v2, "ic_notifications"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ic_statusbar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 53
    const-string v2, "ic_toggledock"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ic_recentapps"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 54
    const-string v2, "ic_menu"

    aput-object v2, v0, v1

    const-string v1, "ic_settings"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    .line 55
    const-string v2, "ic_lock"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/anddoes/launcher/gg;->h:[Ljava/lang/String;

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "GOTO_SCREEN1"

    aput-object v1, v0, v4

    .line 58
    const-string v1, "GOTO_SCREEN2"

    aput-object v1, v0, v5

    const-string v1, "GOTO_SCREEN3"

    aput-object v1, v0, v6

    .line 59
    const-string v1, "GOTO_SCREEN4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "GOTO_SCREEN5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 60
    const-string v2, "GOTO_SCREEN6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GOTO_SCREEN7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 61
    const-string v2, "GOTO_SCREEN8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GOTO_SCREEN9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/anddoes/launcher/gg;->i:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [I

    fill-array-data v0, :array_12e

    .line 67
    iput-object v0, p0, Lcom/anddoes/launcher/gg;->j:[I

    .line 69
    new-array v0, v3, [I

    fill-array-data v0, :array_144

    .line 73
    iput-object v0, p0, Lcom/anddoes/launcher/gg;->k:[I

    .line 75
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ic_moveto1"

    aput-object v1, v0, v4

    .line 76
    const-string v1, "ic_moveto2"

    aput-object v1, v0, v5

    const-string v1, "ic_moveto3"

    aput-object v1, v0, v6

    .line 77
    const-string v1, "ic_moveto4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "ic_moveto5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 78
    const-string v2, "ic_moveto6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ic_moveto7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 79
    const-string v2, "ic_moveto8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ic_moveto9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/anddoes/launcher/gg;->l:[Ljava/lang/String;

    .line 89
    return-void

    .line 33
    :array_fa
    .array-data 0x4
        0x27t 0x0t 0x6t 0x7ft
        0x2ct 0x0t 0x6t 0x7ft
        0x5at 0x0t 0x6t 0x7ft
        0x2dt 0x0t 0x6t 0x7ft
        0x29t 0x0t 0x6t 0x7ft
        0x2at 0x0t 0x6t 0x7ft
        0xe7t 0x0t 0x6t 0x7ft
        0xe8t 0x0t 0x6t 0x7ft
        0xa4t 0x0t 0x6t 0x7ft
        0x28t 0x0t 0x6t 0x7ft
        0x2bt 0x0t 0x6t 0x7ft
    .end array-data

    .line 41
    :array_114
    .array-data 0x4
        0x27t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
    .end array-data

    .line 63
    :array_12e
    .array-data 0x4
        0x2et 0x0t 0x6t 0x7ft
        0x2ft 0x0t 0x6t 0x7ft
        0x30t 0x0t 0x6t 0x7ft
        0x31t 0x0t 0x6t 0x7ft
        0x32t 0x0t 0x6t 0x7ft
        0x33t 0x0t 0x6t 0x7ft
        0x34t 0x0t 0x6t 0x7ft
        0x35t 0x0t 0x6t 0x7ft
        0x36t 0x0t 0x6t 0x7ft
    .end array-data

    .line 69
    :array_144
    .array-data 0x4
        0x4at 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public static declared-synchronized a()Lcom/anddoes/launcher/gg;
    .registers 2

    .prologue
    .line 82
    const-class v1, Lcom/anddoes/launcher/gg;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/anddoes/launcher/gg;->a:Lcom/anddoes/launcher/gg;

    if-nez v0, :cond_e

    .line 83
    new-instance v0, Lcom/anddoes/launcher/gg;

    invoke-direct {v0}, Lcom/anddoes/launcher/gg;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/gg;->a:Lcom/anddoes/launcher/gg;

    .line 85
    :cond_e
    sget-object v0, Lcom/anddoes/launcher/gg;->a:Lcom/anddoes/launcher/gg;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/anddoes/launcher/gg;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/gg;)Lcom/anddoes/launcher/Launcher;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Z
    .registers 3
    .parameter

    .prologue
    .line 154
    if-eqz p0, :cond_34

    .line 155
    const-string v0, "com.anddoes.launcher.ACTION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 156
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_34

    const-class v1, Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 158
    const-string v0, "APP_DRAWER"

    const-string v1, "LAUNCHER_ACTION"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 159
    const/4 v0, 0x1

    .line 164
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method


# virtual methods
.method public final a(Lcom/anddoes/launcher/gh;)Landroid/content/Intent;
    .registers 5
    .parameter

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anddoes.launcher.ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    const-class v2, Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p1, v0}, Lcom/anddoes/launcher/gh;->a(Landroid/content/Intent;)V

    .line 131
    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    const-string v1, "LAUNCHER_ACTION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 136
    const-string v1, "LAUNCHER_ACTION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/anddoes/launcher/gg;->e:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_13
    if-lt v1, v4, :cond_1b

    .line 143
    iget-object v1, p0, Lcom/anddoes/launcher/gg;->i:[Ljava/lang/String;

    array-length v3, v1

    :goto_18
    if-lt v0, v3, :cond_2e

    .line 150
    :cond_1a
    :goto_1a
    return-void

    .line 137
    :cond_1b
    aget-object v5, v3, v1

    .line 138
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 139
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    const-string v1, "SHORTCUT"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 137
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 143
    :cond_2e
    aget-object v4, v1, v0

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 145
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    const-string v1, "SHORTCUT"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 143
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public final a(Lcom/anddoes/launcher/Launcher;)V
    .registers 12
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 92
    iput-object p1, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    .line 93
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/gg;->c:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/gg;->d:Ljava/util/List;

    move v6, v7

    .line 96
    :goto_18
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lt v6, v0, :cond_23

    .line 101
    :goto_1d
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->i:[Ljava/lang/String;

    array-length v0, v0

    if-lt v7, v0, :cond_56

    .line 106
    return-void

    .line 97
    :cond_23
    iget-object v9, p0, Lcom/anddoes/launcher/gg;->c:Ljava/util/List;

    new-instance v0, Lcom/anddoes/launcher/gh;

    iget-object v1, p0, Lcom/anddoes/launcher/gg;->e:[Ljava/lang/String;

    aget-object v2, v1, v6

    iget-object v1, p0, Lcom/anddoes/launcher/gg;->f:[I

    aget v1, v1, v6

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v1, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v4, p0, Lcom/anddoes/launcher/gg;->g:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/anddoes/launcher/gg;->h:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 99
    iget-object v1, p0, Lcom/anddoes/launcher/gg;->g:[I

    aget v1, v1, v6

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/gh;-><init>(Lcom/anddoes/launcher/gg;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 97
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_18

    .line 102
    :cond_56
    iget-object v6, p0, Lcom/anddoes/launcher/gg;->d:Ljava/util/List;

    new-instance v0, Lcom/anddoes/launcher/gh;

    iget-object v1, p0, Lcom/anddoes/launcher/gg;->i:[Ljava/lang/String;

    aget-object v2, v1, v7

    iget-object v1, p0, Lcom/anddoes/launcher/gg;->j:[I

    aget v1, v1, v7

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    iget-object v1, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v4, p0, Lcom/anddoes/launcher/gg;->k:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/anddoes/launcher/gg;->l:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v1, v4, v5}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 104
    iget-object v1, p0, Lcom/anddoes/launcher/gg;->k:[I

    aget v1, v1, v7

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/gh;-><init>(Lcom/anddoes/launcher/gg;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 102
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d
.end method

.method public final b()Landroid/widget/ListAdapter;
    .registers 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/anddoes/launcher/gg;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_22

    .line 169
    :cond_1c
    new-instance v0, Lcom/anddoes/launcher/gi;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/gi;-><init>(Lcom/anddoes/launcher/gg;)V

    return-object v0

    .line 168
    :cond_22
    iget-object v0, p0, Lcom/anddoes/launcher/gg;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/gh;

    add-int/lit8 v3, v1, 0x1

    if-lt v2, v3, :cond_3f

    iget-object v3, p0, Lcom/anddoes/launcher/gg;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, p0, Lcom/anddoes/launcher/gg;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_3f
    iget-object v3, p0, Lcom/anddoes/launcher/gg;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/anddoes/launcher/gg;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3b
.end method
