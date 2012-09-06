.class public LDW;
.super LDv;
.source "TextKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# static fields
.field private static a:[LDW;

.field static final b:Ljava/lang/Object;

.field static final c:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final e:Ljava/lang/Object;


# instance fields
.field private a:I

.field private final a:LDX;

.field private a:LDZ;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    invoke-static {}, LDX;->values()[LDX;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [LDW;

    sput-object v0, LDW;->a:[LDW;

    .line 49
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDW;->b:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDW;->c:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDW;->d:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, LDW;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LDX;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, LDv;-><init>()V

    .line 75
    iput-object p1, p0, LDW;->a:LDX;

    .line 76
    iput-boolean p2, p0, LDW;->a:Z

    .line 77
    return-void
.end method

.method public static a()LDW;
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    sget-object v1, LDX;->a:LDX;

    invoke-static {v0, v1}, LDW;->a(ZLDX;)LDW;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZLDX;)LDW;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p1}, LDX;->ordinal()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :goto_9
    add-int/2addr v0, v1

    .line 90
    sget-object v1, LDW;->a:[LDW;

    aget-object v1, v1, v0

    if-nez v1, :cond_19

    .line 91
    sget-object v1, LDW;->a:[LDW;

    new-instance v2, LDW;

    invoke-direct {v2, p1, p0}, LDW;-><init>(LDX;Z)V

    aput-object v2, v1, v0

    .line 94
    :cond_19
    sget-object v1, LDW;->a:[LDW;

    aget-object v0, v1, v0

    return-object v0

    .line 88
    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private a(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;
    .registers 4
    .parameter

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    .line 198
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 199
    iget-boolean v0, p0, LDW;->a:Z

    iget-object v1, p0, LDW;->a:LDX;

    invoke-static {v0, v1}, LDP;->a(ZLDX;)LDP;

    move-result-object v0

    .line 215
    :goto_17
    return-object v0

    .line 200
    :cond_18
    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 201
    iget-boolean v0, p0, LDW;->a:Z

    iget-object v1, p0, LDW;->a:LDX;

    invoke-static {v0, v1}, LDI;->a(ZLDX;)LDI;

    move-result-object v0

    goto :goto_17

    .line 202
    :cond_24
    invoke-static {}, LCx;->a()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 204
    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    .line 211
    :cond_30
    invoke-static {}, LDP;->a()LDP;

    move-result-object v0

    goto :goto_17

    .line 215
    :cond_35
    invoke-static {}, LDY;->a()LDY;

    move-result-object v0

    goto :goto_17
.end method

.method static synthetic a(LDW;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, LDW;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(LDW;Landroid/content/ContentResolver;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, LDW;->a(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private a(Landroid/content/ContentResolver;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 307
    const-string v0, "auto_caps"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_38

    move v0, v1

    .line 308
    :goto_b
    const-string v3, "auto_replace"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3a

    move v3, v1

    .line 309
    :goto_14
    const-string v4, "auto_punctuate"

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3c

    move v4, v1

    .line 310
    :goto_1d
    const-string v5, "show_password"

    invoke-static {p1, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3e

    move v5, v1

    .line 312
    :goto_26
    if-eqz v0, :cond_40

    :goto_28
    if-eqz v3, :cond_42

    const/4 v0, 0x2

    :goto_2b
    or-int/2addr v1, v0

    if-eqz v4, :cond_44

    const/4 v0, 0x4

    :goto_2f
    or-int/2addr v0, v1

    if-eqz v5, :cond_34

    const/16 v2, 0x8

    :cond_34
    or-int/2addr v0, v2

    iput v0, p0, LDW;->a:I

    .line 316
    return-void

    :cond_38
    move v0, v2

    .line 307
    goto :goto_b

    :cond_3a
    move v3, v2

    .line 308
    goto :goto_14

    :cond_3c
    move v4, v2

    .line 309
    goto :goto_1d

    :cond_3e
    move v5, v2

    .line 310
    goto :goto_26

    :cond_40
    move v1, v2

    .line 312
    goto :goto_28

    :cond_42
    move v0, v2

    goto :goto_2b

    :cond_44
    move v0, v2

    goto :goto_2f
.end method

.method private a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LDW;->a:Ljava/lang/ref/WeakReference;

    .line 277
    iget-object v1, p0, LDW;->a:LDZ;

    if-nez v1, :cond_1e

    .line 278
    new-instance v1, LDZ;

    invoke-direct {v1, p0}, LDZ;-><init>(LDW;)V

    iput-object v1, p0, LDW;->a:LDZ;

    .line 279
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, LDW;->a:LDZ;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 282
    :cond_1e
    invoke-direct {p0, v0}, LDW;->a(Landroid/content/ContentResolver;)V

    .line 283
    iput-boolean v3, p0, LDW;->b:Z

    .line 284
    return-void
.end method

.method static synthetic a(LDW;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, LDW;->b:Z

    return p1
.end method

.method public static a(LDX;Ljava/lang/CharSequence;I)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    sget-object v0, LDX;->a:LDX;

    if-ne p0, v0, :cond_7

    .line 126
    :goto_6
    return v2

    .line 122
    :cond_7
    sget-object v0, LDX;->d:LDX;

    if-ne p0, v0, :cond_d

    move v2, v1

    .line 123
    goto :goto_6

    .line 126
    :cond_d
    sget-object v0, LDX;->c:LDX;

    if-ne p0, v0, :cond_1c

    const/16 v0, 0x2000

    :goto_13
    invoke-static {p1, p2, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_1a
    move v2, v0

    goto :goto_6

    :cond_1c
    const/16 v0, 0x4000

    goto :goto_13

    :cond_1f
    move v0, v2

    goto :goto_1a
.end method


# virtual methods
.method a(Landroid/content/Context;)I
    .registers 3
    .parameter

    .prologue
    .line 319
    monitor-enter p0

    .line 320
    :try_start_1
    iget-boolean v0, p0, LDW;->b:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, LDW;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 321
    :cond_d
    invoke-direct {p0, p1}, LDW;->a(Landroid/content/Context;)V

    .line 323
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    .line 325
    iget v0, p0, LDW;->a:I

    return v0

    .line 323
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getInputType()I
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, LDW;->a:LDX;

    iget-boolean v1, p0, LDW;->a:Z

    invoke-static {v0, v1}, LDW;->a(LDX;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p4}, LDW;->a(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 141
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p3}, LDW;->a(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 156
    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p4}, LDW;->a(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 149
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_9

    .line 190
    sget-object v0, LDW;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 192
    :cond_9
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    return-void
.end method
