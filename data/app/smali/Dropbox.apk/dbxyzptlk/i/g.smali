.class public Ldbxyzptlk/i/g;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Ldbxyzptlk/i/g;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/i/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/i/g;->b:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/i/g;->c:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Ldbxyzptlk/i/i;
    .registers 4
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/dropbox/android/widget/S;->f:Lcom/dropbox/android/widget/S;

    if-ne v0, v1, :cond_21

    .line 36
    :cond_c
    new-instance v0, Ldbxyzptlk/i/i;

    new-instance v1, Lcom/dropbox/android/util/Z;

    const-string v2, "path"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    .line 40
    :goto_20
    return-object v0

    .line 37
    :cond_21
    sget-object v1, Lcom/dropbox/android/widget/S;->d:Lcom/dropbox/android/widget/S;

    if-ne v0, v1, :cond_37

    .line 38
    new-instance v0, Ldbxyzptlk/i/i;

    sget-object v1, Lcom/dropbox/android/provider/d;->b:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/i/i;-><init>(J)V

    goto :goto_20

    .line 40
    :cond_37
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private declared-synchronized b(Ldbxyzptlk/i/i;)V
    .registers 6
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldbxyzptlk/i/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 163
    if-eqz v0, :cond_3d

    .line 164
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/i/h;

    .line 165
    invoke-static {v0}, Ldbxyzptlk/i/h;->a(Ldbxyzptlk/i/h;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 166
    invoke-static {v0}, Ldbxyzptlk/i/h;->a(Ldbxyzptlk/i/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    .line 167
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->dispatchChange(Z)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3a

    goto :goto_29

    .line 162
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 172
    :cond_3d
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;
    .registers 4
    .parameter

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldbxyzptlk/i/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 111
    if-eqz v0, :cond_14

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/i/f;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 118
    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 110
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldbxyzptlk/i/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 101
    iget-object v0, p0, Ldbxyzptlk/i/g;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_14
    iget-object v0, p0, Ldbxyzptlk/i/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0, p1}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 106
    monitor-exit p0

    return-void

    .line 100
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ldbxyzptlk/i/i;Ldbxyzptlk/i/h;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldbxyzptlk/i/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 144
    if-nez v0, :cond_15

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    iget-object v1, p0, Ldbxyzptlk/i/g;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_15
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 149
    monitor-exit p0

    return-void

    .line 143
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldbxyzptlk/i/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 130
    if-eqz v0, :cond_24

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    .line 131
    :goto_12
    if-eqz v1, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 132
    iget-object v0, p0, Ldbxyzptlk/i/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1f
    invoke-direct {p0, p1}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_30

    .line 138
    monitor-exit p0

    return-void

    .line 130
    :cond_24
    const/4 v1, 0x0

    goto :goto_12

    .line 133
    :cond_26
    if-nez v1, :cond_1f

    .line 134
    :try_start_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to unset status that wasn\'t set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 129
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldbxyzptlk/i/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 153
    if-eqz v0, :cond_19

    .line 154
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 156
    iget-object v0, p0, Ldbxyzptlk/i/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 159
    :cond_19
    monitor-exit p0

    return-void

    .line 152
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
