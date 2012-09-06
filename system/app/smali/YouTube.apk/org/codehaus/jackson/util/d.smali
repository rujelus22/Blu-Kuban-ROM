.class public final Lorg/codehaus/jackson/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 235
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 236
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method
