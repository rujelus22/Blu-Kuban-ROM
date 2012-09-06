.class public final Lorg/codehaus/jackson/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/a/c;


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    :try_start_1
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_19

    move-result-object v0

    .line 255
    :goto_7
    if-nez v0, :cond_b

    const-string v0, "\n"

    :cond_b
    sput-object v0, Lorg/codehaus/jackson/util/e;->a:Ljava/lang/String;

    .line 259
    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 261
    sput-object v0, Lorg/codehaus/jackson/util/e;->b:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 262
    return-void

    :catch_19
    move-exception v1

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x40

    const/4 v2, 0x0

    .line 273
    sget-object v0, Lorg/codehaus/jackson/util/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->c(Ljava/lang/String;)V

    .line 274
    add-int v0, p2, p2

    .line 275
    :goto_a
    if-le v0, v3, :cond_16

    .line 276
    sget-object v1, Lorg/codehaus/jackson/util/e;->b:[C

    invoke-virtual {p1, v1, v2, v3}, Lorg/codehaus/jackson/JsonGenerator;->a([CII)V

    .line 277
    sget-object v1, Lorg/codehaus/jackson/util/e;->b:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_a

    .line 279
    :cond_16
    sget-object v1, Lorg/codehaus/jackson/util/e;->b:[C

    invoke-virtual {p1, v1, v2, v0}, Lorg/codehaus/jackson/JsonGenerator;->a([CII)V

    .line 280
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method
