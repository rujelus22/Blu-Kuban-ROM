.class public final Lnh$b;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lgg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    :try_start_1
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_19

    move-result-object v0

    .line 241
    :goto_7
    if-nez v0, :cond_b

    const-string v0, "\n"

    :cond_b
    sput-object v0, Lnh$b;->a:Ljava/lang/String;

    .line 245
    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 247
    sput-object v0, Lnh$b;->b:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 248
    return-void

    :catch_19
    move-exception v1

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lez;I)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/16 v2, 0x40

    .line 257
    sget-object v0, Lnh$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lez;->c(Ljava/lang/String;)V

    .line 258
    add-int v0, p2, p2

    .line 259
    :goto_9
    if-le v0, v2, :cond_15

    .line 260
    sget-object v1, Lnh$b;->b:[C

    invoke-virtual {p1, v1, v2}, Lez;->a([CI)V

    .line 261
    sget-object v1, Lnh$b;->b:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_9

    .line 263
    :cond_15
    sget-object v1, Lnh$b;->b:[C

    invoke-virtual {p1, v1, v0}, Lez;->a([CI)V

    .line 264
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method
