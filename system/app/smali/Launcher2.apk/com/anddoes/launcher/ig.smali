.class public final Lcom/anddoes/launcher/ig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/anddoes/launcher/Launcher;

.field private c:Landroid/os/Handler;

.field private d:Lcom/anddoes/launcher/il;

.field private e:Lcom/anddoes/launcher/in;

.field private f:Lcom/anddoes/launcher/im;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_mail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/anddoes/launcher/ig;->a:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 4
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->l:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->m:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->c:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->j:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->k:Ljava/util/ArrayList;

    .line 52
    const v0, 0x7f07002a

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->aL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/ig;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->l:Ljava/lang/String;

    .line 53
    const v0, 0x7f07002b

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->aN:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/ig;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->m:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private a(Landroid/net/Uri;)I
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 212
    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    .line 216
    const-string v3, "type = ? AND new = ?"

    .line 217
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "1"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    .line 214
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_3f

    move-result-object v1

    .line 218
    if-eqz v1, :cond_40

    .line 220
    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_31

    move-result v0

    .line 224
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_44

    .line 231
    :goto_30
    return v0

    :catch_31
    move-exception v0

    .line 224
    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_37

    move v0, v6

    goto :goto_30

    .line 225
    :catch_37
    move-exception v0

    move v0, v6

    goto :goto_30

    .line 222
    :catchall_3a
    move-exception v0

    .line 224
    :try_start_3b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_42

    .line 227
    :goto_3e
    :try_start_3e
    throw v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    :cond_40
    move v0, v6

    goto :goto_30

    :catch_42
    move-exception v1

    goto :goto_3e

    :catch_44
    move-exception v1

    goto :goto_30
.end method

.method static synthetic a(Lcom/anddoes/launcher/ig;Landroid/net/Uri;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/ig;->a(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 58
    const-string v2, ""

    .line 59
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->w()Lcom/anddoes/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/LauncherModel;->a()Lcom/anddoes/launcher/h;

    move-result-object v1

    iget-object v1, v1, Lcom/anddoes/launcher/h;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_32

    move-object v0, p2

    .line 76
    :cond_31
    return-object v0

    .line 61
    :cond_32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 62
    iget-object v1, v0, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    if-eqz v1, :cond_2a

    .line 63
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    move-object v0, p2

    .line 71
    :goto_47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    move-object v2, v0

    goto :goto_2a

    .line 67
    :cond_4f
    iget-object v0, v0, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move-object v0, v1

    .line 68
    goto :goto_47

    :cond_5d
    move-object v0, v2

    goto :goto_47
.end method

.method static synthetic a(Lcom/anddoes/launcher/ig;)V
    .registers 1
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->f()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/ig;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->O()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_26
    return-void

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ba;

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/ig;->a(Ljava/lang/String;ILcom/anddoes/launcher/ba;)V

    goto :goto_20
.end method

.method static synthetic a(Lcom/anddoes/launcher/ig;[Landroid/accounts/Account;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 140
    array-length v7, p1

    move v6, v0

    :goto_4
    if-lt v6, v7, :cond_27

    iget-object v0, p0, Lcom/anddoes/launcher/ig;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Lcom/anddoes/launcher/im;

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->c:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/im;-><init>(Lcom/anddoes/launcher/ig;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->f:Lcom/anddoes/launcher/im;

    iget-object v0, p0, Lcom/anddoes/launcher/ig;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_92

    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->h()V

    :cond_26
    return-void

    :cond_27
    aget-object v0, p1, v6

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    :try_start_31
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://com.google.android.gm/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/labels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "labelUri"

    aput-object v4, v2, v3

    const-string v3, "canonicalName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "^i"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_66} :catch_90

    move-result-object v1

    if-eqz v1, :cond_80

    :try_start_69
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/anddoes/launcher/ig;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catchall {:try_start_69 .. :try_end_7d} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7d} :catch_84

    :cond_7d
    :try_start_7d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_a7

    :cond_80
    :goto_80
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    :catch_84
    move-exception v0

    :try_start_85
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_80

    :catch_89
    move-exception v0

    goto :goto_80

    :catchall_8b
    move-exception v0

    :try_start_8c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_a5

    :goto_8f
    :try_start_8f
    throw v0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_90} :catch_90

    :catch_90
    move-exception v0

    goto :goto_80

    :cond_92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v2, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/ig;->f:Lcom/anddoes/launcher/im;

    invoke-virtual {v2, v0, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_1d

    :catch_a5
    move-exception v1

    goto :goto_8f

    :catch_a7
    move-exception v0

    goto :goto_80
.end method

.method private a(Ljava/lang/String;ILcom/anddoes/launcher/ba;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-virtual {p3}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v3

    .line 318
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-lt v2, v3, :cond_9

    .line 344
    return-void

    .line 319
    :cond_9
    invoke-virtual {p3, v2}, Lcom/anddoes/launcher/ba;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 321
    instance-of v4, v1, Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v4, :cond_46

    .line 322
    instance-of v4, v0, Lcom/anddoes/launcher/kj;

    if-eqz v4, :cond_46

    .line 323
    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 324
    iget-object v4, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    if-eqz v4, :cond_42

    .line 325
    iget-object v0, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    move-object v0, v1

    .line 327
    check-cast v0, Lcom/anddoes/launcher/BubbleTextView;

    .line 328
    invoke-virtual {v0, p2}, Lcom/anddoes/launcher/BubbleTextView;->a(I)V

    .line 329
    iget-object v1, p0, Lcom/anddoes/launcher/ig;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 330
    iget-object v1, p0, Lcom/anddoes/launcher/ig;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_42
    :goto_42
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 334
    :cond_46
    instance-of v0, v1, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_42

    .line 335
    check-cast v1, Lcom/anddoes/launcher/FolderIcon;

    .line 336
    iget-object v0, v1, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    if-eqz v0, :cond_42

    iget-object v0, v1, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    iget-object v0, v0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_42

    .line 337
    iget-object v0, v1, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    iget-object v0, v0, Lcom/anddoes/launcher/Folder;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_42

    .line 339
    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/ig;->a(Ljava/lang/String;ILcom/anddoes/launcher/ba;)V

    goto :goto_42
.end method

.method private b(Landroid/net/Uri;)I
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 246
    .line 248
    :try_start_1
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    .line 250
    const-string v3, "read = ?"

    .line 251
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "0"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    .line 248
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_37

    move-result-object v1

    .line 252
    if-eqz v1, :cond_38

    .line 254
    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_29

    move-result v0

    .line 258
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_3c

    .line 265
    :goto_28
    return v0

    :catch_29
    move-exception v0

    .line 258
    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2f

    move v0, v6

    goto :goto_28

    .line 259
    :catch_2f
    move-exception v0

    move v0, v6

    goto :goto_28

    .line 256
    :catchall_32
    move-exception v0

    .line 258
    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_3a

    .line 261
    :goto_36
    :try_start_36
    throw v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    :cond_38
    move v0, v6

    goto :goto_28

    :catch_3a
    move-exception v1

    goto :goto_36

    :catch_3c
    move-exception v1

    goto :goto_28
.end method

.method static synthetic b(Lcom/anddoes/launcher/ig;Landroid/net/Uri;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/ig;->b(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/ig;)V
    .registers 1
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->g()V

    return-void
.end method

.method private c(Landroid/net/Uri;)I
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 282
    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "numUnreadConversations"

    aput-object v3, v2, v1

    .line 286
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 284
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_36

    move-result-object v1

    .line 287
    if-eqz v1, :cond_37

    .line 289
    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 290
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_31
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_28

    move-result v0

    .line 295
    :goto_24
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_3b

    .line 302
    :goto_27
    return v0

    :catch_28
    move-exception v0

    .line 295
    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2e

    move v0, v6

    goto :goto_27

    .line 296
    :catch_2e
    move-exception v0

    move v0, v6

    goto :goto_27

    .line 293
    :catchall_31
    move-exception v0

    .line 295
    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_39

    .line 298
    :goto_35
    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    :cond_37
    move v0, v6

    goto :goto_27

    :catch_39
    move-exception v1

    goto :goto_35

    :catch_3b
    move-exception v1

    goto :goto_27

    :cond_3d
    move v0, v6

    goto :goto_24
.end method

.method static synthetic c(Lcom/anddoes/launcher/ig;Landroid/net/Uri;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/ig;->c(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->d:Lcom/anddoes/launcher/il;

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->d:Lcom/anddoes/launcher/il;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->d:Lcom/anddoes/launcher/il;

    .line 184
    :cond_12
    return-void
.end method

.method static synthetic c(Lcom/anddoes/launcher/ig;)V
    .registers 1
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->h()V

    return-void
.end method

.method static synthetic d(Lcom/anddoes/launcher/ig;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->l:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->e:Lcom/anddoes/launcher/in;

    if-eqz v0, :cond_12

    .line 188
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->e:Lcom/anddoes/launcher/in;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->e:Lcom/anddoes/launcher/in;

    .line 191
    :cond_12
    return-void
.end method

.method static synthetic e(Lcom/anddoes/launcher/ig;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->m:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->f:Lcom/anddoes/launcher/im;

    if-eqz v0, :cond_12

    .line 195
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->f:Lcom/anddoes/launcher/im;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->f:Lcom/anddoes/launcher/im;

    .line 198
    :cond_12
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    return-void
.end method

.method static synthetic f(Lcom/anddoes/launcher/ig;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized f()V
    .registers 5

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->c:Landroid/os/Handler;

    new-instance v1, Lcom/anddoes/launcher/ii;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ii;-><init>(Lcom/anddoes/launcher/ig;)V

    .line 207
    const-wide/16 v2, 0xc8

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 208
    monitor-exit p0

    return-void

    .line 202
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/anddoes/launcher/ig;)Lcom/anddoes/launcher/Launcher;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    return-object v0
.end method

.method private declared-synchronized g()V
    .registers 5

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->c:Landroid/os/Handler;

    new-instance v1, Lcom/anddoes/launcher/ij;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ij;-><init>(Lcom/anddoes/launcher/ig;)V

    .line 241
    const-wide/16 v2, 0xc8

    .line 235
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 242
    monitor-exit p0

    return-void

    .line 235
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .registers 5

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->c:Landroid/os/Handler;

    new-instance v1, Lcom/anddoes/launcher/ik;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ik;-><init>(Lcom/anddoes/launcher/ig;)V

    .line 277
    const-wide/16 v2, 0xc8

    .line 269
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 278
    monitor-exit p0

    return-void

    .line 269
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 352
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 353
    iget-boolean v0, p0, Lcom/anddoes/launcher/ig;->g:Z

    if-eqz v0, :cond_18

    .line 354
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->f()V

    .line 356
    :cond_18
    iget-boolean v0, p0, Lcom/anddoes/launcher/ig;->h:Z

    if-eqz v0, :cond_1f

    .line 357
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->g()V

    .line 359
    :cond_1f
    iget-boolean v0, p0, Lcom/anddoes/launcher/ig;->i:Z

    if-eqz v0, :cond_26

    .line 360
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->h()V

    .line 362
    :cond_26
    return-void

    .line 347
    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/BubbleTextView;

    .line 348
    if-eqz v0, :cond_6

    .line 349
    invoke-virtual {v0}, Lcom/anddoes/launcher/BubbleTextView;->a()V

    goto :goto_6
.end method

.method public final a(Lcom/anddoes/launcher/kj;)V
    .registers 4
    .parameter

    .prologue
    .line 365
    if-eqz p1, :cond_49

    iget-object v0, p1, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    if-eqz v0, :cond_49

    .line 366
    iget-object v0, p1, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-boolean v1, p0, Lcom/anddoes/launcher/ig;->g:Z

    if-eqz v1, :cond_23

    .line 368
    iget-object v1, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->aL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 369
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->f()V

    .line 371
    :cond_23
    iget-boolean v1, p0, Lcom/anddoes/launcher/ig;->h:Z

    if-eqz v1, :cond_36

    .line 372
    iget-object v1, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->aN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 373
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->g()V

    .line 375
    :cond_36
    iget-boolean v1, p0, Lcom/anddoes/launcher/ig;->i:Z

    if-eqz v1, :cond_49

    .line 376
    iget-object v1, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->aP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 377
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->h()V

    .line 380
    :cond_49
    return-void
.end method

.method public final a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/anddoes/launcher/ig;->g:Z

    .line 81
    iget-boolean v0, p0, Lcom/anddoes/launcher/ig;->g:Z

    if-eqz v0, :cond_22

    .line 82
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->d:Lcom/anddoes/launcher/il;

    if-nez v0, :cond_21

    .line 83
    new-instance v0, Lcom/anddoes/launcher/il;

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->c:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/il;-><init>(Lcom/anddoes/launcher/ig;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->d:Lcom/anddoes/launcher/il;

    .line 84
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anddoes/launcher/ig;->d:Lcom/anddoes/launcher/il;

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    :cond_21
    :goto_21
    return-void

    .line 88
    :cond_22
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->c()V

    goto :goto_21
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->d()V

    .line 384
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->c()V

    .line 385
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->e()V

    .line 386
    return-void
.end method

.method public final b(Z)V
    .registers 6
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/anddoes/launcher/ig;->h:Z

    .line 94
    iget-boolean v0, p0, Lcom/anddoes/launcher/ig;->h:Z

    if-eqz v0, :cond_22

    .line 95
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->e:Lcom/anddoes/launcher/in;

    if-nez v0, :cond_21

    .line 96
    new-instance v0, Lcom/anddoes/launcher/in;

    iget-object v1, p0, Lcom/anddoes/launcher/ig;->c:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/in;-><init>(Lcom/anddoes/launcher/ig;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ig;->e:Lcom/anddoes/launcher/in;

    .line 97
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anddoes/launcher/ig;->e:Lcom/anddoes/launcher/in;

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    :cond_21
    :goto_21
    return-void

    .line 101
    :cond_22
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->d()V

    goto :goto_21
.end method

.method public final c(Z)V
    .registers 7
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/anddoes/launcher/ig;->i:Z

    .line 107
    iget-boolean v0, p0, Lcom/anddoes/launcher/ig;->i:Z

    if-eqz v0, :cond_1e

    .line 108
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->f:Lcom/anddoes/launcher/im;

    if-nez v0, :cond_1d

    .line 109
    iget-object v0, p0, Lcom/anddoes/launcher/ig;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    sget-object v2, Lcom/anddoes/launcher/ig;->a:[Ljava/lang/String;

    new-instance v3, Lcom/anddoes/launcher/ih;

    invoke-direct {v3, p0}, Lcom/anddoes/launcher/ih;-><init>(Lcom/anddoes/launcher/ig;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 114
    :cond_1d
    :goto_1d
    return-void

    .line 112
    :cond_1e
    invoke-direct {p0}, Lcom/anddoes/launcher/ig;->e()V

    goto :goto_1d
.end method
