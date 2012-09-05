.class Lcom/swype/android/widget/PaintBuffer$Frame;
.super Ljava/util/ArrayList;
.source "PaintBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/PaintBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Frame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/swype/android/widget/PaintCommand;",
        ">;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x21524111L


# instance fields
.field private final dirty:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 75
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer$Frame;->dirty:Landroid/graphics/Rect;

    .line 76
    return-void
.end method


# virtual methods
.method protected addDirtyRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "rect"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer$Frame;->dirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 92
    return-void
.end method

.method protected freeCommands(Lcom/swype/android/widget/PaintCommand$Pool;)V
    .registers 5
    .parameter "pool"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/swype/android/widget/PaintBuffer$Frame;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swype/android/widget/PaintCommand;

    .line 84
    .local v1, p:Lcom/swype/android/widget/PaintCommand;
    invoke-virtual {p1, v1}, Lcom/swype/android/widget/PaintCommand$Pool;->checkin(Lcom/swype/android/widget/PaintCommand;)V

    goto :goto_4

    .line 87
    .end local v1           #p:Lcom/swype/android/widget/PaintCommand;
    :cond_14
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 88
    return-void
.end method

.method public getDirtyRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer$Frame;->dirty:Landroid/graphics/Rect;

    return-object v0
.end method
