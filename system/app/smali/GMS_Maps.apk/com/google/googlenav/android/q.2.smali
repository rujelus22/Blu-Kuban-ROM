.class public Lcom/google/googlenav/android/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile g:Lcom/google/googlenav/android/Q;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;

.field private c:I

.field private d:I

.field private e:Landroid/content/Intent;

.field private final f:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/Q;->b:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/Q;->f:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/google/googlenav/android/Q;->a:Landroid/content/Context;

    .line 99
    return-void
.end method

.method public static a()Lcom/google/googlenav/android/Q;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/googlenav/android/Q;->g:Lcom/google/googlenav/android/Q;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/google/googlenav/android/Q;->g:Lcom/google/googlenav/android/Q;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Lcom/google/googlenav/android/Q;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/Q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/googlenav/android/Q;->g:Lcom/google/googlenav/android/Q;

    .line 83
    :cond_b
    return-void
.end method

.method private c()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 146
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/R;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/googlenav/android/R;->a(IILandroid/content/Intent;)V

    .line 154
    :goto_17
    return-void

    .line 148
    :cond_18
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_1b
    iput p1, p0, Lcom/google/googlenav/android/Q;->c:I

    .line 150
    iput p2, p0, Lcom/google/googlenav/android/Q;->d:I

    .line 151
    iput-object p3, p0, Lcom/google/googlenav/android/Q;->e:Landroid/content/Intent;

    .line 152
    monitor-exit v1

    goto :goto_17

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v0
.end method

.method public a(ILcom/google/googlenav/android/R;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/googlenav/android/Q;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-interface {p2}, Lcom/google/googlenav/android/R;->a()I

    move-result v0

    .line 110
    invoke-direct {p0}, Lcom/google/googlenav/android/Q;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 111
    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/android/Q;->a(ILcom/google/googlenav/android/R;)V

    .line 112
    return-void
.end method

.method public a(Lcom/google/googlenav/android/R;)V
    .registers 6
    .parameter

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_3
    iget v0, p0, Lcom/google/googlenav/android/Q;->c:I

    invoke-interface {p1}, Lcom/google/googlenav/android/R;->a()I

    move-result v2

    if-ne v0, v2, :cond_1d

    .line 163
    iget v0, p0, Lcom/google/googlenav/android/Q;->c:I

    iget v2, p0, Lcom/google/googlenav/android/Q;->d:I

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->e:Landroid/content/Intent;

    invoke-interface {p1, v0, v2, v3}, Lcom/google/googlenav/android/R;->a(IILandroid/content/Intent;)V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/android/Q;->c:I

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/android/Q;->d:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/Q;->e:Landroid/content/Intent;

    .line 168
    :cond_1d
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public a(Ljava/lang/Class;)V
    .registers 5
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/googlenav/android/Q;->c()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/google/googlenav/android/Q;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_3
    iget v0, p0, Lcom/google/googlenav/android/Q;->c:I

    monitor-exit v1

    return v0

    .line 174
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
