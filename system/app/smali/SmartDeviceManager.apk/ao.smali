.class public Lao;
.super Lan;
.source "a"


# static fields
.field private static c:Lar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lao;->c:Lar;

    return-void
.end method

.method public constructor <init>(Ldg;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lan;-><init>(Ldg;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 32
    sget-object v2, Ldg;->w:Ldg;

    invoke-interface {v1, v2}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a2

    add-int/lit8 v2, v4, 0x1

    .line 33
    :goto_18
    sget-object v3, Ldg;->x:Ldg;

    invoke-interface {v1, v3}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a0

    add-int/lit8 v1, v2, 0x1

    .line 36
    :goto_26
    invoke-virtual {p0}, Lao;->a()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 38
    iget-object v1, p0, Lao;->a:Ldg;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Ldg;->w:Ldg;

    if-ne v5, v1, :cond_6a

    const-string v5, "CALL_INCOMING_MAX_AGE_MILLIS"

    invoke-static {v5}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v2}, Lw;->z()J

    move-result-wide v7

    sub-long v2, v3, v5

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Laq;->a(Landroid/content/Context;JLdg;)V

    .line 40
    :cond_4d
    :goto_4d
    const-class v1, Lao;

    monitor-enter v1

    .line 41
    :try_start_50
    sget-object v2, Lao;->c:Lar;

    if-nez v2, :cond_67

    .line 43
    new-instance v2, Lar;

    invoke-direct {v2, v0}, Lar;-><init>(Landroid/content/Context;)V

    sput-object v2, Lao;->c:Lar;

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    sget-object v4, Lao;->c:Lar;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    :cond_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_82

    move v0, v9

    .line 58
    :goto_69
    return v0

    .line 38
    :cond_6a
    sget-object v5, Ldg;->x:Ldg;

    if-ne v5, v1, :cond_4d

    const-string v5, "CALL_OUTGOING_MAX_AGE_MILLIS"

    invoke-static {v5}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v2}, Lw;->A()J

    move-result-wide v7

    sub-long v2, v3, v5

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Laq;->a(Landroid/content/Context;JLdg;)V

    goto :goto_4d

    .line 47
    :catchall_82
    move-exception v0

    monitor-exit v1

    throw v0

    .line 51
    :cond_85
    const-class v2, Lao;

    monitor-enter v2

    .line 52
    :try_start_88
    sget-object v3, Lao;->c:Lar;

    if-eqz v3, :cond_9a

    if-nez v1, :cond_9a

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lao;->c:Lar;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lao;->c:Lar;

    .line 57
    :cond_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_88 .. :try_end_9b} :catchall_9d

    move v0, v4

    .line 58
    goto :goto_69

    .line 57
    :catchall_9d
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_a0
    move v1, v2

    goto :goto_26

    :cond_a2
    move v2, v4

    goto/16 :goto_18
.end method
