.class public final Lcom/google/android/youtube/plus1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;


# instance fields
.field private final a:Lcom/google/android/plus1/w;

.field private b:Lcom/google/android/plus1/ap;

.field private c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

.field private d:Landroid/app/Activity;

.field private e:Lcom/google/android/youtube/plus1/g;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/w;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/google/android/youtube/plus1/d;->a:Lcom/google/android/plus1/w;

    .line 150
    if-nez p2, :cond_a

    .line 151
    invoke-virtual {p1, p0}, Lcom/google/android/plus1/w;->b(Lcom/google/android/plus1/ac;)V

    .line 153
    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/plus1/d;Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/plus1/d;)Lcom/google/android/plus1/w;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->a:Lcom/google/android/plus1/w;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/google/android/plus1/ap;)V
    .registers 4
    .parameter

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlusOneClient received new +1 account status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 157
    iput-object p1, p0, Lcom/google/android/youtube/plus1/d;->b:Lcom/google/android/plus1/ap;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->d:Landroid/app/Activity;

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->e:Lcom/google/android/youtube/plus1/g;

    if-eqz v0, :cond_27

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->e:Lcom/google/android/youtube/plus1/g;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->e:Lcom/google/android/youtube/plus1/g;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 164
    :cond_27
    monitor-exit p0

    return-void

    .line 156
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->b:Lcom/google/android/plus1/ap;

    if-eqz v0, :cond_c

    .line 204
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1e

    .line 205
    if-eqz p2, :cond_a

    .line 236
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 208
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v0, :cond_21

    .line 209
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    new-instance v1, Lcom/google/android/youtube/plus1/e;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/plus1/e;-><init>(Lcom/google/android/youtube/plus1/d;Lcom/google/android/youtube/plus1/g;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->resolve(Landroid/app/Activity;Lcom/google/android/plus1/ac;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    goto :goto_a

    .line 203
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :cond_21
    :try_start_21
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 233
    iput-object p1, p0, Lcom/google/android/youtube/plus1/d;->d:Landroid/app/Activity;

    .line 234
    iput-object p2, p0, Lcom/google/android/youtube/plus1/d;->e:Lcom/google/android/youtube/plus1/g;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    goto :goto_a
.end method

.method public final declared-synchronized a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v0, :cond_22

    .line 168
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->b:Lcom/google/android/plus1/ap;

    .line 170
    check-cast p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    iput-object p1, p0, Lcom/google/android/youtube/plus1/d;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->d:Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/plus1/d;->e:Lcom/google/android/youtube/plus1/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/plus1/d;->a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/g;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->d:Landroid/app/Activity;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->e:Lcom/google/android/youtube/plus1/g;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_46

    .line 184
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    .line 179
    :cond_22
    :try_start_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlusOneClient cannot receive +1 account status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->d:Landroid/app/Activity;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/d;->e:Lcom/google/android/youtube/plus1/g;
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_46

    goto :goto_20

    .line 167
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    check-cast p1, Lcom/google/android/plus1/ap;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/plus1/d;->a(Lcom/google/android/plus1/ap;)V

    return-void
.end method

.method public final declared-synchronized a()Z
    .registers 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->b:Lcom/google/android/plus1/ap;

    if-eqz v0, :cond_1a

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->b:Lcom/google/android/plus1/ap;

    iget-object v0, v0, Lcom/google/android/plus1/ap;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1c

    move-result v0

    if-eqz v0, :cond_12

    .line 189
    const/4 v0, 0x1

    .line 195
    :goto_10
    monitor-exit p0

    return v0

    .line 191
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/plus1/d;->a:Lcom/google/android/plus1/w;

    invoke-virtual {v0}, Lcom/google/android/plus1/w;->b()V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1c

    .line 195
    :cond_1a
    const/4 v0, 0x0

    goto :goto_10

    .line 187
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
