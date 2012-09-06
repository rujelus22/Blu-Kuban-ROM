.class public final enum Lcom/darekxan/extweaks/app/n;
.super Ljava/lang/Enum;
.source "ShellProvider.java"

# interfaces
.implements Lcom/darekxan/extweaks/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/darekxan/extweaks/app/n;",
        ">;",
        "Lcom/darekxan/extweaks/g;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/darekxan/extweaks/app/n;

.field private static final b:Ljava/lang/String;

.field private static synthetic g:[I

.field private static final synthetic h:[Lcom/darekxan/extweaks/app/n;


# instance fields
.field private c:Lcom/darekxan/extweaks/h;

.field private d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient f:Lcom/darekxan/extweaks/app/o;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 17
    new-instance v0, Lcom/darekxan/extweaks/app/n;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/darekxan/extweaks/app/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/darekxan/extweaks/app/n;->a:Lcom/darekxan/extweaks/app/n;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/darekxan/extweaks/app/n;

    const/4 v1, 0x0

    sget-object v2, Lcom/darekxan/extweaks/app/n;->a:Lcom/darekxan/extweaks/app/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/darekxan/extweaks/app/n;->h:[Lcom/darekxan/extweaks/app/n;

    .line 19
    const-class v0, Lcom/darekxan/extweaks/app/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/darekxan/extweaks/app/n;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 165
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/darekxan/extweaks/app/n;->d:Ljava/util/concurrent/BlockingQueue;

    .line 166
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/darekxan/extweaks/app/n;->e:Ljava/util/concurrent/BlockingQueue;

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/darekxan/extweaks/app/n;)Lcom/darekxan/extweaks/h;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    return-object v0
.end method

.method static synthetic b(Lcom/darekxan/extweaks/app/n;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->e:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private static synthetic c()[I
    .registers 3

    .prologue
    .line 16
    sget-object v0, Lcom/darekxan/extweaks/app/n;->g:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/darekxan/extweaks/h;->values()[Lcom/darekxan/extweaks/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    invoke-virtual {v1}, Lcom/darekxan/extweaks/h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    invoke-virtual {v1}, Lcom/darekxan/extweaks/h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/darekxan/extweaks/app/n;->g:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/darekxan/extweaks/app/n;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/darekxan/extweaks/app/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/app/n;

    return-object v0
.end method

.method public static values()[Lcom/darekxan/extweaks/app/n;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/darekxan/extweaks/app/n;->h:[Lcom/darekxan/extweaks/app/n;

    array-length v1, v0

    new-array v2, v1, [Lcom/darekxan/extweaks/app/n;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Lcom/darekxan/extweaks/h;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    if-nez v0, :cond_9

    sget-object v0, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/app/n;->a(Lcom/darekxan/extweaks/h;)Z

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->f:Lcom/darekxan/extweaks/app/o;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->f:Lcom/darekxan/extweaks/app/o;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/o;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 186
    :cond_15
    new-instance v0, Lcom/darekxan/extweaks/app/o;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/n;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1}, Lcom/darekxan/extweaks/app/o;-><init>(Lcom/darekxan/extweaks/app/n;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/darekxan/extweaks/app/n;->f:Lcom/darekxan/extweaks/app/o;

    .line 187
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->f:Lcom/darekxan/extweaks/app/o;

    const-string v1, "ShellThread"

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/o;->setName(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->f:Lcom/darekxan/extweaks/app/o;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/o;->start()V

    .line 190
    :cond_2a
    const-string v1, ""

    .line 192
    :try_start_2c
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_31} :catch_62

    .line 201
    :try_start_31
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->e:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3d} :catch_80

    .line 207
    :goto_3d
    const-string v1, "ShellProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get output: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz v0, :cond_61

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_61
    :goto_61
    return-object v0

    .line 194
    :catch_62
    move-exception v0

    .line 195
    const-string v1, "ShellProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interrupted while command_queue.put(command): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 197
    const/4 v0, 0x0

    goto :goto_61

    .line 202
    :catch_80
    move-exception v0

    .line 203
    const-string v2, "ShellProvider"

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interrupted while output_queue.take(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_3d
.end method

.method public final a(Lcom/darekxan/extweaks/h;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    invoke-static {}, Lcom/darekxan/extweaks/app/n;->c()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/darekxan/extweaks/h;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_90

    .line 244
    :goto_f
    return v0

    .line 225
    :pswitch_10
    iget-object v2, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    sget-object v3, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    if-eq v2, v3, :cond_1d

    .line 226
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/n;->b()V

    .line 227
    :cond_1d
    sget-object v2, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    iput-object v2, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    .line 228
    const-string v2, "nosu"

    const-string v3, "ls /"

    invoke-virtual {p0, v3}, Lcom/darekxan/extweaks/app/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 229
    :goto_2f
    sget-object v1, Lcom/darekxan/extweaks/app/n;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current shell set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_46
    move v0, v1

    .line 228
    goto :goto_2f

    .line 232
    :pswitch_48
    iget-object v2, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    sget-object v3, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    if-eq v2, v3, :cond_55

    .line 233
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/n;->b()V

    .line 234
    :cond_55
    sget-object v2, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    iput-object v2, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    .line 235
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lcom/darekxan/extweaks/app/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6a

    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move v0, v1

    .line 236
    :cond_6a
    if-eqz v0, :cond_83

    .line 237
    sget-object v1, Lcom/darekxan/extweaks/app/n;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current shell set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 239
    :cond_83
    sget-object v1, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    iput-object v1, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    .line 240
    sget-object v1, Lcom/darekxan/extweaks/app/n;->b:Ljava/lang/String;

    const-string v2, "Request SU shell failed, SH in use..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 223
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_48
        :pswitch_10
    .end packed-switch
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/darekxan/extweaks/app/n;->d:Ljava/util/concurrent/BlockingQueue;

    const-string v1, "TERM"

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/n;->c:Lcom/darekxan/extweaks/h;

    .line 175
    sget-object v0, Lcom/darekxan/extweaks/app/n;->b:Ljava/lang/String;

    const-string v1, "Shell closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12

    .line 180
    :goto_11
    return-void

    .line 176
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11
.end method
