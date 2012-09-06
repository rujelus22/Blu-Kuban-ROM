.class public final Lcom/google/android/apps/plus/json/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/json/JsonWriter$1;
    }
.end annotation


# instance fields
.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/json/JsonScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v0, ":"

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->separator:Ljava/lang/String;

    .line 149
    if-nez p1, :cond_1f

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1f
    iput-object p1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    .line 153
    return-void
.end method

.method private beforeName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->peek()Lcom/google/android/apps/plus/json/JsonScope;

    move-result-object v0

    .line 471
    .local v0, context:Lcom/google/android/apps/plus/json/JsonScope;
    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    if-ne v0, v1, :cond_18

    .line 472
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 476
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->newline()V

    .line 477
    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->DANGLING_NAME:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonWriter;->replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 478
    return-void

    .line 473
    :cond_18
    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    if-eq v0, v1, :cond_f

    .line 474
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue(Z)V
    .registers 5
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lcom/google/android/apps/plus/json/JsonWriter$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->peek()Lcom/google/android/apps/plus/json/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :pswitch_2a
    iget-boolean v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->lenient:Z

    if-nez v0, :cond_38

    if-nez p1, :cond_38

    .line 492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_38
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonWriter;->replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 520
    :goto_3d
    return-void

    .line 499
    :pswitch_3e
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonWriter;->replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V

    .line 500
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->newline()V

    goto :goto_3d

    .line 504
    :pswitch_47
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 505
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->newline()V

    goto :goto_3d

    .line 509
    :pswitch_52
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 510
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonWriter;->replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V

    goto :goto_3d

    .line 514
    :pswitch_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_3e
        :pswitch_47
        :pswitch_52
        :pswitch_5f
    .end packed-switch
.end method

.method private close(Lcom/google/android/apps/plus/json/JsonScope;Lcom/google/android/apps/plus/json/JsonScope;Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 8
    .parameter "empty"
    .parameter "nonempty"
    .parameter "closeBracket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->peek()Lcom/google/android/apps/plus/json/JsonScope;

    move-result-object v0

    .line 252
    .local v0, context:Lcom/google/android/apps/plus/json/JsonScope;
    if-eq v0, p2, :cond_23

    if-eq v0, p1, :cond_23

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 257
    if-ne v0, p2, :cond_35

    .line 258
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->newline()V

    .line 260
    :cond_35
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 261
    return-object p0
.end method

.method private newline()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->indent:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 463
    :cond_4
    return-void

    .line 459
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x1

    .local v0, i:I
    :goto_d
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 461
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lcom/google/android/apps/plus/json/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private open(Lcom/google/android/apps/plus/json/JsonScope;Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 4
    .parameter "empty"
    .parameter "openBracket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonWriter;->beforeValue(Z)V

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 242
    return-object p0
.end method

.method private peek()Lcom/google/android/apps/plus/json/JsonScope;
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/json/JsonScope;

    return-object v0
.end method

.method private replaceTop(Lcom/google/android/apps/plus/json/JsonScope;)V
    .registers 4
    .parameter "topOfStack"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .registers 11
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_d
    if-ge v2, v3, :cond_85

    .line 404
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 412
    .local v0, c:C
    sparse-switch v0, :sswitch_data_8e

    .line 440
    const/16 v4, 0x1f

    if-gt v0, v4, :cond_6f

    .line 441
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, v2

    .line 403
    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_30
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_d

    .line 415
    :sswitch_34
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 416
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(I)V

    move v1, v2

    .line 417
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_30

    .line 420
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_42
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, v2

    .line 421
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_30

    .line 424
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_4b
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, v2

    .line 425
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_30

    .line 428
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_54
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, v2

    .line 429
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_30

    .line 432
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_5d
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, v2

    .line 433
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_30

    .line 436
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_66
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\f"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v1, v2

    .line 437
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_30

    .line 442
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_6f
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 443
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    const/4 v5, 0x2

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    goto :goto_30

    .line 445
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_7e
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(I)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_30

    .line 451
    .end local v0           #c:C
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_85
    iget-object v4, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 452
    return-void

    .line 412
    nop

    :sswitch_data_8e
    .sparse-switch
        0x8 -> :sswitch_4b
        0x9 -> :sswitch_42
        0xa -> :sswitch_54
        0xc -> :sswitch_66
        0xd -> :sswitch_5d
        0x22 -> :sswitch_34
        0x5c -> :sswitch_34
    .end sparse-switch
.end method


# virtual methods
.method public beginArray()Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/JsonWriter;->open(Lcom/google/android/apps/plus/json/JsonScope;Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/JsonWriter;->open(Lcom/google/android/apps/plus/json/JsonScope;Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 396
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->peek()Lcom/google/android/apps/plus/json/JsonScope;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    if-eq v0, v1, :cond_15

    .line 397
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_15
    return-void
.end method

.method public endArray()Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/json/JsonWriter;->close(Lcom/google/android/apps/plus/json/JsonScope;Lcom/google/android/apps/plus/json/JsonScope;Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/json/JsonWriter;->close(Lcom/google/android/apps/plus/json/JsonScope;Lcom/google/android/apps/plus/json/JsonScope;Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 385
    return-void
.end method

.method public name(Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    if-nez p1, :cond_a

    .line 286
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->beforeName()V

    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/json/JsonWriter;->string(Ljava/lang/String;)V

    .line 290
    return-object p0
.end method

.method public nullValue()Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonWriter;->beforeValue(Z)V

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 316
    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)V
    .registers 3
    .parameter "indent"

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->indent:Ljava/lang/String;

    .line 166
    const-string v0, ":"

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->separator:Ljava/lang/String;

    .line 171
    :goto_d
    return-void

    .line 168
    :cond_e
    iput-object p1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->indent:Ljava/lang/String;

    .line 169
    const-string v0, ": "

    iput-object v0, p0, Lcom/google/android/apps/plus/json/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_d
.end method

.method public value(Ljava/lang/Number;)Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    if-nez p1, :cond_7

    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->nullValue()Lcom/google/android/apps/plus/json/JsonWriter;

    move-result-object p0

    .line 376
    .end local p0
    :goto_6
    return-object p0

    .line 369
    .restart local p0
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, string:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->lenient:Z

    if-nez v1, :cond_40

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 372
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_40
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/json/JsonWriter;->beforeValue(Z)V

    .line 375
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6
.end method

.method public value(Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_7

    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/JsonWriter;->nullValue()Lcom/google/android/apps/plus/json/JsonWriter;

    move-result-object p0

    .line 305
    .end local p0
    :goto_6
    return-object p0

    .line 303
    .restart local p0
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonWriter;->beforeValue(Z)V

    .line 304
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/json/JsonWriter;->string(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public value(Z)Lcom/google/android/apps/plus/json/JsonWriter;
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/json/JsonWriter;->beforeValue(Z)V

    .line 326
    iget-object v1, p0, Lcom/google/android/apps/plus/json/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_e

    const-string v0, "true"

    :goto_a
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    return-object p0

    .line 326
    :cond_e
    const-string v0, "false"

    goto :goto_a
.end method
