.class public Lcom/google/googlenav/suggest/android/k;
.super Lcom/google/googlenav/provider/e;
.source "SourceFile"

# interfaces
.implements LaI/v;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private volatile b:LaI/z;

.field private c:Landroid/os/Bundle;

.field private d:LaI/z;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_completion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/suggest/android/k;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/googlenav/provider/e;-><init>()V

    .line 85
    new-instance v0, LaI/z;

    invoke-direct {v0}, LaI/z;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/k;->d:LaI/z;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/k;->e:Z

    .line 95
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    invoke-virtual {v0, p0}, LaI/o;->a(LaI/v;)V

    .line 96
    return-void
.end method

.method private a(LaI/z;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/k;->b:LaI/z;

    .line 147
    return-void
.end method


# virtual methods
.method public a(I)LaI/w;
    .registers 3
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->b:LaI/z;

    invoke-virtual {v0, p1}, LaI/z;->a(I)LaI/w;

    move-result-object v0

    return-object v0
.end method

.method public a(LaI/s;)V
    .registers 3
    .parameter

    .prologue
    .line 151
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    invoke-virtual {v0, p1}, LaI/o;->a(LaI/s;)V

    .line 152
    return-void
.end method

.method public declared-synchronized a(LaI/z;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 122
    monitor-enter p0

    if-nez p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    :try_start_5
    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/k;->e:Z

    .line 126
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/k;->d:LaI/z;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/k;->onChange(Z)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    .line 128
    monitor-exit p0

    return-void

    .line 122
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 137
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    sget-object v0, Lcom/google/googlenav/suggest/android/k;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .registers 2

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->b:LaI/z;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->b:LaI/z;

    invoke-virtual {v0}, LaI/z;->d()I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->c:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/k;->c:Landroid/os/Bundle;

    .line 234
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public declared-synchronized getInt(I)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/googlenav/suggest/android/k;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget v1, p0, Lcom/google/googlenav/suggest/android/k;->mPos:I

    iget-object v2, p0, Lcom/google/googlenav/suggest/android/k;->b:LaI/z;

    invoke-virtual {v2}, LaI/z;->d()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 167
    iget v1, p0, Lcom/google/googlenav/suggest/android/k;->mPos:I

    invoke-virtual {p0, v1}, Lcom/google/googlenav/suggest/android/k;->a(I)LaI/w;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_25

    move-result-object v1

    .line 168
    packed-switch p1, :pswitch_data_28

    .line 178
    :cond_1a
    :goto_1a
    monitor-exit p0

    return v0

    .line 171
    :pswitch_1c
    :try_start_1c
    invoke-virtual {v1}, LaI/w;->e()I
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_25

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1a

    .line 174
    const/4 v0, 0x1

    goto :goto_1a

    .line 166
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :pswitch_data_28
    .packed-switch 0x8
        :pswitch_1c
    .end packed-switch
.end method

.method public getLong(I)J
    .registers 4
    .parameter

    .prologue
    .line 219
    if-nez p1, :cond_6

    .line 220
    iget v0, p0, Lcom/google/googlenav/suggest/android/k;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 222
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getString(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 183
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/googlenav/suggest/android/k;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget v1, p0, Lcom/google/googlenav/suggest/android/k;->mPos:I

    iget-object v2, p0, Lcom/google/googlenav/suggest/android/k;->b:LaI/z;

    invoke-virtual {v2}, LaI/z;->d()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 184
    iget v1, p0, Lcom/google/googlenav/suggest/android/k;->mPos:I

    invoke-virtual {p0, v1}, Lcom/google/googlenav/suggest/android/k;->a(I)LaI/w;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_46

    move-result-object v1

    .line 185
    packed-switch p1, :pswitch_data_4a

    .line 214
    :cond_1a
    :goto_1a
    :pswitch_1a
    monitor-exit p0

    return-object v0

    .line 187
    :pswitch_1c
    :try_start_1c
    invoke-virtual {v1}, LaI/w;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 189
    :pswitch_21
    invoke-virtual {v1}, LaI/w;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 191
    :pswitch_26
    invoke-virtual {v1}, LaI/w;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 193
    :pswitch_2b
    iget v0, p0, Lcom/google/googlenav/suggest/android/k;->mPos:I

    invoke-virtual {v1, v0}, LaI/w;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 200
    :pswitch_32
    invoke-virtual {v1}, LaI/w;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 202
    :pswitch_37
    invoke-virtual {v1}, LaI/w;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 204
    :pswitch_3c
    invoke-virtual {v1}, LaI/w;->e()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1a

    .line 207
    const-string v0, ""
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_46

    goto :goto_1a

    .line 183
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_1a
        :pswitch_32
        :pswitch_37
        :pswitch_1a
        :pswitch_3c
    .end packed-switch
.end method

.method public declared-synchronized requery()Z
    .registers 4

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->d:LaI/z;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/k;->b:LaI/z;

    invoke-virtual {v0, v1}, LaI/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/k;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/googlenav/suggest/android/k;->e:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_31

    if-ne v0, v1, :cond_1c

    .line 111
    const/4 v0, 0x1

    .line 117
    :goto_1a
    monitor-exit p0

    return v0

    .line 113
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->d:LaI/z;

    invoke-direct {p0, v0}, Lcom/google/googlenav/suggest/android/k;->a(LaI/z;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/k;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_progress"

    iget-boolean v2, p0, Lcom/google/googlenav/suggest/android/k;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    invoke-super {p0}, Lcom/google/googlenav/provider/e;->requery()Z
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_31

    move-result v0

    goto :goto_1a

    .line 109
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method
